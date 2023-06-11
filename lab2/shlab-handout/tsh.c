/* 
 * tsh - A tiny shell program with job control
 * 
 * <Put your name and login ID here>
 * 
 * name: chuxuan xiao
 * login ID: 200111324
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>
#include "csapp.h"

/* Misc manifest constants */
#define MAXLINE    1024   /* max line size */
#define MAXARGS     128   /* max args on a command line */
#define MAXJOBS      16   /* max jobs at any point in time */
#define MAXJID    1<<16   /* max job ID */

/* Job states */
#define UNDEF 0 /* undefined */
#define FG 1    /* running in foreground */
#define BG 2    /* running in background */
#define ST 3    /* stopped */


#define COLOR_GRAY "\033[37m"
#define COLOR_GREEN "\033[32m"
#define COLOR_YELLOW "\033[33m"
#define COLOR_DARKGRAY "\033[30m"
#define COLOR_BLACK "\033[30m"
#define COLOR_NOCOLOR "\033[0m"
#define COLOR_DBLUE "\033[34m"
#define COLOR_RED "\033[31m"

#define COLOR_NORMAL1 "\033[0m"

#define LOG_DBG(format,...) ({ \
    if (verbose == 1) \
        printf(COLOR_DBLUE"[DEBUG]: "format COLOR_NOCOLOR, ##__VA_ARGS__); \
})
#define LOG_INFO(format,...)    printf(COLOR_GREEN"[INFO]: "format COLOR_NOCOLOR, ##__VA_ARGS__)
#define LOG_WARN(format,...)    printf(COLOR_YELLOW"[WARN]: "format COLOR_NOCOLOR, ##__VA_ARGS__)
#define LOG_ERROR(format,...)   printf(COLOR_RED"[ERROR]: "format COLOR_NOCOLOR, ##__VA_ARGS__)

/**
 * @brief  判断字符串是否为数字 
 * 
 * @param str 
 * @return 1: 是数字 0: 不是数字
 */
static int isdigit_str(char *str)
{
    return strspn(str, "0123456789") == strlen(str);
}

/* 
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Global variables */
extern char **environ;      /* defined in libc */
char prompt[] = "tsh> ";    /* command line prompt (DO NOT CHANGE) */
int verbose = 0;            /* if true, print additional output */
int nextjid = 1;            /* next job ID to allocate */
char sbuf[MAXLINE];         /* for composing sprintf messages */

struct job_t {              /* The job struct */
    pid_t pid;              /* job PID */
    int jid;                /* job ID [1, 2, ...] */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
struct job_t jobs[MAXJOBS]; /* The job list */
/* End global variables */


/* Function prototypes */

/* Here are the functions that you will implement */
void eval(char *cmdline);
int builtin_cmd(char **argv);
void do_bgfg(char **argv, int if_bg);
void waitfg(pid_t pid);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

void output_msg(int type, char *msg);

/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, char **argv); 
void sigquit_handler(int sig);

void clearjob(struct job_t *job);
void initjobs(struct job_t *jobs);
int maxjid(struct job_t *jobs); 
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *jobs, pid_t pid); 
pid_t fgpid(struct job_t *jobs);
struct job_t *getjobpid(struct job_t *jobs, pid_t pid);
struct job_t *getjobjid(struct job_t *jobs, int jid); 
int pid2jid(pid_t pid); 
void listjobs(struct job_t *jobs);

/* add */
struct job_t *getjobpid_jid(struct job_t *jobs, char *str);

void usage(void);
void unix_error(char *msg);
void app_error(char *msg);
typedef void handler_t(int);
handler_t *Signal(int signum, handler_t *handler);

/*
 * main - The shell's main routine 
 */
int main(int argc, char **argv) 
{
    char c;
    char cmdline[MAXLINE];
    int emit_prompt = 1; /* emit prompt (default) */

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    dup2(1, 2);

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF) {
        switch (c) {
        case 'h':             /* print help message */
            usage();
	    break;
        case 'v':             /* emit additional diagnostic info */
            verbose = 1;
	    break;
        case 'p':             /* don't print a prompt */
            emit_prompt = 0;  /* handy for automatic testing */
	    break;
	default:
            usage();
	}
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT,  sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler);  /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler);  /* Terminated or stopped child */

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler); 

    /* Initialize the job list */
    initjobs(jobs);

    /* Execute the shell's read/eval loop */
    while (1) {

	/* Read command line */
	if (emit_prompt) {
	    printf("%s", prompt);
	    fflush(stdout);
	}
	if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
	    app_error("fgets error");
	if (feof(stdin)) { /* End of file (ctrl-d) */
	    fflush(stdout);
	    exit(0);
	}

	/* Evaluate the command line */
	eval(cmdline);
	fflush(stdout);
	fflush(stdout);
    } 

    exit(0); /* control never reaches here */
}
  
/* 
 * eval - Evaluate the command line that the user has just typed in
 * 
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.  
*/
void eval(char *cmdline) 
{
    char *argv[MAXARGS];
    char buf[MAXLINE];
    int bg;
    int pid;

    // 解析命令行
    strcpy(buf, cmdline);
    bg = parseline(cmdline, argv);
    // 判断是否为空命令
    if (argv[0] == NULL) {
        return;
    }
    
    // 判断是否为内置命令，如果是则直接在buildin_cmd中执行
    // 否则，fork一个子进程执行
    if (builtin_cmd(argv)) {
        return;
    } else {
        // 阻塞信号保证同步
        sigset_t mask_all, prev_all, mask_one, prev_one;
        
        Sigfillset(&mask_all);
        Sigemptyset(&mask_one);
        Sigaddset(&mask_one, SIGCHLD);  // 将SIGCHLD加入mask_one中

        // 调用fork之前阻塞SIGCHLD信号
        Sigprocmask(SIG_BLOCK, &mask_one, &prev_one);

        if ((pid = Fork()) == 0) {
            /* 子进程 */
            // 将子进程放在一个新的进程组中，该进程组ID与子进程的PID相同
            // 这确保在前台进程组中只有一个shell进程
            if (setpgid(0, 0) < 0)
                unix_error("setpgid error");
            
            // 在子进程调用execve之前解除SIGCHLD阻塞
            Sigprocmask(SIG_SETMASK, &prev_one, NULL);

            // 执行命令, 不返回
            if (execve(argv[0], argv, environ) < 0) {
                printf("%s: Command not found\n", argv[0]);
                exit(0);
            }
        }

        // 在父进程中添加job
        // 在对jobs操作时阻塞所有信号
        Sigprocmask(SIG_BLOCK, &mask_all, NULL);

        if (addjob(jobs, pid, bg ? BG : FG, cmdline) == 0) {
            LOG_ERROR("eval: addjob error\n");
        }

        // todo 课本里只解除了SIGCHLD的阻塞，但是我觉得应该解除所有信号的阻塞
        // Sigprocmask(SIG_SETMASK, &prev_one, NULL);
        Sigprocmask(SIG_SETMASK, &prev_all, NULL);
    }

    /* 父进程等待前台子进程结束 */
    if (bg) {
        printf("[%d] (%d) %s", pid2jid(pid), pid, cmdline);
    } else {
        LOG_DBG("waitfg...\n");
        waitfg(pid);
    }
    
    return;
}

/* 
 * parseline - Parse the command line and build the argv array.
 * 
 * Characters enclosed in single quotes are treated as a single
 * argument.  Return true if the user has requested a BG job, false if
 * the user has requested a FG job.  
 */
int parseline(const char *cmdline, char **argv) 
{
    static char array[MAXLINE]; /* holds local copy of command line */
    char *buf = array;          /* ptr that traverses command line */
    char *delim;                /* points to first space delimiter */
    int argc;                   /* number of args */
    int bg;                     /* background job? */

    strcpy(buf, cmdline);
    buf[strlen(buf)-1] = ' ';  /* replace trailing '\n' with space */
    while (*buf && (*buf == ' ')) /* ignore leading spaces */
	buf++;

    /* Build the argv list */
    argc = 0;
    if (*buf == '\'') {
	buf++;
	delim = strchr(buf, '\'');
    }
    else {
	delim = strchr(buf, ' ');
    }

    while (delim) {
	argv[argc++] = buf;
	*delim = '\0';
	buf = delim + 1;
	while (*buf && (*buf == ' ')) /* ignore spaces */
	       buf++;

	if (*buf == '\'') {
	    buf++;
	    delim = strchr(buf, '\'');
	}
	else {
	    delim = strchr(buf, ' ');
	}
    }
    argv[argc] = NULL;
    
    if (argc == 0)  /* ignore blank line */
	return 1;

    /* should the job run in the background? */
    if ((bg = (*argv[argc-1] == '&')) != 0) {
	argv[--argc] = NULL;
    }
    return bg;
}

/* 
 * builtin_cmd - If the user has typed a built-in command then execute
 *    it immediately.  
 */
int builtin_cmd(char **argv) 
{
    // todo 是否需要阻塞SIGCHLD信号
    // sigset_t mask, prev;
    // Sigaddset(&mask, SIGCHLD);
    // Sigprocmask(SIG_BLOCK, &mask, &prev);

    /* 判断为何种内置命令 */
    if (!strcmp(argv[0], "quit")) {
        exit(0);
    } else if (!strcmp(argv[0], "jobs")) {
        /* 列出正在运行和已经停止运行的后台作业 */
        listjobs(jobs);
    } else if (!strcmp(argv[0], "bg")) {
        /* 将已经停止的后台作业修改为正在运行的后台作业 */
        do_bgfg(argv, 1);
    } else if (!strcmp(argv[0], "fg")) {
        /* 将已经停止的后台作业修改为正在运行的后台作业 */
        do_bgfg(argv, 0);
    } else if (!strcmp(argv[0], "&")) {
        /* 忽略单独的&符号 */
        /* Ignore singleton & */
    } else {
        // Sigprocmask(SIG_SETMASK, &prev, NULL);
        return 0;     /* not a builtin command */
    }

    // Sigprocmask(SIG_SETMASK, &prev, NULL);

    return 1;
}

/*
 * 内置命令quit处理函数
 */
void builtin_cmd_quit() {
    int status;
    sigset_t mask_all, prev_all;
    pid_t pid;

    Sigfillset(&mask_all);
    Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);

    /* 在退出前处理僵尸子进程 */
    while ((pid = waitpid(-1, &status, WNOHANG | WUNTRACED)) > 0) {
        if (WIFSTOPPED(status))
            kill(-pid, SIGINT); // 停止的子进程发送SIGINT信号
    }

    Sigprocmask(SIG_SETMASK, &prev_all, NULL);
    exit(0);
}

/* 
 * do_bgfg - Execute the builtin bg and fg commands
 */
void do_bgfg(char **argv, int if_bg) 
{
    struct job_t *job;
    // 检查参数是否合法
    if (argv[1] == NULL) {
        LOG_ERROR("bg(fg) command requires PID or %%jobid argument\n");
        return;
    }
    // 检查参数是否为2
    if (argv[2] != NULL) {
        LOG_ERROR("bg(fg) command have too many argument\n");
        return;
    }

    // 获取对应job
    if ((job = getjobpid_jid(jobs, argv[1])) == NULL) {
        return;
    }

    if (job->state == UNDEF) {
        LOG_ERROR("job %d is undefined\n", job->pid);
        return;
    }

    if (if_bg && job->state == ST) {
        /* 将已经停止的后台作业修改为正在运行的后台作业 */
        // 检查是否为停止的作业，如果是则重新启动作业
        LOG_DBG("job %d is stopped, restart it\n", job->pid);
        job->state = BG;

        // 向该子进程发送SIGCONT信号, 恢复由SIGSTOP或SIGTSTP信号停止的进程或者线程
        if (kill(-(job->pid), SIGCONT) < 0)
            LOG_ERROR("kill error\n");
        
        Sio_puts("[");
        Sio_putl(job->jid);
        Sio_puts("] (");
        Sio_putl(job->pid);
        Sio_puts(") ");
        Sio_puts(job->cmdline);
    } 
    
    if (!if_bg && (job->state == ST || job->state == BG)) {
        /* 将后台作业修改为前台作业 */
        // 检查是否为停止的作业，如果是则重新启动作业
        LOG_DBG("job %d is stopped, restart it\n", job->pid);
        job->state = FG;
        
        // 向该子进程发送SIGCONT信号, 恢复由SIGSTOP或SIGTSTP信号停止的进程或者线程
        if (kill(-(job->pid), SIGCONT) < 0) {
            LOG_ERROR("kill error\n");
            return;
        }
            
        // 等待前台作业结束
        waitfg(job->pid);
    }

    return;
}

/* 
 * waitfg - Block until process pid is no longer the foreground process
 */
void waitfg(pid_t pid)
{
    sigset_t mask, prev;
    Sigemptyset(&mask);
    Sigaddset(&mask, SIGCHLD);
    Sigprocmask(SIG_BLOCK, &mask, &prev);

    /* 
    * 采用sigsupend原子性解除SIGCHLD信号阻塞并等待一个SIGCHLD发生
    * 信号发生后重新阻塞SIGCHLD信号
    * 采用这种方式结合循环等待前台进程结束，避免了busy waiting
    */
    while (pid == fgpid(jobs)) {
        LOG_DBG("waitfg: %d\n", pid);
        Sigsuspend(&prev);
    }

    // 解除阻塞，返回
    Sigprocmask(SIG_SETMASK, &prev, NULL);

    return;
}

/*****************
 * Signal handlers
 *****************/

/* 
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP or SIGTSTP signal. The handler reaps all
 *     available zombie children, but doesn't wait for any other
 *     currently running children to terminate.  
 */
void sigchld_handler(int sig) 
{
    int olderrno = errno, status;
    sigset_t mask_all, prev_all;
    pid_t pid;
    struct job_t *job;

    Sigfillset(&mask_all);

    // Sio_puts("sigchld_handler: entering\n");

    /* 从子进程中获取pid */
    // WNOHANG | WUNTRACED: 立即返回，如果等待的子进程没有终止或者停止则返回0
    // 如果有子进程终止或者停止则返回子进程的pid
    // 尽可能多的回收子进程
    while ((pid = waitpid(-1, &status, WNOHANG | WUNTRACED)) > 0) {
        // 阻塞信号
        Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);

        // 获取对应job
        if ((job = getjobpid(jobs, pid)) == NULL) {
            Sio_error("getjobpid error\n");
            return;
        }

        // 判断子进程是否正常终止
        if (WIFEXITED(status)) {   /* child terminated normally */
            LOG_DBG("child %d terminated normally with exit status=%d\n", pid, WEXITSTATUS(status));
            deletejob(jobs, pid);
        } else if (WIFSIGNALED(status)) {   /* child terminated by signal */
            Sio_puts("Job ["  );
            Sio_putl(job->jid);
            Sio_puts("] (");
            Sio_putl(job->pid);
            Sio_puts(") terminated by signal ");
            Sio_putl(WTERMSIG(status));
            Sio_puts("\n");

            deletejob(jobs, pid);
        } else if (WIFSTOPPED(status)) {    /* child stopped by signal */
            // 主要是用于处理ctrl-z(SIGTSTP信号)
            Sio_puts("Job [");
            Sio_putl(job->jid);
            Sio_puts("] (");
            Sio_putl(job->pid);
            Sio_puts(") stopped by signal ");
            Sio_putl(WSTOPSIG(status));
            Sio_puts("\n");

            // 修改job状态
            job->state = ST;
        } else {    /* other */
            LOG_ERROR("child %d terminated abnormally\n", pid);
            deletejob(jobs, pid);
        }

        // 解除阻塞
        Sigprocmask(SIG_SETMASK, &prev_all, NULL);
    }

    // if (errno != ECHILD)
    //     Sio_error("waitpid error\n");

    // 恢复errno
    errno = olderrno;
    return;
}

/* 
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.  
 */
void sigint_handler(int sig) 
{
    int olderrno = errno;
    sigset_t mask_all, prev_all;
    pid_t pid;

    Sigfillset(&mask_all);
    Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);

    // 获取前台进程pid
    if ((pid = fgpid(jobs))) {
        /* 存在前台进程，调用kill函数发送信号 */
        if (kill(-pid, sig) < 0)
            Sio_error("sigint: kill error\n");
    }

    Sigprocmask(SIG_SETMASK, &prev_all, NULL);

    errno = olderrno;
    return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.  
 */
void sigtstp_handler(int sig) 
{
    int olderrno = errno;
    sigset_t mask_all, prev_all;
    pid_t pid;

    Sigfillset(&mask_all);
    Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);

    // 获取前台进程pid
    if ((pid = fgpid(jobs))) {
        /* 存在前台进程，调用kill函数发送信号 */
        if (kill(-pid, sig) < 0)
            Sio_error("sigint: kill error\n");
    }

    Sigprocmask(SIG_SETMASK, &prev_all, NULL);

    errno = olderrno;
    return;
}

/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void clearjob(struct job_t *job) {
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void initjobs(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	clearjob(&jobs[i]);
}

/* maxjid - Returns largest allocated job ID */
int maxjid(struct job_t *jobs) 
{
    int i, max=0;

    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].jid > max)
	    max = jobs[i].jid;
    return max;
}

/* addjob - Add a job to the job list */
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline) 
{
    int i;
    
    if (pid < 1)
	return 0;

    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid == 0) {
	    jobs[i].pid = pid;
	    jobs[i].state = state;
	    jobs[i].jid = nextjid++;
	    if (nextjid > MAXJOBS)
		nextjid = 1;
	    strcpy(jobs[i].cmdline, cmdline);
  	    if(verbose){
	        printf("Added job [%d] %d %s\n", jobs[i].jid, jobs[i].pid, jobs[i].cmdline);
            }
            return 1;
	}
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int deletejob(struct job_t *jobs, pid_t pid) 
{
    int i;

    if (pid < 1)
	return 0;

    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid == pid) {
	    clearjob(&jobs[i]);
	    nextjid = maxjid(jobs)+1;
	    return 1;
	}
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t fgpid(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].state == FG)
	    return jobs[i].pid;
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t *getjobpid(struct job_t *jobs, pid_t pid) {
    int i;

    if (pid < 1)
	return NULL;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].pid == pid)
	    return &jobs[i];
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *jobs, int jid) 
{
    int i;

    if (jid < 1)
	return NULL;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].jid == jid)
	    return &jobs[i];
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int pid2jid(pid_t pid) 
{
    int i;

    if (pid < 1)
	return 0;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].pid == pid) {
            return jobs[i].jid;
        }
    return 0;
}

/* listjobs - Print the job list */
void listjobs(struct job_t *jobs) 
{
    int i;
    
    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid != 0) {
	    printf("[%d] (%d) ", jobs[i].jid, jobs[i].pid);
	    switch (jobs[i].state) {
		case BG: 
		    printf("Running ");
		    break;
		case FG: 
		    printf("Foreground ");
		    break;
		case ST: 
		    printf("Stopped ");
		    break;
	    default:
		    printf("listjobs: Internal error: job[%d].state=%d ", 
			   i, jobs[i].state);
	    }
	    printf("%s", jobs[i].cmdline);
	}
    }
}

/**
 * @brief 根据字符串判断为pid还是jid
 *        并且根据对应的pid或者jid返回对应的job
 * 
 * @param  jobs job列表
 *         str 输入字符串
 * @return struct job_t* 返回对应的job
 *         NULL 未找到对应的job
 */
struct job_t *getjobpid_jid(struct job_t *jobs, char *str)
{
    struct job_t *job = NULL;
    // 检查参数为PID或jid或其他
    if (str[0] == '%') {
        /* jid情况 */

        // 检查参数是否为数字
        if (!isdigit_str(str + 1)) {
            LOG_WARN("argument must be a PID or %%jobid\n");
            return NULL;
        }
        
        // 查找相关的作业
        if ((job = getjobjid(jobs, atoi(str + 1))) == NULL) {
            LOG_INFO("%%%d: No such job\n", atoi(str + 1));
        }
    } else {
        /* pid情况 */

        // 检查参数是否为数字
        if (!isdigit_str(str)) {
            LOG_WARN("argument must be a PID or %%jobid\n");
            return NULL;
        }

        // 查找相关的作业
        if ((job = getjobpid(jobs, atoi(str))) == NULL) {
            LOG_INFO("(%d): No such process\n", atoi(str));
        }
    }

    return job;
}

/******************************
 * end job list helper routines
 ******************************/


/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void usage(void) 
{
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void sigquit_handler(int sig) 
{
    printf("Terminating after receipt of SIGQUIT signal\n");
    exit(1);
}



