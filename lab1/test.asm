
bufbomb:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	f3 0f 1e fb          	endbr32 
 8049004:	53                   	push   %ebx
 8049005:	83 ec 08             	sub    $0x8,%esp
 8049008:	e8 d3 02 00 00       	call   80492e0 <__x86.get_pc_thunk.bx>
 804900d:	81 c3 f3 3f 00 00    	add    $0x3ff3,%ebx
 8049013:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049019:	85 c0                	test   %eax,%eax
 804901b:	74 02                	je     804901f <_init+0x1f>
 804901d:	ff d0                	call   *%eax
 804901f:	83 c4 08             	add    $0x8,%esp
 8049022:	5b                   	pop    %ebx
 8049023:	c3                   	ret    

Disassembly of section .plt:

08049030 <strcmp@plt-0x10>:
 8049030:	ff 35 04 d0 04 08    	push   0x804d004
 8049036:	ff 25 08 d0 04 08    	jmp    *0x804d008
 804903c:	00 00                	add    %al,(%eax)
	...

08049040 <strcmp@plt>:
 8049040:	ff 25 0c d0 04 08    	jmp    *0x804d00c
 8049046:	68 00 00 00 00       	push   $0x0
 804904b:	e9 e0 ff ff ff       	jmp    8049030 <_init+0x30>

08049050 <__libc_start_main@plt>:
 8049050:	ff 25 10 d0 04 08    	jmp    *0x804d010
 8049056:	68 08 00 00 00       	push   $0x8
 804905b:	e9 d0 ff ff ff       	jmp    8049030 <_init+0x30>

08049060 <read@plt>:
 8049060:	ff 25 14 d0 04 08    	jmp    *0x804d014
 8049066:	68 10 00 00 00       	push   $0x10
 804906b:	e9 c0 ff ff ff       	jmp    8049030 <_init+0x30>

08049070 <srandom@plt>:
 8049070:	ff 25 18 d0 04 08    	jmp    *0x804d018
 8049076:	68 18 00 00 00       	push   $0x18
 804907b:	e9 b0 ff ff ff       	jmp    8049030 <_init+0x30>

08049080 <printf@plt>:
 8049080:	ff 25 1c d0 04 08    	jmp    *0x804d01c
 8049086:	68 20 00 00 00       	push   $0x20
 804908b:	e9 a0 ff ff ff       	jmp    8049030 <_init+0x30>

08049090 <memmove@plt>:
 8049090:	ff 25 20 d0 04 08    	jmp    *0x804d020
 8049096:	68 28 00 00 00       	push   $0x28
 804909b:	e9 90 ff ff ff       	jmp    8049030 <_init+0x30>

080490a0 <strdup@plt>:
 80490a0:	ff 25 24 d0 04 08    	jmp    *0x804d024
 80490a6:	68 30 00 00 00       	push   $0x30
 80490ab:	e9 80 ff ff ff       	jmp    8049030 <_init+0x30>

080490b0 <memcpy@plt>:
 80490b0:	ff 25 28 d0 04 08    	jmp    *0x804d028
 80490b6:	68 38 00 00 00       	push   $0x38
 80490bb:	e9 70 ff ff ff       	jmp    8049030 <_init+0x30>

080490c0 <signal@plt>:
 80490c0:	ff 25 2c d0 04 08    	jmp    *0x804d02c
 80490c6:	68 40 00 00 00       	push   $0x40
 80490cb:	e9 60 ff ff ff       	jmp    8049030 <_init+0x30>

080490d0 <alarm@plt>:
 80490d0:	ff 25 30 d0 04 08    	jmp    *0x804d030
 80490d6:	68 48 00 00 00       	push   $0x48
 80490db:	e9 50 ff ff ff       	jmp    8049030 <_init+0x30>

080490e0 <__stack_chk_fail@plt>:
 80490e0:	ff 25 34 d0 04 08    	jmp    *0x804d034
 80490e6:	68 50 00 00 00       	push   $0x50
 80490eb:	e9 40 ff ff ff       	jmp    8049030 <_init+0x30>

080490f0 <htons@plt>:
 80490f0:	ff 25 38 d0 04 08    	jmp    *0x804d038
 80490f6:	68 58 00 00 00       	push   $0x58
 80490fb:	e9 30 ff ff ff       	jmp    8049030 <_init+0x30>

08049100 <fwrite@plt>:
 8049100:	ff 25 3c d0 04 08    	jmp    *0x804d03c
 8049106:	68 60 00 00 00       	push   $0x60
 804910b:	e9 20 ff ff ff       	jmp    8049030 <_init+0x30>

08049110 <strcpy@plt>:
 8049110:	ff 25 40 d0 04 08    	jmp    *0x804d040
 8049116:	68 68 00 00 00       	push   $0x68
 804911b:	e9 10 ff ff ff       	jmp    8049030 <_init+0x30>

08049120 <getpid@plt>:
 8049120:	ff 25 44 d0 04 08    	jmp    *0x804d044
 8049126:	68 70 00 00 00       	push   $0x70
 804912b:	e9 00 ff ff ff       	jmp    8049030 <_init+0x30>

08049130 <gethostname@plt>:
 8049130:	ff 25 48 d0 04 08    	jmp    *0x804d048
 8049136:	68 78 00 00 00       	push   $0x78
 804913b:	e9 f0 fe ff ff       	jmp    8049030 <_init+0x30>

08049140 <puts@plt>:
 8049140:	ff 25 4c d0 04 08    	jmp    *0x804d04c
 8049146:	68 80 00 00 00       	push   $0x80
 804914b:	e9 e0 fe ff ff       	jmp    8049030 <_init+0x30>

08049150 <exit@plt>:
 8049150:	ff 25 50 d0 04 08    	jmp    *0x804d050
 8049156:	68 88 00 00 00       	push   $0x88
 804915b:	e9 d0 fe ff ff       	jmp    8049030 <_init+0x30>

08049160 <srand@plt>:
 8049160:	ff 25 54 d0 04 08    	jmp    *0x804d054
 8049166:	68 90 00 00 00       	push   $0x90
 804916b:	e9 c0 fe ff ff       	jmp    8049030 <_init+0x30>

08049170 <mmap@plt>:
 8049170:	ff 25 58 d0 04 08    	jmp    *0x804d058
 8049176:	68 98 00 00 00       	push   $0x98
 804917b:	e9 b0 fe ff ff       	jmp    8049030 <_init+0x30>

08049180 <strlen@plt>:
 8049180:	ff 25 5c d0 04 08    	jmp    *0x804d05c
 8049186:	68 a0 00 00 00       	push   $0xa0
 804918b:	e9 a0 fe ff ff       	jmp    8049030 <_init+0x30>

08049190 <write@plt>:
 8049190:	ff 25 60 d0 04 08    	jmp    *0x804d060
 8049196:	68 a8 00 00 00       	push   $0xa8
 804919b:	e9 90 fe ff ff       	jmp    8049030 <_init+0x30>

080491a0 <getopt@plt>:
 80491a0:	ff 25 64 d0 04 08    	jmp    *0x804d064
 80491a6:	68 b0 00 00 00       	push   $0xb0
 80491ab:	e9 80 fe ff ff       	jmp    8049030 <_init+0x30>

080491b0 <strcasecmp@plt>:
 80491b0:	ff 25 68 d0 04 08    	jmp    *0x804d068
 80491b6:	68 b8 00 00 00       	push   $0xb8
 80491bb:	e9 70 fe ff ff       	jmp    8049030 <_init+0x30>

080491c0 <__isoc99_sscanf@plt>:
 80491c0:	ff 25 6c d0 04 08    	jmp    *0x804d06c
 80491c6:	68 c0 00 00 00       	push   $0xc0
 80491cb:	e9 60 fe ff ff       	jmp    8049030 <_init+0x30>

080491d0 <memset@plt>:
 80491d0:	ff 25 70 d0 04 08    	jmp    *0x804d070
 80491d6:	68 c8 00 00 00       	push   $0xc8
 80491db:	e9 50 fe ff ff       	jmp    8049030 <_init+0x30>

080491e0 <__errno_location@plt>:
 80491e0:	ff 25 74 d0 04 08    	jmp    *0x804d074
 80491e6:	68 d0 00 00 00       	push   $0xd0
 80491eb:	e9 40 fe ff ff       	jmp    8049030 <_init+0x30>

080491f0 <rand@plt>:
 80491f0:	ff 25 78 d0 04 08    	jmp    *0x804d078
 80491f6:	68 d8 00 00 00       	push   $0xd8
 80491fb:	e9 30 fe ff ff       	jmp    8049030 <_init+0x30>

08049200 <munmap@plt>:
 8049200:	ff 25 7c d0 04 08    	jmp    *0x804d07c
 8049206:	68 e0 00 00 00       	push   $0xe0
 804920b:	e9 20 fe ff ff       	jmp    8049030 <_init+0x30>

08049210 <sprintf@plt>:
 8049210:	ff 25 80 d0 04 08    	jmp    *0x804d080
 8049216:	68 e8 00 00 00       	push   $0xe8
 804921b:	e9 10 fe ff ff       	jmp    8049030 <_init+0x30>

08049220 <socket@plt>:
 8049220:	ff 25 84 d0 04 08    	jmp    *0x804d084
 8049226:	68 f0 00 00 00       	push   $0xf0
 804922b:	e9 00 fe ff ff       	jmp    8049030 <_init+0x30>

08049230 <getc@plt>:
 8049230:	ff 25 88 d0 04 08    	jmp    *0x804d088
 8049236:	68 f8 00 00 00       	push   $0xf8
 804923b:	e9 f0 fd ff ff       	jmp    8049030 <_init+0x30>

08049240 <random@plt>:
 8049240:	ff 25 8c d0 04 08    	jmp    *0x804d08c
 8049246:	68 00 01 00 00       	push   $0x100
 804924b:	e9 e0 fd ff ff       	jmp    8049030 <_init+0x30>

08049250 <gethostbyname@plt>:
 8049250:	ff 25 90 d0 04 08    	jmp    *0x804d090
 8049256:	68 08 01 00 00       	push   $0x108
 804925b:	e9 d0 fd ff ff       	jmp    8049030 <_init+0x30>

08049260 <connect@plt>:
 8049260:	ff 25 94 d0 04 08    	jmp    *0x804d094
 8049266:	68 10 01 00 00       	push   $0x110
 804926b:	e9 c0 fd ff ff       	jmp    8049030 <_init+0x30>

08049270 <close@plt>:
 8049270:	ff 25 98 d0 04 08    	jmp    *0x804d098
 8049276:	68 18 01 00 00       	push   $0x118
 804927b:	e9 b0 fd ff ff       	jmp    8049030 <_init+0x30>

08049280 <calloc@plt>:
 8049280:	ff 25 9c d0 04 08    	jmp    *0x804d09c
 8049286:	68 20 01 00 00       	push   $0x120
 804928b:	e9 a0 fd ff ff       	jmp    8049030 <_init+0x30>

Disassembly of section .text:

08049290 <_start>:
 8049290:	f3 0f 1e fb          	endbr32 
 8049294:	31 ed                	xor    %ebp,%ebp
 8049296:	5e                   	pop    %esi
 8049297:	89 e1                	mov    %esp,%ecx
 8049299:	83 e4 f0             	and    $0xfffffff0,%esp
 804929c:	50                   	push   %eax
 804929d:	54                   	push   %esp
 804929e:	52                   	push   %edx
 804929f:	e8 19 00 00 00       	call   80492bd <_start+0x2d>
 80492a4:	81 c3 5c 3d 00 00    	add    $0x3d5c,%ebx
 80492aa:	6a 00                	push   $0x0
 80492ac:	6a 00                	push   $0x0
 80492ae:	51                   	push   %ecx
 80492af:	56                   	push   %esi
 80492b0:	c7 c0 bc 99 04 08    	mov    $0x80499bc,%eax
 80492b6:	50                   	push   %eax
 80492b7:	e8 94 fd ff ff       	call   8049050 <__libc_start_main@plt>
 80492bc:	f4                   	hlt    
 80492bd:	8b 1c 24             	mov    (%esp),%ebx
 80492c0:	c3                   	ret    
 80492c1:	66 90                	xchg   %ax,%ax
 80492c3:	66 90                	xchg   %ax,%ax
 80492c5:	66 90                	xchg   %ax,%ax
 80492c7:	66 90                	xchg   %ax,%ax
 80492c9:	66 90                	xchg   %ax,%ax
 80492cb:	66 90                	xchg   %ax,%ax
 80492cd:	66 90                	xchg   %ax,%ax
 80492cf:	90                   	nop

080492d0 <_dl_relocate_static_pie>:
 80492d0:	f3 0f 1e fb          	endbr32 
 80492d4:	c3                   	ret    
 80492d5:	66 90                	xchg   %ax,%ax
 80492d7:	66 90                	xchg   %ax,%ax
 80492d9:	66 90                	xchg   %ax,%ax
 80492db:	66 90                	xchg   %ax,%ax
 80492dd:	66 90                	xchg   %ax,%ax
 80492df:	90                   	nop

080492e0 <__x86.get_pc_thunk.bx>:
 80492e0:	8b 1c 24             	mov    (%esp),%ebx
 80492e3:	c3                   	ret    
 80492e4:	66 90                	xchg   %ax,%ax
 80492e6:	66 90                	xchg   %ax,%ax
 80492e8:	66 90                	xchg   %ax,%ax
 80492ea:	66 90                	xchg   %ax,%ax
 80492ec:	66 90                	xchg   %ax,%ax
 80492ee:	66 90                	xchg   %ax,%ax

080492f0 <deregister_tm_clones>:
 80492f0:	b8 0c d1 04 08       	mov    $0x804d10c,%eax
 80492f5:	3d 0c d1 04 08       	cmp    $0x804d10c,%eax
 80492fa:	74 24                	je     8049320 <deregister_tm_clones+0x30>
 80492fc:	b8 00 00 00 00       	mov    $0x0,%eax
 8049301:	85 c0                	test   %eax,%eax
 8049303:	74 1b                	je     8049320 <deregister_tm_clones+0x30>
 8049305:	55                   	push   %ebp
 8049306:	89 e5                	mov    %esp,%ebp
 8049308:	83 ec 14             	sub    $0x14,%esp
 804930b:	68 0c d1 04 08       	push   $0x804d10c
 8049310:	ff d0                	call   *%eax
 8049312:	83 c4 10             	add    $0x10,%esp
 8049315:	c9                   	leave  
 8049316:	c3                   	ret    
 8049317:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804931e:	66 90                	xchg   %ax,%ax
 8049320:	c3                   	ret    
 8049321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049328:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804932f:	90                   	nop

08049330 <register_tm_clones>:
 8049330:	b8 0c d1 04 08       	mov    $0x804d10c,%eax
 8049335:	2d 0c d1 04 08       	sub    $0x804d10c,%eax
 804933a:	89 c2                	mov    %eax,%edx
 804933c:	c1 e8 1f             	shr    $0x1f,%eax
 804933f:	c1 fa 02             	sar    $0x2,%edx
 8049342:	01 d0                	add    %edx,%eax
 8049344:	d1 f8                	sar    %eax
 8049346:	74 20                	je     8049368 <register_tm_clones+0x38>
 8049348:	ba 00 00 00 00       	mov    $0x0,%edx
 804934d:	85 d2                	test   %edx,%edx
 804934f:	74 17                	je     8049368 <register_tm_clones+0x38>
 8049351:	55                   	push   %ebp
 8049352:	89 e5                	mov    %esp,%ebp
 8049354:	83 ec 10             	sub    $0x10,%esp
 8049357:	50                   	push   %eax
 8049358:	68 0c d1 04 08       	push   $0x804d10c
 804935d:	ff d2                	call   *%edx
 804935f:	83 c4 10             	add    $0x10,%esp
 8049362:	c9                   	leave  
 8049363:	c3                   	ret    
 8049364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049368:	c3                   	ret    
 8049369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049370 <__do_global_dtors_aux>:
 8049370:	f3 0f 1e fb          	endbr32 
 8049374:	80 3d 64 d1 04 08 00 	cmpb   $0x0,0x804d164
 804937b:	75 1b                	jne    8049398 <__do_global_dtors_aux+0x28>
 804937d:	55                   	push   %ebp
 804937e:	89 e5                	mov    %esp,%ebp
 8049380:	83 ec 08             	sub    $0x8,%esp
 8049383:	e8 68 ff ff ff       	call   80492f0 <deregister_tm_clones>
 8049388:	c6 05 64 d1 04 08 01 	movb   $0x1,0x804d164
 804938f:	c9                   	leave  
 8049390:	c3                   	ret    
 8049391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049398:	c3                   	ret    
 8049399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080493a0 <frame_dummy>:
 80493a0:	f3 0f 1e fb          	endbr32 
 80493a4:	eb 8a                	jmp    8049330 <register_tm_clones>

080493a6 <RAND_FUNC>:
 80493a6:	55                   	push   %ebp
 80493a7:	89 e5                	mov    %esp,%ebp
 80493a9:	83 ec 38             	sub    $0x38,%esp
 80493ac:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80493b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493b5:	31 c0                	xor    %eax,%eax
 80493b7:	c7 45 cf 44 69 73 6b 	movl   $0x6b736944,-0x31(%ebp)
 80493be:	c7 45 d3 73 20 61 72 	movl   $0x72612073,-0x2d(%ebp)
 80493c5:	c7 45 d7 65 20 63 6f 	movl   $0x6f632065,-0x29(%ebp)
 80493cc:	c7 45 db 6e 73 74 72 	movl   $0x7274736e,-0x25(%ebp)
 80493d3:	c7 45 df 75 63 74 65 	movl   $0x65746375,-0x21(%ebp)
 80493da:	c7 45 e3 64 20 66 72 	movl   $0x72662064,-0x1d(%ebp)
 80493e1:	c7 45 e7 6f 6d 20 70 	movl   $0x70206d6f,-0x19(%ebp)
 80493e8:	c7 45 eb 6c 61 74 74 	movl   $0x7474616c,-0x15(%ebp)
 80493ef:	c7 45 ef 65 72 73 2e 	movl   $0x2e737265,-0x11(%ebp)
 80493f6:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
 80493fa:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
 80493fe:	88 45 cf             	mov    %al,-0x31(%ebp)
 8049401:	90                   	nop
 8049402:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049405:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
 804940c:	74 05                	je     8049413 <RAND_FUNC+0x6d>
 804940e:	e8 cd fc ff ff       	call   80490e0 <__stack_chk_fail@plt>
 8049413:	c9                   	leave  
 8049414:	c3                   	ret    

08049415 <smoke>:
 8049415:	55                   	push   %ebp
 8049416:	89 e5                	mov    %esp,%ebp
 8049418:	83 ec 08             	sub    $0x8,%esp
 804941b:	83 ec 0c             	sub    $0xc,%esp
 804941e:	68 08 b0 04 08       	push   $0x804b008
 8049423:	e8 18 fd ff ff       	call   8049140 <puts@plt>
 8049428:	83 c4 10             	add    $0x10,%esp
 804942b:	83 ec 0c             	sub    $0xc,%esp
 804942e:	6a 00                	push   $0x0
 8049430:	e8 ab 09 00 00       	call   8049de0 <validate>
 8049435:	83 c4 10             	add    $0x10,%esp
 8049438:	83 ec 0c             	sub    $0xc,%esp
 804943b:	6a 00                	push   $0x0
 804943d:	e8 0e fd ff ff       	call   8049150 <exit@plt>

08049442 <fizz>:
 8049442:	55                   	push   %ebp
 8049443:	89 e5                	mov    %esp,%ebp
 8049445:	83 ec 08             	sub    $0x8,%esp
 8049448:	8b 55 08             	mov    0x8(%ebp),%edx
 804944b:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049450:	39 c2                	cmp    %eax,%edx
 8049452:	75 22                	jne    8049476 <fizz+0x34>
 8049454:	83 ec 08             	sub    $0x8,%esp
 8049457:	ff 75 08             	push   0x8(%ebp)
 804945a:	68 23 b0 04 08       	push   $0x804b023
 804945f:	e8 1c fc ff ff       	call   8049080 <printf@plt>
 8049464:	83 c4 10             	add    $0x10,%esp
 8049467:	83 ec 0c             	sub    $0xc,%esp
 804946a:	6a 01                	push   $0x1
 804946c:	e8 6f 09 00 00       	call   8049de0 <validate>
 8049471:	83 c4 10             	add    $0x10,%esp
 8049474:	eb 13                	jmp    8049489 <fizz+0x47>
 8049476:	83 ec 08             	sub    $0x8,%esp
 8049479:	ff 75 08             	push   0x8(%ebp)
 804947c:	68 44 b0 04 08       	push   $0x804b044
 8049481:	e8 fa fb ff ff       	call   8049080 <printf@plt>
 8049486:	83 c4 10             	add    $0x10,%esp
 8049489:	83 ec 0c             	sub    $0xc,%esp
 804948c:	6a 00                	push   $0x0
 804948e:	e8 bd fc ff ff       	call   8049150 <exit@plt>

08049493 <bang>:
 8049493:	55                   	push   %ebp
 8049494:	89 e5                	mov    %esp,%ebp
 8049496:	83 ec 08             	sub    $0x8,%esp
 8049499:	a1 98 d1 04 08       	mov    0x804d198,%eax
 804949e:	89 c2                	mov    %eax,%edx
 80494a0:	a1 90 d1 04 08       	mov    0x804d190,%eax
 80494a5:	39 c2                	cmp    %eax,%edx
 80494a7:	75 25                	jne    80494ce <bang+0x3b>
 80494a9:	a1 98 d1 04 08       	mov    0x804d198,%eax
 80494ae:	83 ec 08             	sub    $0x8,%esp
 80494b1:	50                   	push   %eax
 80494b2:	68 64 b0 04 08       	push   $0x804b064
 80494b7:	e8 c4 fb ff ff       	call   8049080 <printf@plt>
 80494bc:	83 c4 10             	add    $0x10,%esp
 80494bf:	83 ec 0c             	sub    $0xc,%esp
 80494c2:	6a 02                	push   $0x2
 80494c4:	e8 17 09 00 00       	call   8049de0 <validate>
 80494c9:	83 c4 10             	add    $0x10,%esp
 80494cc:	eb 16                	jmp    80494e4 <bang+0x51>
 80494ce:	a1 98 d1 04 08       	mov    0x804d198,%eax
 80494d3:	83 ec 08             	sub    $0x8,%esp
 80494d6:	50                   	push   %eax
 80494d7:	68 89 b0 04 08       	push   $0x804b089
 80494dc:	e8 9f fb ff ff       	call   8049080 <printf@plt>
 80494e1:	83 c4 10             	add    $0x10,%esp
 80494e4:	83 ec 0c             	sub    $0xc,%esp
 80494e7:	6a 00                	push   $0x0
 80494e9:	e8 62 fc ff ff       	call   8049150 <exit@plt>

080494ee <test>:
 80494ee:	55                   	push   %ebp
 80494ef:	89 e5                	mov    %esp,%ebp
 80494f1:	83 ec 18             	sub    $0x18,%esp
 80494f4:	e8 a5 04 00 00       	call   804999e <uniqueval>
 80494f9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80494fc:	e8 11 07 00 00       	call   8049c12 <getbuf>
 8049501:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049504:	e8 95 04 00 00       	call   804999e <uniqueval>
 8049509:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804950c:	39 d0                	cmp    %edx,%eax
 804950e:	74 12                	je     8049522 <test+0x34>
 8049510:	83 ec 0c             	sub    $0xc,%esp
 8049513:	68 a8 b0 04 08       	push   $0x804b0a8
 8049518:	e8 23 fc ff ff       	call   8049140 <puts@plt>
 804951d:	83 c4 10             	add    $0x10,%esp
 8049520:	eb 41                	jmp    8049563 <test+0x75>
 8049522:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049525:	a1 90 d1 04 08       	mov    0x804d190,%eax
 804952a:	39 c2                	cmp    %eax,%edx
 804952c:	75 22                	jne    8049550 <test+0x62>
 804952e:	83 ec 08             	sub    $0x8,%esp
 8049531:	ff 75 f4             	push   -0xc(%ebp)
 8049534:	68 d1 b0 04 08       	push   $0x804b0d1
 8049539:	e8 42 fb ff ff       	call   8049080 <printf@plt>
 804953e:	83 c4 10             	add    $0x10,%esp
 8049541:	83 ec 0c             	sub    $0xc,%esp
 8049544:	6a 03                	push   $0x3
 8049546:	e8 95 08 00 00       	call   8049de0 <validate>
 804954b:	83 c4 10             	add    $0x10,%esp
 804954e:	eb 13                	jmp    8049563 <test+0x75>
 8049550:	83 ec 08             	sub    $0x8,%esp
 8049553:	ff 75 f4             	push   -0xc(%ebp)
 8049556:	68 ee b0 04 08       	push   $0x804b0ee
 804955b:	e8 20 fb ff ff       	call   8049080 <printf@plt>
 8049560:	83 c4 10             	add    $0x10,%esp
 8049563:	90                   	nop
 8049564:	c9                   	leave  
 8049565:	c3                   	ret    

08049566 <testn>:
 8049566:	55                   	push   %ebp
 8049567:	89 e5                	mov    %esp,%ebp
 8049569:	83 ec 18             	sub    $0x18,%esp
 804956c:	e8 2d 04 00 00       	call   804999e <uniqueval>
 8049571:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049574:	e8 b5 06 00 00       	call   8049c2e <getbufn>
 8049579:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804957c:	e8 1d 04 00 00       	call   804999e <uniqueval>
 8049581:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049584:	39 d0                	cmp    %edx,%eax
 8049586:	74 12                	je     804959a <testn+0x34>
 8049588:	83 ec 0c             	sub    $0xc,%esp
 804958b:	68 a8 b0 04 08       	push   $0x804b0a8
 8049590:	e8 ab fb ff ff       	call   8049140 <puts@plt>
 8049595:	83 c4 10             	add    $0x10,%esp
 8049598:	eb 41                	jmp    80495db <testn+0x75>
 804959a:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804959d:	a1 90 d1 04 08       	mov    0x804d190,%eax
 80495a2:	39 c2                	cmp    %eax,%edx
 80495a4:	75 22                	jne    80495c8 <testn+0x62>
 80495a6:	83 ec 08             	sub    $0x8,%esp
 80495a9:	ff 75 f4             	push   -0xc(%ebp)
 80495ac:	68 0c b1 04 08       	push   $0x804b10c
 80495b1:	e8 ca fa ff ff       	call   8049080 <printf@plt>
 80495b6:	83 c4 10             	add    $0x10,%esp
 80495b9:	83 ec 0c             	sub    $0xc,%esp
 80495bc:	6a 04                	push   $0x4
 80495be:	e8 1d 08 00 00       	call   8049de0 <validate>
 80495c3:	83 c4 10             	add    $0x10,%esp
 80495c6:	eb 13                	jmp    80495db <testn+0x75>
 80495c8:	83 ec 08             	sub    $0x8,%esp
 80495cb:	ff 75 f4             	push   -0xc(%ebp)
 80495ce:	68 2c b1 04 08       	push   $0x804b12c
 80495d3:	e8 a8 fa ff ff       	call   8049080 <printf@plt>
 80495d8:	83 c4 10             	add    $0x10,%esp
 80495db:	90                   	nop
 80495dc:	c9                   	leave  
 80495dd:	c3                   	ret    

080495de <save_char>:
 80495de:	55                   	push   %ebp
 80495df:	89 e5                	mov    %esp,%ebp
 80495e1:	83 ec 04             	sub    $0x4,%esp
 80495e4:	8b 45 08             	mov    0x8(%ebp),%eax
 80495e7:	88 45 fc             	mov    %al,-0x4(%ebp)
 80495ea:	a1 9c d1 04 08       	mov    0x804d19c,%eax
 80495ef:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 80495f4:	7f 70                	jg     8049666 <save_char+0x88>
 80495f6:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 80495fa:	c0 f8 04             	sar    $0x4,%al
 80495fd:	0f be c0             	movsbl %al,%eax
 8049600:	83 e0 0f             	and    $0xf,%eax
 8049603:	89 c1                	mov    %eax,%ecx
 8049605:	8b 15 9c d1 04 08    	mov    0x804d19c,%edx
 804960b:	89 d0                	mov    %edx,%eax
 804960d:	01 c0                	add    %eax,%eax
 804960f:	01 c2                	add    %eax,%edx
 8049611:	0f b6 81 e8 d0 04 08 	movzbl 0x804d0e8(%ecx),%eax
 8049618:	88 82 a0 d1 04 08    	mov    %al,0x804d1a0(%edx)
 804961e:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
 8049622:	83 e0 0f             	and    $0xf,%eax
 8049625:	89 c1                	mov    %eax,%ecx
 8049627:	8b 15 9c d1 04 08    	mov    0x804d19c,%edx
 804962d:	89 d0                	mov    %edx,%eax
 804962f:	01 c0                	add    %eax,%eax
 8049631:	01 d0                	add    %edx,%eax
 8049633:	8d 50 01             	lea    0x1(%eax),%edx
 8049636:	0f b6 81 e8 d0 04 08 	movzbl 0x804d0e8(%ecx),%eax
 804963d:	88 82 a0 d1 04 08    	mov    %al,0x804d1a0(%edx)
 8049643:	8b 15 9c d1 04 08    	mov    0x804d19c,%edx
 8049649:	89 d0                	mov    %edx,%eax
 804964b:	01 c0                	add    %eax,%eax
 804964d:	01 d0                	add    %edx,%eax
 804964f:	83 c0 02             	add    $0x2,%eax
 8049652:	c6 80 a0 d1 04 08 20 	movb   $0x20,0x804d1a0(%eax)
 8049659:	a1 9c d1 04 08       	mov    0x804d19c,%eax
 804965e:	83 c0 01             	add    $0x1,%eax
 8049661:	a3 9c d1 04 08       	mov    %eax,0x804d19c
 8049666:	90                   	nop
 8049667:	c9                   	leave  
 8049668:	c3                   	ret    

08049669 <save_term>:
 8049669:	55                   	push   %ebp
 804966a:	89 e5                	mov    %esp,%ebp
 804966c:	8b 15 9c d1 04 08    	mov    0x804d19c,%edx
 8049672:	89 d0                	mov    %edx,%eax
 8049674:	01 c0                	add    %eax,%eax
 8049676:	01 d0                	add    %edx,%eax
 8049678:	c6 80 a0 d1 04 08 00 	movb   $0x0,0x804d1a0(%eax)
 804967f:	90                   	nop
 8049680:	5d                   	pop    %ebp
 8049681:	c3                   	ret    

08049682 <Gets>:
 8049682:	55                   	push   %ebp
 8049683:	89 e5                	mov    %esp,%ebp
 8049685:	83 ec 18             	sub    $0x18,%esp
 8049688:	8b 45 08             	mov    0x8(%ebp),%eax
 804968b:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804968e:	c7 05 9c d1 04 08 00 	movl   $0x0,0x804d19c
 8049695:	00 00 00 
 8049698:	eb 1d                	jmp    80496b7 <Gets+0x35>
 804969a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804969d:	8d 50 01             	lea    0x1(%eax),%edx
 80496a0:	89 55 f0             	mov    %edx,-0x10(%ebp)
 80496a3:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80496a6:	88 10                	mov    %dl,(%eax)
 80496a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496ab:	0f be c0             	movsbl %al,%eax
 80496ae:	50                   	push   %eax
 80496af:	e8 2a ff ff ff       	call   80495de <save_char>
 80496b4:	83 c4 04             	add    $0x4,%esp
 80496b7:	a1 8c d1 04 08       	mov    0x804d18c,%eax
 80496bc:	83 ec 0c             	sub    $0xc,%esp
 80496bf:	50                   	push   %eax
 80496c0:	e8 6b fb ff ff       	call   8049230 <getc@plt>
 80496c5:	83 c4 10             	add    $0x10,%esp
 80496c8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80496cb:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
 80496cf:	74 06                	je     80496d7 <Gets+0x55>
 80496d1:	83 7d f4 0a          	cmpl   $0xa,-0xc(%ebp)
 80496d5:	75 c3                	jne    804969a <Gets+0x18>
 80496d7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80496da:	8d 50 01             	lea    0x1(%eax),%edx
 80496dd:	89 55 f0             	mov    %edx,-0x10(%ebp)
 80496e0:	c6 00 00             	movb   $0x0,(%eax)
 80496e3:	e8 81 ff ff ff       	call   8049669 <save_term>
 80496e8:	8b 45 08             	mov    0x8(%ebp),%eax
 80496eb:	c9                   	leave  
 80496ec:	c3                   	ret    

080496ed <usage>:
 80496ed:	55                   	push   %ebp
 80496ee:	89 e5                	mov    %esp,%ebp
 80496f0:	83 ec 08             	sub    $0x8,%esp
 80496f3:	83 ec 08             	sub    $0x8,%esp
 80496f6:	ff 75 08             	push   0x8(%ebp)
 80496f9:	68 48 b1 04 08       	push   $0x804b148
 80496fe:	e8 7d f9 ff ff       	call   8049080 <printf@plt>
 8049703:	83 c4 10             	add    $0x10,%esp
 8049706:	83 ec 0c             	sub    $0xc,%esp
 8049709:	68 66 b1 04 08       	push   $0x804b166
 804970e:	e8 2d fa ff ff       	call   8049140 <puts@plt>
 8049713:	83 c4 10             	add    $0x10,%esp
 8049716:	83 ec 0c             	sub    $0xc,%esp
 8049719:	68 7c b1 04 08       	push   $0x804b17c
 804971e:	e8 1d fa ff ff       	call   8049140 <puts@plt>
 8049723:	83 c4 10             	add    $0x10,%esp
 8049726:	83 ec 0c             	sub    $0xc,%esp
 8049729:	68 98 b1 04 08       	push   $0x804b198
 804972e:	e8 0d fa ff ff       	call   8049140 <puts@plt>
 8049733:	83 c4 10             	add    $0x10,%esp
 8049736:	83 ec 0c             	sub    $0xc,%esp
 8049739:	68 d4 b1 04 08       	push   $0x804b1d4
 804973e:	e8 fd f9 ff ff       	call   8049140 <puts@plt>
 8049743:	83 c4 10             	add    $0x10,%esp
 8049746:	83 ec 0c             	sub    $0xc,%esp
 8049749:	6a 00                	push   $0x0
 804974b:	e8 00 fa ff ff       	call   8049150 <exit@plt>

08049750 <bushandler>:
 8049750:	55                   	push   %ebp
 8049751:	89 e5                	mov    %esp,%ebp
 8049753:	83 ec 08             	sub    $0x8,%esp
 8049756:	83 ec 0c             	sub    $0xc,%esp
 8049759:	68 fc b1 04 08       	push   $0x804b1fc
 804975e:	e8 dd f9 ff ff       	call   8049140 <puts@plt>
 8049763:	83 c4 10             	add    $0x10,%esp
 8049766:	83 ec 0c             	sub    $0xc,%esp
 8049769:	68 1c b2 04 08       	push   $0x804b21c
 804976e:	e8 cd f9 ff ff       	call   8049140 <puts@plt>
 8049773:	83 c4 10             	add    $0x10,%esp
 8049776:	83 ec 0c             	sub    $0xc,%esp
 8049779:	6a 00                	push   $0x0
 804977b:	e8 d0 f9 ff ff       	call   8049150 <exit@plt>

08049780 <seghandler>:
 8049780:	55                   	push   %ebp
 8049781:	89 e5                	mov    %esp,%ebp
 8049783:	83 ec 08             	sub    $0x8,%esp
 8049786:	83 ec 0c             	sub    $0xc,%esp
 8049789:	68 34 b2 04 08       	push   $0x804b234
 804978e:	e8 ad f9 ff ff       	call   8049140 <puts@plt>
 8049793:	83 c4 10             	add    $0x10,%esp
 8049796:	83 ec 0c             	sub    $0xc,%esp
 8049799:	68 1c b2 04 08       	push   $0x804b21c
 804979e:	e8 9d f9 ff ff       	call   8049140 <puts@plt>
 80497a3:	83 c4 10             	add    $0x10,%esp
 80497a6:	83 ec 0c             	sub    $0xc,%esp
 80497a9:	6a 00                	push   $0x0
 80497ab:	e8 a0 f9 ff ff       	call   8049150 <exit@plt>

080497b0 <illegalhandler>:
 80497b0:	55                   	push   %ebp
 80497b1:	89 e5                	mov    %esp,%ebp
 80497b3:	83 ec 08             	sub    $0x8,%esp
 80497b6:	83 ec 0c             	sub    $0xc,%esp
 80497b9:	68 5c b2 04 08       	push   $0x804b25c
 80497be:	e8 7d f9 ff ff       	call   8049140 <puts@plt>
 80497c3:	83 c4 10             	add    $0x10,%esp
 80497c6:	83 ec 0c             	sub    $0xc,%esp
 80497c9:	68 1c b2 04 08       	push   $0x804b21c
 80497ce:	e8 6d f9 ff ff       	call   8049140 <puts@plt>
 80497d3:	83 c4 10             	add    $0x10,%esp
 80497d6:	83 ec 0c             	sub    $0xc,%esp
 80497d9:	6a 00                	push   $0x0
 80497db:	e8 70 f9 ff ff       	call   8049150 <exit@plt>

080497e0 <launch>:
 80497e0:	55                   	push   %ebp
 80497e1:	89 e5                	mov    %esp,%ebp
 80497e3:	83 ec 58             	sub    $0x58,%esp
 80497e6:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80497ec:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80497ef:	31 c0                	xor    %eax,%eax
 80497f1:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
 80497f8:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 80497fb:	25 f0 3f 00 00       	and    $0x3ff0,%eax
 8049800:	89 45 ac             	mov    %eax,-0x54(%ebp)
 8049803:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049806:	8b 45 ac             	mov    -0x54(%ebp),%eax
 8049809:	01 d0                	add    %edx,%eax
 804980b:	8d 50 0c             	lea    0xc(%eax),%edx
 804980e:	b8 10 00 00 00       	mov    $0x10,%eax
 8049813:	83 e8 01             	sub    $0x1,%eax
 8049816:	01 d0                	add    %edx,%eax
 8049818:	b9 10 00 00 00       	mov    $0x10,%ecx
 804981d:	ba 00 00 00 00       	mov    $0x0,%edx
 8049822:	f7 f1                	div    %ecx
 8049824:	6b c0 10             	imul   $0x10,%eax,%eax
 8049827:	89 c1                	mov    %eax,%ecx
 8049829:	81 e1 00 f0 ff ff    	and    $0xfffff000,%ecx
 804982f:	89 e2                	mov    %esp,%edx
 8049831:	29 ca                	sub    %ecx,%edx
 8049833:	39 d4                	cmp    %edx,%esp
 8049835:	74 10                	je     8049847 <launch+0x67>
 8049837:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 804983d:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
 8049844:	00 
 8049845:	eb ec                	jmp    8049833 <launch+0x53>
 8049847:	89 c2                	mov    %eax,%edx
 8049849:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 804984f:	29 d4                	sub    %edx,%esp
 8049851:	89 c2                	mov    %eax,%edx
 8049853:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 8049859:	85 d2                	test   %edx,%edx
 804985b:	74 0d                	je     804986a <launch+0x8a>
 804985d:	25 ff 0f 00 00       	and    $0xfff,%eax
 8049862:	83 e8 04             	sub    $0x4,%eax
 8049865:	01 e0                	add    %esp,%eax
 8049867:	83 08 00             	orl    $0x0,(%eax)
 804986a:	89 e0                	mov    %esp,%eax
 804986c:	83 c0 0f             	add    $0xf,%eax
 804986f:	c1 e8 04             	shr    $0x4,%eax
 8049872:	c1 e0 04             	shl    $0x4,%eax
 8049875:	89 45 b0             	mov    %eax,-0x50(%ebp)
 8049878:	83 ec 04             	sub    $0x4,%esp
 804987b:	ff 75 ac             	push   -0x54(%ebp)
 804987e:	68 f4 00 00 00       	push   $0xf4
 8049883:	ff 75 b0             	push   -0x50(%ebp)
 8049886:	e8 45 f9 ff ff       	call   80491d0 <memset@plt>
 804988b:	83 c4 10             	add    $0x10,%esp
 804988e:	83 ec 0c             	sub    $0xc,%esp
 8049891:	68 87 b2 04 08       	push   $0x804b287
 8049896:	e8 e5 f7 ff ff       	call   8049080 <printf@plt>
 804989b:	83 c4 10             	add    $0x10,%esp
 804989e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80498a2:	74 07                	je     80498ab <launch+0xcb>
 80498a4:	e8 bd fc ff ff       	call   8049566 <testn>
 80498a9:	eb 05                	jmp    80498b0 <launch+0xd0>
 80498ab:	e8 3e fc ff ff       	call   80494ee <test>
 80498b0:	a1 94 d1 04 08       	mov    0x804d194,%eax
 80498b5:	85 c0                	test   %eax,%eax
 80498b7:	75 1a                	jne    80498d3 <launch+0xf3>
 80498b9:	83 ec 0c             	sub    $0xc,%esp
 80498bc:	68 1c b2 04 08       	push   $0x804b21c
 80498c1:	e8 7a f8 ff ff       	call   8049140 <puts@plt>
 80498c6:	83 c4 10             	add    $0x10,%esp
 80498c9:	c7 05 94 d1 04 08 00 	movl   $0x0,0x804d194
 80498d0:	00 00 00 
 80498d3:	90                   	nop
 80498d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80498d7:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
 80498de:	74 05                	je     80498e5 <launch+0x105>
 80498e0:	e8 fb f7 ff ff       	call   80490e0 <__stack_chk_fail@plt>
 80498e5:	c9                   	leave  
 80498e6:	c3                   	ret    

080498e7 <launcher>:
 80498e7:	55                   	push   %ebp
 80498e8:	89 e5                	mov    %esp,%ebp
 80498ea:	83 ec 18             	sub    $0x18,%esp
 80498ed:	8b 45 08             	mov    0x8(%ebp),%eax
 80498f0:	a3 a4 dd 04 08       	mov    %eax,0x804dda4
 80498f5:	8b 45 0c             	mov    0xc(%ebp),%eax
 80498f8:	a3 a8 dd 04 08       	mov    %eax,0x804dda8
 80498fd:	83 ec 08             	sub    $0x8,%esp
 8049900:	6a 00                	push   $0x0
 8049902:	6a 00                	push   $0x0
 8049904:	68 32 01 00 00       	push   $0x132
 8049909:	6a 07                	push   $0x7
 804990b:	68 00 00 10 00       	push   $0x100000
 8049910:	68 00 70 58 55       	push   $0x55587000
 8049915:	e8 56 f8 ff ff       	call   8049170 <mmap@plt>
 804991a:	83 c4 20             	add    $0x20,%esp
 804991d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049920:	81 7d f4 00 70 58 55 	cmpl   $0x55587000,-0xc(%ebp)
 8049927:	74 21                	je     804994a <launcher+0x63>
 8049929:	a1 20 d1 04 08       	mov    0x804d120,%eax
 804992e:	50                   	push   %eax
 804992f:	6a 47                	push   $0x47
 8049931:	6a 01                	push   $0x1
 8049933:	68 94 b2 04 08       	push   $0x804b294
 8049938:	e8 c3 f7 ff ff       	call   8049100 <fwrite@plt>
 804993d:	83 c4 10             	add    $0x10,%esp
 8049940:	83 ec 0c             	sub    $0xc,%esp
 8049943:	6a 01                	push   $0x1
 8049945:	e8 06 f8 ff ff       	call   8049150 <exit@plt>
 804994a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804994d:	05 f8 ff 0f 00       	add    $0xffff8,%eax
 8049952:	a3 ac dd 04 08       	mov    %eax,0x804ddac
 8049957:	8b 15 ac dd 04 08    	mov    0x804ddac,%edx
 804995d:	89 e0                	mov    %esp,%eax
 804995f:	89 d4                	mov    %edx,%esp
 8049961:	89 c2                	mov    %eax,%edx
 8049963:	89 15 b0 dd 04 08    	mov    %edx,0x804ddb0
 8049969:	8b 15 a8 dd 04 08    	mov    0x804dda8,%edx
 804996f:	a1 a4 dd 04 08       	mov    0x804dda4,%eax
 8049974:	83 ec 08             	sub    $0x8,%esp
 8049977:	52                   	push   %edx
 8049978:	50                   	push   %eax
 8049979:	e8 62 fe ff ff       	call   80497e0 <launch>
 804997e:	83 c4 10             	add    $0x10,%esp
 8049981:	a1 b0 dd 04 08       	mov    0x804ddb0,%eax
 8049986:	89 c4                	mov    %eax,%esp
 8049988:	83 ec 08             	sub    $0x8,%esp
 804998b:	68 00 00 10 00       	push   $0x100000
 8049990:	ff 75 f4             	push   -0xc(%ebp)
 8049993:	e8 68 f8 ff ff       	call   8049200 <munmap@plt>
 8049998:	83 c4 10             	add    $0x10,%esp
 804999b:	90                   	nop
 804999c:	c9                   	leave  
 804999d:	c3                   	ret    

0804999e <uniqueval>:
 804999e:	55                   	push   %ebp
 804999f:	89 e5                	mov    %esp,%ebp
 80499a1:	83 ec 08             	sub    $0x8,%esp
 80499a4:	e8 77 f7 ff ff       	call   8049120 <getpid@plt>
 80499a9:	83 ec 0c             	sub    $0xc,%esp
 80499ac:	50                   	push   %eax
 80499ad:	e8 be f6 ff ff       	call   8049070 <srandom@plt>
 80499b2:	83 c4 10             	add    $0x10,%esp
 80499b5:	e8 86 f8 ff ff       	call   8049240 <random@plt>
 80499ba:	c9                   	leave  
 80499bb:	c3                   	ret    

080499bc <main>:
 80499bc:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80499c0:	83 e4 f0             	and    $0xfffffff0,%esp
 80499c3:	ff 71 fc             	push   -0x4(%ecx)
 80499c6:	55                   	push   %ebp
 80499c7:	89 e5                	mov    %esp,%ebp
 80499c9:	53                   	push   %ebx
 80499ca:	51                   	push   %ecx
 80499cb:	83 ec 20             	sub    $0x20,%esp
 80499ce:	89 cb                	mov    %ecx,%ebx
 80499d0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80499d7:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 80499de:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 80499e5:	83 ec 08             	sub    $0x8,%esp
 80499e8:	68 80 97 04 08       	push   $0x8049780
 80499ed:	6a 0b                	push   $0xb
 80499ef:	e8 cc f6 ff ff       	call   80490c0 <signal@plt>
 80499f4:	83 c4 10             	add    $0x10,%esp
 80499f7:	83 ec 08             	sub    $0x8,%esp
 80499fa:	68 50 97 04 08       	push   $0x8049750
 80499ff:	6a 07                	push   $0x7
 8049a01:	e8 ba f6 ff ff       	call   80490c0 <signal@plt>
 8049a06:	83 c4 10             	add    $0x10,%esp
 8049a09:	83 ec 08             	sub    $0x8,%esp
 8049a0c:	68 b0 97 04 08       	push   $0x80497b0
 8049a11:	6a 04                	push   $0x4
 8049a13:	e8 a8 f6 ff ff       	call   80490c0 <signal@plt>
 8049a18:	83 c4 10             	add    $0x10,%esp
 8049a1b:	a1 40 d1 04 08       	mov    0x804d140,%eax
 8049a20:	a3 8c d1 04 08       	mov    %eax,0x804d18c
 8049a25:	e9 a3 00 00 00       	jmp    8049acd <main+0x111>
 8049a2a:	0f be 45 e3          	movsbl -0x1d(%ebp),%eax
 8049a2e:	83 e8 67             	sub    $0x67,%eax
 8049a31:	83 f8 0e             	cmp    $0xe,%eax
 8049a34:	0f 87 82 00 00 00    	ja     8049abc <main+0x100>
 8049a3a:	8b 04 85 54 b3 04 08 	mov    0x804b354(,%eax,4),%eax
 8049a41:	ff e0                	jmp    *%eax
 8049a43:	8b 43 04             	mov    0x4(%ebx),%eax
 8049a46:	8b 00                	mov    (%eax),%eax
 8049a48:	83 ec 0c             	sub    $0xc,%esp
 8049a4b:	50                   	push   %eax
 8049a4c:	e8 9c fc ff ff       	call   80496ed <usage>
 8049a51:	83 c4 10             	add    $0x10,%esp
 8049a54:	eb 77                	jmp    8049acd <main+0x111>
 8049a56:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 8049a5d:	c7 45 ec 05 00 00 00 	movl   $0x5,-0x14(%ebp)
 8049a64:	eb 67                	jmp    8049acd <main+0x111>
 8049a66:	a1 60 d1 04 08       	mov    0x804d160,%eax
 8049a6b:	83 ec 0c             	sub    $0xc,%esp
 8049a6e:	50                   	push   %eax
 8049a6f:	e8 2c f6 ff ff       	call   80490a0 <strdup@plt>
 8049a74:	83 c4 10             	add    $0x10,%esp
 8049a77:	a3 80 d1 04 08       	mov    %eax,0x804d180
 8049a7c:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049a81:	83 ec 0c             	sub    $0xc,%esp
 8049a84:	50                   	push   %eax
 8049a85:	e8 cd 12 00 00       	call   804ad57 <gencookie>
 8049a8a:	83 c4 10             	add    $0x10,%esp
 8049a8d:	a3 90 d1 04 08       	mov    %eax,0x804d190
 8049a92:	eb 39                	jmp    8049acd <main+0x111>
 8049a94:	83 ec 0c             	sub    $0xc,%esp
 8049a97:	68 dc b2 04 08       	push   $0x804b2dc
 8049a9c:	e8 9f f6 ff ff       	call   8049140 <puts@plt>
 8049aa1:	83 c4 10             	add    $0x10,%esp
 8049aa4:	c7 05 84 d1 04 08 00 	movl   $0x0,0x804d184
 8049aab:	00 00 00 
 8049aae:	eb 1d                	jmp    8049acd <main+0x111>
 8049ab0:	c7 05 88 d1 04 08 01 	movl   $0x1,0x804d188
 8049ab7:	00 00 00 
 8049aba:	eb 11                	jmp    8049acd <main+0x111>
 8049abc:	8b 43 04             	mov    0x4(%ebx),%eax
 8049abf:	8b 00                	mov    (%eax),%eax
 8049ac1:	83 ec 0c             	sub    $0xc,%esp
 8049ac4:	50                   	push   %eax
 8049ac5:	e8 23 fc ff ff       	call   80496ed <usage>
 8049aca:	83 c4 10             	add    $0x10,%esp
 8049acd:	83 ec 04             	sub    $0x4,%esp
 8049ad0:	68 04 b3 04 08       	push   $0x804b304
 8049ad5:	ff 73 04             	push   0x4(%ebx)
 8049ad8:	ff 33                	push   (%ebx)
 8049ada:	e8 c1 f6 ff ff       	call   80491a0 <getopt@plt>
 8049adf:	83 c4 10             	add    $0x10,%esp
 8049ae2:	88 45 e3             	mov    %al,-0x1d(%ebp)
 8049ae5:	80 7d e3 ff          	cmpb   $0xff,-0x1d(%ebp)
 8049ae9:	0f 85 3b ff ff ff    	jne    8049a2a <main+0x6e>
 8049aef:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049af4:	85 c0                	test   %eax,%eax
 8049af6:	75 27                	jne    8049b1f <main+0x163>
 8049af8:	8b 43 04             	mov    0x4(%ebx),%eax
 8049afb:	8b 00                	mov    (%eax),%eax
 8049afd:	83 ec 08             	sub    $0x8,%esp
 8049b00:	50                   	push   %eax
 8049b01:	68 0c b3 04 08       	push   $0x804b30c
 8049b06:	e8 75 f5 ff ff       	call   8049080 <printf@plt>
 8049b0b:	83 c4 10             	add    $0x10,%esp
 8049b0e:	8b 43 04             	mov    0x4(%ebx),%eax
 8049b11:	8b 00                	mov    (%eax),%eax
 8049b13:	83 ec 0c             	sub    $0xc,%esp
 8049b16:	50                   	push   %eax
 8049b17:	e8 d1 fb ff ff       	call   80496ed <usage>
 8049b1c:	83 c4 10             	add    $0x10,%esp
 8049b1f:	e8 2c 01 00 00       	call   8049c50 <initialize_bomb>
 8049b24:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049b29:	83 ec 08             	sub    $0x8,%esp
 8049b2c:	50                   	push   %eax
 8049b2d:	68 38 b3 04 08       	push   $0x804b338
 8049b32:	e8 49 f5 ff ff       	call   8049080 <printf@plt>
 8049b37:	83 c4 10             	add    $0x10,%esp
 8049b3a:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049b3f:	83 ec 08             	sub    $0x8,%esp
 8049b42:	50                   	push   %eax
 8049b43:	68 44 b3 04 08       	push   $0x804b344
 8049b48:	e8 33 f5 ff ff       	call   8049080 <printf@plt>
 8049b4d:	83 c4 10             	add    $0x10,%esp
 8049b50:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049b55:	83 ec 0c             	sub    $0xc,%esp
 8049b58:	50                   	push   %eax
 8049b59:	e8 12 f5 ff ff       	call   8049070 <srandom@plt>
 8049b5e:	83 c4 10             	add    $0x10,%esp
 8049b61:	e8 da f6 ff ff       	call   8049240 <random@plt>
 8049b66:	25 f0 0f 00 00       	and    $0xff0,%eax
 8049b6b:	05 00 01 00 00       	add    $0x100,%eax
 8049b70:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049b73:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049b76:	83 ec 08             	sub    $0x8,%esp
 8049b79:	6a 04                	push   $0x4
 8049b7b:	50                   	push   %eax
 8049b7c:	e8 ff f6 ff ff       	call   8049280 <calloc@plt>
 8049b81:	83 c4 10             	add    $0x10,%esp
 8049b84:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b87:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049b8a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049b90:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 8049b97:	eb 28                	jmp    8049bc1 <main+0x205>
 8049b99:	e8 a2 f6 ff ff       	call   8049240 <random@plt>
 8049b9e:	25 f0 00 00 00       	and    $0xf0,%eax
 8049ba3:	89 c1                	mov    %eax,%ecx
 8049ba5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049ba8:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049baf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049bb2:	01 d0                	add    %edx,%eax
 8049bb4:	ba 80 00 00 00       	mov    $0x80,%edx
 8049bb9:	29 ca                	sub    %ecx,%edx
 8049bbb:	89 10                	mov    %edx,(%eax)
 8049bbd:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 8049bc1:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049bc4:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 8049bc7:	7c d0                	jl     8049b99 <main+0x1dd>
 8049bc9:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8049bd0:	eb 29                	jmp    8049bfb <main+0x23f>
 8049bd2:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049bd5:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049bdc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049bdf:	01 d0                	add    %edx,%eax
 8049be1:	8b 10                	mov    (%eax),%edx
 8049be3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049be6:	01 d0                	add    %edx,%eax
 8049be8:	83 ec 08             	sub    $0x8,%esp
 8049beb:	50                   	push   %eax
 8049bec:	ff 75 e4             	push   -0x1c(%ebp)
 8049bef:	e8 f3 fc ff ff       	call   80498e7 <launcher>
 8049bf4:	83 c4 10             	add    $0x10,%esp
 8049bf7:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 8049bfb:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049bfe:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 8049c01:	7c cf                	jl     8049bd2 <main+0x216>
 8049c03:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c08:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049c0b:	59                   	pop    %ecx
 8049c0c:	5b                   	pop    %ebx
 8049c0d:	5d                   	pop    %ebp
 8049c0e:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049c11:	c3                   	ret    

08049c12 <getbuf>:
 8049c12:	55                   	push   %ebp
 8049c13:	89 e5                	mov    %esp,%ebp
 8049c15:	83 ec 38             	sub    $0x38,%esp
 8049c18:	83 ec 0c             	sub    $0xc,%esp
 8049c1b:	8d 45 d1             	lea    -0x2f(%ebp),%eax
 8049c1e:	50                   	push   %eax
 8049c1f:	e8 5e fa ff ff       	call   8049682 <Gets>
 8049c24:	83 c4 10             	add    $0x10,%esp
 8049c27:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c2c:	c9                   	leave  
 8049c2d:	c3                   	ret    

08049c2e <getbufn>:
 8049c2e:	55                   	push   %ebp
 8049c2f:	89 e5                	mov    %esp,%ebp
 8049c31:	81 ec 48 02 00 00    	sub    $0x248,%esp
 8049c37:	83 ec 0c             	sub    $0xc,%esp
 8049c3a:	8d 85 c7 fd ff ff    	lea    -0x239(%ebp),%eax
 8049c40:	50                   	push   %eax
 8049c41:	e8 3c fa ff ff       	call   8049682 <Gets>
 8049c46:	83 c4 10             	add    $0x10,%esp
 8049c49:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c4e:	c9                   	leave  
 8049c4f:	c3                   	ret    

08049c50 <initialize_bomb>:
 8049c50:	55                   	push   %ebp
 8049c51:	89 e5                	mov    %esp,%ebp
 8049c53:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 8049c59:	83 0c 24 00          	orl    $0x0,(%esp)
 8049c5d:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 8049c63:	83 0c 24 00          	orl    $0x0,(%esp)
 8049c67:	81 ec 18 04 00 00    	sub    $0x418,%esp
 8049c6d:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049c73:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049c76:	31 c0                	xor    %eax,%eax
 8049c78:	c7 85 f0 db ff ff 00 	movl   $0x0,-0x2410(%ebp)
 8049c7f:	00 00 00 
 8049c82:	a1 88 d1 04 08       	mov    0x804d188,%eax
 8049c87:	85 c0                	test   %eax,%eax
 8049c89:	74 0d                	je     8049c98 <initialize_bomb+0x48>
 8049c8b:	83 ec 0c             	sub    $0xc,%esp
 8049c8e:	6a ff                	push   $0xffffffff
 8049c90:	e8 a2 0d 00 00       	call   804aa37 <init_timeout>
 8049c95:	83 c4 10             	add    $0x10,%esp
 8049c98:	a1 84 d1 04 08       	mov    0x804d184,%eax
 8049c9d:	85 c0                	test   %eax,%eax
 8049c9f:	0f 84 27 01 00 00    	je     8049dcc <initialize_bomb+0x17c>
 8049ca5:	83 ec 08             	sub    $0x8,%esp
 8049ca8:	68 00 04 00 00       	push   $0x400
 8049cad:	8d 85 f4 db ff ff    	lea    -0x240c(%ebp),%eax
 8049cb3:	50                   	push   %eax
 8049cb4:	e8 77 f4 ff ff       	call   8049130 <gethostname@plt>
 8049cb9:	83 c4 10             	add    $0x10,%esp
 8049cbc:	85 c0                	test   %eax,%eax
 8049cbe:	74 1a                	je     8049cda <initialize_bomb+0x8a>
 8049cc0:	83 ec 0c             	sub    $0xc,%esp
 8049cc3:	68 90 b3 04 08       	push   $0x804b390
 8049cc8:	e8 73 f4 ff ff       	call   8049140 <puts@plt>
 8049ccd:	83 c4 10             	add    $0x10,%esp
 8049cd0:	83 ec 0c             	sub    $0xc,%esp
 8049cd3:	6a 08                	push   $0x8
 8049cd5:	e8 76 f4 ff ff       	call   8049150 <exit@plt>
 8049cda:	c7 85 ec db ff ff 00 	movl   $0x0,-0x2414(%ebp)
 8049ce1:	00 00 00 
 8049ce4:	eb 37                	jmp    8049d1d <initialize_bomb+0xcd>
 8049ce6:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 8049cec:	8b 04 85 c0 dd 04 08 	mov    0x804ddc0(,%eax,4),%eax
 8049cf3:	83 ec 08             	sub    $0x8,%esp
 8049cf6:	8d 95 f4 db ff ff    	lea    -0x240c(%ebp),%edx
 8049cfc:	52                   	push   %edx
 8049cfd:	50                   	push   %eax
 8049cfe:	e8 ad f4 ff ff       	call   80491b0 <strcasecmp@plt>
 8049d03:	83 c4 10             	add    $0x10,%esp
 8049d06:	85 c0                	test   %eax,%eax
 8049d08:	75 0c                	jne    8049d16 <initialize_bomb+0xc6>
 8049d0a:	c7 85 f0 db ff ff 01 	movl   $0x1,-0x2410(%ebp)
 8049d11:	00 00 00 
 8049d14:	eb 18                	jmp    8049d2e <initialize_bomb+0xde>
 8049d16:	83 85 ec db ff ff 01 	addl   $0x1,-0x2414(%ebp)
 8049d1d:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 8049d23:	8b 04 85 c0 dd 04 08 	mov    0x804ddc0(,%eax,4),%eax
 8049d2a:	85 c0                	test   %eax,%eax
 8049d2c:	75 b8                	jne    8049ce6 <initialize_bomb+0x96>
 8049d2e:	83 bd f0 db ff ff 00 	cmpl   $0x0,-0x2410(%ebp)
 8049d35:	75 5e                	jne    8049d95 <initialize_bomb+0x145>
 8049d37:	83 ec 08             	sub    $0x8,%esp
 8049d3a:	8d 85 f4 db ff ff    	lea    -0x240c(%ebp),%eax
 8049d40:	50                   	push   %eax
 8049d41:	68 c8 b3 04 08       	push   $0x804b3c8
 8049d46:	e8 35 f3 ff ff       	call   8049080 <printf@plt>
 8049d4b:	83 c4 10             	add    $0x10,%esp
 8049d4e:	c7 85 ec db ff ff 00 	movl   $0x0,-0x2414(%ebp)
 8049d55:	00 00 00 
 8049d58:	eb 20                	jmp    8049d7a <initialize_bomb+0x12a>
 8049d5a:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 8049d60:	8b 04 85 c0 dd 04 08 	mov    0x804ddc0(,%eax,4),%eax
 8049d67:	83 ec 0c             	sub    $0xc,%esp
 8049d6a:	50                   	push   %eax
 8049d6b:	e8 d0 f3 ff ff       	call   8049140 <puts@plt>
 8049d70:	83 c4 10             	add    $0x10,%esp
 8049d73:	83 85 ec db ff ff 01 	addl   $0x1,-0x2414(%ebp)
 8049d7a:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 8049d80:	8b 04 85 c0 dd 04 08 	mov    0x804ddc0(,%eax,4),%eax
 8049d87:	85 c0                	test   %eax,%eax
 8049d89:	75 cf                	jne    8049d5a <initialize_bomb+0x10a>
 8049d8b:	83 ec 0c             	sub    $0xc,%esp
 8049d8e:	6a 08                	push   $0x8
 8049d90:	e8 bb f3 ff ff       	call   8049150 <exit@plt>
 8049d95:	83 ec 0c             	sub    $0xc,%esp
 8049d98:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049d9e:	50                   	push   %eax
 8049d9f:	e8 d2 0c 00 00       	call   804aa76 <init_driver>
 8049da4:	83 c4 10             	add    $0x10,%esp
 8049da7:	85 c0                	test   %eax,%eax
 8049da9:	79 21                	jns    8049dcc <initialize_bomb+0x17c>
 8049dab:	83 ec 08             	sub    $0x8,%esp
 8049dae:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049db4:	50                   	push   %eax
 8049db5:	68 03 b4 04 08       	push   $0x804b403
 8049dba:	e8 c1 f2 ff ff       	call   8049080 <printf@plt>
 8049dbf:	83 c4 10             	add    $0x10,%esp
 8049dc2:	83 ec 0c             	sub    $0xc,%esp
 8049dc5:	6a 08                	push   $0x8
 8049dc7:	e8 84 f3 ff ff       	call   8049150 <exit@plt>
 8049dcc:	90                   	nop
 8049dcd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049dd0:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
 8049dd7:	74 05                	je     8049dde <initialize_bomb+0x18e>
 8049dd9:	e8 02 f3 ff ff       	call   80490e0 <__stack_chk_fail@plt>
 8049dde:	c9                   	leave  
 8049ddf:	c3                   	ret    

08049de0 <validate>:
 8049de0:	55                   	push   %ebp
 8049de1:	89 e5                	mov    %esp,%ebp
 8049de3:	8d 84 24 00 c0 ff ff 	lea    -0x4000(%esp),%eax
 8049dea:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 8049df0:	83 0c 24 00          	orl    $0x0,(%esp)
 8049df4:	39 c4                	cmp    %eax,%esp
 8049df6:	75 f2                	jne    8049dea <validate+0xa>
 8049df8:	83 ec 18             	sub    $0x18,%esp
 8049dfb:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049e01:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049e04:	31 c0                	xor    %eax,%eax
 8049e06:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049e0b:	85 c0                	test   %eax,%eax
 8049e0d:	75 15                	jne    8049e24 <validate+0x44>
 8049e0f:	83 ec 0c             	sub    $0xc,%esp
 8049e12:	68 18 b4 04 08       	push   $0x804b418
 8049e17:	e8 24 f3 ff ff       	call   8049140 <puts@plt>
 8049e1c:	83 c4 10             	add    $0x10,%esp
 8049e1f:	e9 3c 01 00 00       	jmp    8049f60 <validate+0x180>
 8049e24:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049e28:	78 06                	js     8049e30 <validate+0x50>
 8049e2a:	83 7d 08 04          	cmpl   $0x4,0x8(%ebp)
 8049e2e:	7e 15                	jle    8049e45 <validate+0x65>
 8049e30:	83 ec 0c             	sub    $0xc,%esp
 8049e33:	68 44 b4 04 08       	push   $0x804b444
 8049e38:	e8 03 f3 ff ff       	call   8049140 <puts@plt>
 8049e3d:	83 c4 10             	add    $0x10,%esp
 8049e40:	e9 1b 01 00 00       	jmp    8049f60 <validate+0x180>
 8049e45:	c7 05 94 d1 04 08 01 	movl   $0x1,0x804d194
 8049e4c:	00 00 00 
 8049e4f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e52:	8b 04 85 f8 d0 04 08 	mov    0x804d0f8(,%eax,4),%eax
 8049e59:	8d 50 ff             	lea    -0x1(%eax),%edx
 8049e5c:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e5f:	89 14 85 f8 d0 04 08 	mov    %edx,0x804d0f8(,%eax,4)
 8049e66:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e69:	8b 04 85 f8 d0 04 08 	mov    0x804d0f8(,%eax,4),%eax
 8049e70:	85 c0                	test   %eax,%eax
 8049e72:	7e 15                	jle    8049e89 <validate+0xa9>
 8049e74:	83 ec 0c             	sub    $0xc,%esp
 8049e77:	68 6a b4 04 08       	push   $0x804b46a
 8049e7c:	e8 bf f2 ff ff       	call   8049140 <puts@plt>
 8049e81:	83 c4 10             	add    $0x10,%esp
 8049e84:	e9 d7 00 00 00       	jmp    8049f60 <validate+0x180>
 8049e89:	83 ec 0c             	sub    $0xc,%esp
 8049e8c:	68 75 b4 04 08       	push   $0x804b475
 8049e91:	e8 aa f2 ff ff       	call   8049140 <puts@plt>
 8049e96:	83 c4 10             	add    $0x10,%esp
 8049e99:	a1 84 d1 04 08       	mov    0x804d184,%eax
 8049e9e:	85 c0                	test   %eax,%eax
 8049ea0:	0f 84 aa 00 00 00    	je     8049f50 <validate+0x170>
 8049ea6:	83 ec 0c             	sub    $0xc,%esp
 8049ea9:	68 a0 d1 04 08       	push   $0x804d1a0
 8049eae:	e8 cd f2 ff ff       	call   8049180 <strlen@plt>
 8049eb3:	83 c4 10             	add    $0x10,%esp
 8049eb6:	83 c0 20             	add    $0x20,%eax
 8049eb9:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049ebe:	76 15                	jbe    8049ed5 <validate+0xf5>
 8049ec0:	83 ec 0c             	sub    $0xc,%esp
 8049ec3:	68 7c b4 04 08       	push   $0x804b47c
 8049ec8:	e8 73 f2 ff ff       	call   8049140 <puts@plt>
 8049ecd:	83 c4 10             	add    $0x10,%esp
 8049ed0:	e9 8b 00 00 00       	jmp    8049f60 <validate+0x180>
 8049ed5:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049eda:	83 ec 0c             	sub    $0xc,%esp
 8049edd:	68 a0 d1 04 08       	push   $0x804d1a0
 8049ee2:	50                   	push   %eax
 8049ee3:	ff 75 08             	push   0x8(%ebp)
 8049ee6:	68 b3 b4 04 08       	push   $0x804b4b3
 8049eeb:	8d 85 f4 bf ff ff    	lea    -0x400c(%ebp),%eax
 8049ef1:	50                   	push   %eax
 8049ef2:	e8 19 f3 ff ff       	call   8049210 <sprintf@plt>
 8049ef7:	83 c4 20             	add    $0x20,%esp
 8049efa:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049eff:	8d 95 f4 df ff ff    	lea    -0x200c(%ebp),%edx
 8049f05:	52                   	push   %edx
 8049f06:	6a 00                	push   $0x0
 8049f08:	8d 95 f4 bf ff ff    	lea    -0x400c(%ebp),%edx
 8049f0e:	52                   	push   %edx
 8049f0f:	50                   	push   %eax
 8049f10:	e8 36 0d 00 00       	call   804ac4b <driver_post>
 8049f15:	83 c4 10             	add    $0x10,%esp
 8049f18:	89 85 f0 bf ff ff    	mov    %eax,-0x4010(%ebp)
 8049f1e:	83 bd f0 bf ff ff 00 	cmpl   $0x0,-0x4010(%ebp)
 8049f25:	75 12                	jne    8049f39 <validate+0x159>
 8049f27:	83 ec 0c             	sub    $0xc,%esp
 8049f2a:	68 bc b4 04 08       	push   $0x804b4bc
 8049f2f:	e8 0c f2 ff ff       	call   8049140 <puts@plt>
 8049f34:	83 c4 10             	add    $0x10,%esp
 8049f37:	eb 17                	jmp    8049f50 <validate+0x170>
 8049f39:	83 ec 08             	sub    $0x8,%esp
 8049f3c:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049f42:	50                   	push   %eax
 8049f43:	68 ec b4 04 08       	push   $0x804b4ec
 8049f48:	e8 33 f1 ff ff       	call   8049080 <printf@plt>
 8049f4d:	83 c4 10             	add    $0x10,%esp
 8049f50:	83 ec 0c             	sub    $0xc,%esp
 8049f53:	68 2a b5 04 08       	push   $0x804b52a
 8049f58:	e8 e3 f1 ff ff       	call   8049140 <puts@plt>
 8049f5d:	83 c4 10             	add    $0x10,%esp
 8049f60:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049f63:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
 8049f6a:	74 05                	je     8049f71 <validate+0x191>
 8049f6c:	e8 6f f1 ff ff       	call   80490e0 <__stack_chk_fail@plt>
 8049f71:	c9                   	leave  
 8049f72:	c3                   	ret    

08049f73 <sigalrm_handler>:
 8049f73:	55                   	push   %ebp
 8049f74:	89 e5                	mov    %esp,%ebp
 8049f76:	83 ec 08             	sub    $0x8,%esp
 8049f79:	83 ec 08             	sub    $0x8,%esp
 8049f7c:	6a 02                	push   $0x2
 8049f7e:	68 34 b5 04 08       	push   $0x804b534
 8049f83:	e8 f8 f0 ff ff       	call   8049080 <printf@plt>
 8049f88:	83 c4 10             	add    $0x10,%esp
 8049f8b:	83 ec 0c             	sub    $0xc,%esp
 8049f8e:	6a 01                	push   $0x1
 8049f90:	e8 bb f1 ff ff       	call   8049150 <exit@plt>

08049f95 <rio_readinitb>:
 8049f95:	55                   	push   %ebp
 8049f96:	89 e5                	mov    %esp,%ebp
 8049f98:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f9b:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049f9e:	89 10                	mov    %edx,(%eax)
 8049fa0:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fa3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049faa:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fad:	8d 50 0c             	lea    0xc(%eax),%edx
 8049fb0:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fb3:	89 50 08             	mov    %edx,0x8(%eax)
 8049fb6:	90                   	nop
 8049fb7:	5d                   	pop    %ebp
 8049fb8:	c3                   	ret    

08049fb9 <rio_read>:
 8049fb9:	55                   	push   %ebp
 8049fba:	89 e5                	mov    %esp,%ebp
 8049fbc:	83 ec 18             	sub    $0x18,%esp
 8049fbf:	eb 5d                	jmp    804a01e <rio_read+0x65>
 8049fc1:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fc4:	8d 50 0c             	lea    0xc(%eax),%edx
 8049fc7:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fca:	8b 00                	mov    (%eax),%eax
 8049fcc:	83 ec 04             	sub    $0x4,%esp
 8049fcf:	68 00 20 00 00       	push   $0x2000
 8049fd4:	52                   	push   %edx
 8049fd5:	50                   	push   %eax
 8049fd6:	e8 85 f0 ff ff       	call   8049060 <read@plt>
 8049fdb:	83 c4 10             	add    $0x10,%esp
 8049fde:	8b 55 08             	mov    0x8(%ebp),%edx
 8049fe1:	89 42 04             	mov    %eax,0x4(%edx)
 8049fe4:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fe7:	8b 40 04             	mov    0x4(%eax),%eax
 8049fea:	85 c0                	test   %eax,%eax
 8049fec:	79 13                	jns    804a001 <rio_read+0x48>
 8049fee:	e8 ed f1 ff ff       	call   80491e0 <__errno_location@plt>
 8049ff3:	8b 00                	mov    (%eax),%eax
 8049ff5:	83 f8 04             	cmp    $0x4,%eax
 8049ff8:	74 24                	je     804a01e <rio_read+0x65>
 8049ffa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049fff:	eb 7f                	jmp    804a080 <rio_read+0xc7>
 804a001:	8b 45 08             	mov    0x8(%ebp),%eax
 804a004:	8b 40 04             	mov    0x4(%eax),%eax
 804a007:	85 c0                	test   %eax,%eax
 804a009:	75 07                	jne    804a012 <rio_read+0x59>
 804a00b:	b8 00 00 00 00       	mov    $0x0,%eax
 804a010:	eb 6e                	jmp    804a080 <rio_read+0xc7>
 804a012:	8b 45 08             	mov    0x8(%ebp),%eax
 804a015:	8d 50 0c             	lea    0xc(%eax),%edx
 804a018:	8b 45 08             	mov    0x8(%ebp),%eax
 804a01b:	89 50 08             	mov    %edx,0x8(%eax)
 804a01e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a021:	8b 40 04             	mov    0x4(%eax),%eax
 804a024:	85 c0                	test   %eax,%eax
 804a026:	7e 99                	jle    8049fc1 <rio_read+0x8>
 804a028:	8b 45 10             	mov    0x10(%ebp),%eax
 804a02b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a02e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a031:	8b 40 04             	mov    0x4(%eax),%eax
 804a034:	39 45 10             	cmp    %eax,0x10(%ebp)
 804a037:	76 09                	jbe    804a042 <rio_read+0x89>
 804a039:	8b 45 08             	mov    0x8(%ebp),%eax
 804a03c:	8b 40 04             	mov    0x4(%eax),%eax
 804a03f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a042:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a045:	8b 45 08             	mov    0x8(%ebp),%eax
 804a048:	8b 40 08             	mov    0x8(%eax),%eax
 804a04b:	83 ec 04             	sub    $0x4,%esp
 804a04e:	52                   	push   %edx
 804a04f:	50                   	push   %eax
 804a050:	ff 75 0c             	push   0xc(%ebp)
 804a053:	e8 58 f0 ff ff       	call   80490b0 <memcpy@plt>
 804a058:	83 c4 10             	add    $0x10,%esp
 804a05b:	8b 45 08             	mov    0x8(%ebp),%eax
 804a05e:	8b 50 08             	mov    0x8(%eax),%edx
 804a061:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a064:	01 c2                	add    %eax,%edx
 804a066:	8b 45 08             	mov    0x8(%ebp),%eax
 804a069:	89 50 08             	mov    %edx,0x8(%eax)
 804a06c:	8b 45 08             	mov    0x8(%ebp),%eax
 804a06f:	8b 40 04             	mov    0x4(%eax),%eax
 804a072:	2b 45 f4             	sub    -0xc(%ebp),%eax
 804a075:	89 c2                	mov    %eax,%edx
 804a077:	8b 45 08             	mov    0x8(%ebp),%eax
 804a07a:	89 50 04             	mov    %edx,0x4(%eax)
 804a07d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a080:	c9                   	leave  
 804a081:	c3                   	ret    

0804a082 <rio_readlineb>:
 804a082:	55                   	push   %ebp
 804a083:	89 e5                	mov    %esp,%ebp
 804a085:	83 ec 38             	sub    $0x38,%esp
 804a088:	8b 45 08             	mov    0x8(%ebp),%eax
 804a08b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a08e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a091:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804a094:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a09a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a09d:	31 c0                	xor    %eax,%eax
 804a09f:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804a0a2:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a0a5:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 804a0ac:	eb 54                	jmp    804a102 <rio_readlineb+0x80>
 804a0ae:	83 ec 04             	sub    $0x4,%esp
 804a0b1:	6a 01                	push   $0x1
 804a0b3:	8d 45 e7             	lea    -0x19(%ebp),%eax
 804a0b6:	50                   	push   %eax
 804a0b7:	ff 75 d4             	push   -0x2c(%ebp)
 804a0ba:	e8 fa fe ff ff       	call   8049fb9 <rio_read>
 804a0bf:	83 c4 10             	add    $0x10,%esp
 804a0c2:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a0c5:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
 804a0c9:	75 19                	jne    804a0e4 <rio_readlineb+0x62>
 804a0cb:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a0ce:	8d 50 01             	lea    0x1(%eax),%edx
 804a0d1:	89 55 ec             	mov    %edx,-0x14(%ebp)
 804a0d4:	0f b6 55 e7          	movzbl -0x19(%ebp),%edx
 804a0d8:	88 10                	mov    %dl,(%eax)
 804a0da:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 804a0de:	3c 0a                	cmp    $0xa,%al
 804a0e0:	75 1c                	jne    804a0fe <rio_readlineb+0x7c>
 804a0e2:	eb 29                	jmp    804a10d <rio_readlineb+0x8b>
 804a0e4:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a0e8:	75 0d                	jne    804a0f7 <rio_readlineb+0x75>
 804a0ea:	83 7d e8 01          	cmpl   $0x1,-0x18(%ebp)
 804a0ee:	75 1c                	jne    804a10c <rio_readlineb+0x8a>
 804a0f0:	b8 00 00 00 00       	mov    $0x0,%eax
 804a0f5:	eb 1f                	jmp    804a116 <rio_readlineb+0x94>
 804a0f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a0fc:	eb 18                	jmp    804a116 <rio_readlineb+0x94>
 804a0fe:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 804a102:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a105:	39 45 10             	cmp    %eax,0x10(%ebp)
 804a108:	77 a4                	ja     804a0ae <rio_readlineb+0x2c>
 804a10a:	eb 01                	jmp    804a10d <rio_readlineb+0x8b>
 804a10c:	90                   	nop
 804a10d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a110:	c6 00 00             	movb   $0x0,(%eax)
 804a113:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a116:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a119:	65 2b 15 14 00 00 00 	sub    %gs:0x14,%edx
 804a120:	74 05                	je     804a127 <rio_readlineb+0xa5>
 804a122:	e8 b9 ef ff ff       	call   80490e0 <__stack_chk_fail@plt>
 804a127:	c9                   	leave  
 804a128:	c3                   	ret    

0804a129 <rio_writen>:
 804a129:	55                   	push   %ebp
 804a12a:	89 e5                	mov    %esp,%ebp
 804a12c:	83 ec 18             	sub    $0x18,%esp
 804a12f:	8b 45 10             	mov    0x10(%ebp),%eax
 804a132:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a135:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a138:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a13b:	eb 45                	jmp    804a182 <rio_writen+0x59>
 804a13d:	83 ec 04             	sub    $0x4,%esp
 804a140:	ff 75 ec             	push   -0x14(%ebp)
 804a143:	ff 75 f4             	push   -0xc(%ebp)
 804a146:	ff 75 08             	push   0x8(%ebp)
 804a149:	e8 42 f0 ff ff       	call   8049190 <write@plt>
 804a14e:	83 c4 10             	add    $0x10,%esp
 804a151:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a154:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a158:	7f 1c                	jg     804a176 <rio_writen+0x4d>
 804a15a:	e8 81 f0 ff ff       	call   80491e0 <__errno_location@plt>
 804a15f:	8b 00                	mov    (%eax),%eax
 804a161:	83 f8 04             	cmp    $0x4,%eax
 804a164:	75 09                	jne    804a16f <rio_writen+0x46>
 804a166:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804a16d:	eb 07                	jmp    804a176 <rio_writen+0x4d>
 804a16f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a174:	eb 15                	jmp    804a18b <rio_writen+0x62>
 804a176:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a179:	29 45 ec             	sub    %eax,-0x14(%ebp)
 804a17c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a17f:	01 45 f4             	add    %eax,-0xc(%ebp)
 804a182:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804a186:	75 b5                	jne    804a13d <rio_writen+0x14>
 804a188:	8b 45 10             	mov    0x10(%ebp),%eax
 804a18b:	c9                   	leave  
 804a18c:	c3                   	ret    

0804a18d <urlencode>:
 804a18d:	55                   	push   %ebp
 804a18e:	89 e5                	mov    %esp,%ebp
 804a190:	83 ec 28             	sub    $0x28,%esp
 804a193:	8b 45 08             	mov    0x8(%ebp),%eax
 804a196:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a199:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a19c:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804a19f:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a1a5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a1a8:	31 c0                	xor    %eax,%eax
 804a1aa:	83 ec 0c             	sub    $0xc,%esp
 804a1ad:	ff 75 e4             	push   -0x1c(%ebp)
 804a1b0:	e8 cb ef ff ff       	call   8049180 <strlen@plt>
 804a1b5:	83 c4 10             	add    $0x10,%esp
 804a1b8:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a1bb:	e9 0e 01 00 00       	jmp    804a2ce <urlencode+0x141>
 804a1c0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1c3:	0f b6 00             	movzbl (%eax),%eax
 804a1c6:	3c 2a                	cmp    $0x2a,%al
 804a1c8:	74 5a                	je     804a224 <urlencode+0x97>
 804a1ca:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1cd:	0f b6 00             	movzbl (%eax),%eax
 804a1d0:	3c 2d                	cmp    $0x2d,%al
 804a1d2:	74 50                	je     804a224 <urlencode+0x97>
 804a1d4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1d7:	0f b6 00             	movzbl (%eax),%eax
 804a1da:	3c 2e                	cmp    $0x2e,%al
 804a1dc:	74 46                	je     804a224 <urlencode+0x97>
 804a1de:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1e1:	0f b6 00             	movzbl (%eax),%eax
 804a1e4:	3c 5f                	cmp    $0x5f,%al
 804a1e6:	74 3c                	je     804a224 <urlencode+0x97>
 804a1e8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1eb:	0f b6 00             	movzbl (%eax),%eax
 804a1ee:	3c 2f                	cmp    $0x2f,%al
 804a1f0:	76 0a                	jbe    804a1fc <urlencode+0x6f>
 804a1f2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1f5:	0f b6 00             	movzbl (%eax),%eax
 804a1f8:	3c 39                	cmp    $0x39,%al
 804a1fa:	76 28                	jbe    804a224 <urlencode+0x97>
 804a1fc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a1ff:	0f b6 00             	movzbl (%eax),%eax
 804a202:	3c 40                	cmp    $0x40,%al
 804a204:	76 0a                	jbe    804a210 <urlencode+0x83>
 804a206:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a209:	0f b6 00             	movzbl (%eax),%eax
 804a20c:	3c 5a                	cmp    $0x5a,%al
 804a20e:	76 14                	jbe    804a224 <urlencode+0x97>
 804a210:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a213:	0f b6 00             	movzbl (%eax),%eax
 804a216:	3c 60                	cmp    $0x60,%al
 804a218:	76 20                	jbe    804a23a <urlencode+0xad>
 804a21a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a21d:	0f b6 00             	movzbl (%eax),%eax
 804a220:	3c 7a                	cmp    $0x7a,%al
 804a222:	77 16                	ja     804a23a <urlencode+0xad>
 804a224:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a227:	8d 50 01             	lea    0x1(%eax),%edx
 804a22a:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804a22d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804a230:	0f b6 12             	movzbl (%edx),%edx
 804a233:	88 10                	mov    %dl,(%eax)
 804a235:	e9 90 00 00 00       	jmp    804a2ca <urlencode+0x13d>
 804a23a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a23d:	0f b6 00             	movzbl (%eax),%eax
 804a240:	3c 20                	cmp    $0x20,%al
 804a242:	75 0e                	jne    804a252 <urlencode+0xc5>
 804a244:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a247:	8d 50 01             	lea    0x1(%eax),%edx
 804a24a:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804a24d:	c6 00 2b             	movb   $0x2b,(%eax)
 804a250:	eb 78                	jmp    804a2ca <urlencode+0x13d>
 804a252:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a255:	0f b6 00             	movzbl (%eax),%eax
 804a258:	3c 1f                	cmp    $0x1f,%al
 804a25a:	76 0a                	jbe    804a266 <urlencode+0xd9>
 804a25c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a25f:	0f b6 00             	movzbl (%eax),%eax
 804a262:	84 c0                	test   %al,%al
 804a264:	79 0a                	jns    804a270 <urlencode+0xe3>
 804a266:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a269:	0f b6 00             	movzbl (%eax),%eax
 804a26c:	3c 09                	cmp    $0x9,%al
 804a26e:	75 53                	jne    804a2c3 <urlencode+0x136>
 804a270:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a273:	0f b6 00             	movzbl (%eax),%eax
 804a276:	0f b6 c0             	movzbl %al,%eax
 804a279:	83 ec 04             	sub    $0x4,%esp
 804a27c:	50                   	push   %eax
 804a27d:	68 58 b5 04 08       	push   $0x804b558
 804a282:	8d 45 ec             	lea    -0x14(%ebp),%eax
 804a285:	50                   	push   %eax
 804a286:	e8 85 ef ff ff       	call   8049210 <sprintf@plt>
 804a28b:	83 c4 10             	add    $0x10,%esp
 804a28e:	0f b6 4d ec          	movzbl -0x14(%ebp),%ecx
 804a292:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a295:	8d 50 01             	lea    0x1(%eax),%edx
 804a298:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804a29b:	89 ca                	mov    %ecx,%edx
 804a29d:	88 10                	mov    %dl,(%eax)
 804a29f:	0f b6 4d ed          	movzbl -0x13(%ebp),%ecx
 804a2a3:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a2a6:	8d 50 01             	lea    0x1(%eax),%edx
 804a2a9:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804a2ac:	89 ca                	mov    %ecx,%edx
 804a2ae:	88 10                	mov    %dl,(%eax)
 804a2b0:	0f b6 4d ee          	movzbl -0x12(%ebp),%ecx
 804a2b4:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a2b7:	8d 50 01             	lea    0x1(%eax),%edx
 804a2ba:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804a2bd:	89 ca                	mov    %ecx,%edx
 804a2bf:	88 10                	mov    %dl,(%eax)
 804a2c1:	eb 07                	jmp    804a2ca <urlencode+0x13d>
 804a2c3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a2c8:	eb 1a                	jmp    804a2e4 <urlencode+0x157>
 804a2ca:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 804a2ce:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a2d1:	8d 50 ff             	lea    -0x1(%eax),%edx
 804a2d4:	89 55 e8             	mov    %edx,-0x18(%ebp)
 804a2d7:	85 c0                	test   %eax,%eax
 804a2d9:	0f 85 e1 fe ff ff    	jne    804a1c0 <urlencode+0x33>
 804a2df:	b8 00 00 00 00       	mov    $0x0,%eax
 804a2e4:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a2e7:	65 2b 15 14 00 00 00 	sub    %gs:0x14,%edx
 804a2ee:	74 05                	je     804a2f5 <urlencode+0x168>
 804a2f0:	e8 eb ed ff ff       	call   80490e0 <__stack_chk_fail@plt>
 804a2f5:	c9                   	leave  
 804a2f6:	c3                   	ret    

0804a2f7 <submitr>:
 804a2f7:	55                   	push   %ebp
 804a2f8:	89 e5                	mov    %esp,%ebp
 804a2fa:	57                   	push   %edi
 804a2fb:	56                   	push   %esi
 804a2fc:	53                   	push   %ebx
 804a2fd:	8d 84 24 00 60 ff ff 	lea    -0xa000(%esp),%eax
 804a304:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 804a30a:	83 0c 24 00          	orl    $0x0,(%esp)
 804a30e:	39 c4                	cmp    %eax,%esp
 804a310:	75 f2                	jne    804a304 <submitr+0xd>
 804a312:	83 ec 6c             	sub    $0x6c,%esp
 804a315:	8b 45 08             	mov    0x8(%ebp),%eax
 804a318:	89 85 a4 5f ff ff    	mov    %eax,-0xa05c(%ebp)
 804a31e:	8b 45 10             	mov    0x10(%ebp),%eax
 804a321:	89 85 a0 5f ff ff    	mov    %eax,-0xa060(%ebp)
 804a327:	8b 45 14             	mov    0x14(%ebp),%eax
 804a32a:	89 85 9c 5f ff ff    	mov    %eax,-0xa064(%ebp)
 804a330:	8b 45 18             	mov    0x18(%ebp),%eax
 804a333:	89 85 98 5f ff ff    	mov    %eax,-0xa068(%ebp)
 804a339:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804a33c:	89 85 94 5f ff ff    	mov    %eax,-0xa06c(%ebp)
 804a342:	8b 45 20             	mov    0x20(%ebp),%eax
 804a345:	89 85 90 5f ff ff    	mov    %eax,-0xa070(%ebp)
 804a34b:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a351:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a354:	31 c0                	xor    %eax,%eax
 804a356:	c7 85 b4 5f ff ff 00 	movl   $0x0,-0xa04c(%ebp)
 804a35d:	00 00 00 
 804a360:	83 ec 04             	sub    $0x4,%esp
 804a363:	6a 00                	push   $0x0
 804a365:	6a 01                	push   $0x1
 804a367:	6a 02                	push   $0x2
 804a369:	e8 b2 ee ff ff       	call   8049220 <socket@plt>
 804a36e:	83 c4 10             	add    $0x10,%esp
 804a371:	89 85 b8 5f ff ff    	mov    %eax,-0xa048(%ebp)
 804a377:	83 bd b8 5f ff ff 00 	cmpl   $0x0,-0xa048(%ebp)
 804a37e:	79 54                	jns    804a3d4 <submitr+0xdd>
 804a380:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a386:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a38c:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a393:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a39a:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a3a1:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a3a8:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a3af:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 804a3b6:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804a3bd:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804a3c4:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804a3ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a3cf:	e9 4a 06 00 00       	jmp    804aa1e <submitr+0x727>
 804a3d4:	83 ec 0c             	sub    $0xc,%esp
 804a3d7:	ff b5 a4 5f ff ff    	push   -0xa05c(%ebp)
 804a3dd:	e8 6e ee ff ff       	call   8049250 <gethostbyname@plt>
 804a3e2:	83 c4 10             	add    $0x10,%esp
 804a3e5:	89 85 bc 5f ff ff    	mov    %eax,-0xa044(%ebp)
 804a3eb:	83 bd bc 5f ff ff 00 	cmpl   $0x0,-0xa044(%ebp)
 804a3f2:	75 37                	jne    804a42b <submitr+0x134>
 804a3f4:	83 ec 04             	sub    $0x4,%esp
 804a3f7:	ff b5 a4 5f ff ff    	push   -0xa05c(%ebp)
 804a3fd:	68 60 b5 04 08       	push   $0x804b560
 804a402:	ff b5 90 5f ff ff    	push   -0xa070(%ebp)
 804a408:	e8 03 ee ff ff       	call   8049210 <sprintf@plt>
 804a40d:	83 c4 10             	add    $0x10,%esp
 804a410:	83 ec 0c             	sub    $0xc,%esp
 804a413:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a419:	e8 52 ee ff ff       	call   8049270 <close@plt>
 804a41e:	83 c4 10             	add    $0x10,%esp
 804a421:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a426:	e9 f3 05 00 00       	jmp    804aa1e <submitr+0x727>
 804a42b:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 804a431:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a437:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a43e:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a445:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804a44c:	66 c7 85 c8 5f ff ff 	movw   $0x2,-0xa038(%ebp)
 804a453:	02 00 
 804a455:	8b 85 bc 5f ff ff    	mov    -0xa044(%ebp),%eax
 804a45b:	8b 40 0c             	mov    0xc(%eax),%eax
 804a45e:	89 c2                	mov    %eax,%edx
 804a460:	8b 85 bc 5f ff ff    	mov    -0xa044(%ebp),%eax
 804a466:	8b 40 10             	mov    0x10(%eax),%eax
 804a469:	8b 00                	mov    (%eax),%eax
 804a46b:	83 ec 04             	sub    $0x4,%esp
 804a46e:	52                   	push   %edx
 804a46f:	50                   	push   %eax
 804a470:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 804a476:	83 c0 04             	add    $0x4,%eax
 804a479:	50                   	push   %eax
 804a47a:	e8 11 ec ff ff       	call   8049090 <memmove@plt>
 804a47f:	83 c4 10             	add    $0x10,%esp
 804a482:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a485:	0f b7 c0             	movzwl %ax,%eax
 804a488:	83 ec 0c             	sub    $0xc,%esp
 804a48b:	50                   	push   %eax
 804a48c:	e8 5f ec ff ff       	call   80490f0 <htons@plt>
 804a491:	83 c4 10             	add    $0x10,%esp
 804a494:	66 89 85 ca 5f ff ff 	mov    %ax,-0xa036(%ebp)
 804a49b:	83 ec 04             	sub    $0x4,%esp
 804a49e:	6a 10                	push   $0x10
 804a4a0:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 804a4a6:	50                   	push   %eax
 804a4a7:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a4ad:	e8 ae ed ff ff       	call   8049260 <connect@plt>
 804a4b2:	83 c4 10             	add    $0x10,%esp
 804a4b5:	85 c0                	test   %eax,%eax
 804a4b7:	79 37                	jns    804a4f0 <submitr+0x1f9>
 804a4b9:	83 ec 04             	sub    $0x4,%esp
 804a4bc:	ff b5 a4 5f ff ff    	push   -0xa05c(%ebp)
 804a4c2:	68 8c b5 04 08       	push   $0x804b58c
 804a4c7:	ff b5 90 5f ff ff    	push   -0xa070(%ebp)
 804a4cd:	e8 3e ed ff ff       	call   8049210 <sprintf@plt>
 804a4d2:	83 c4 10             	add    $0x10,%esp
 804a4d5:	83 ec 0c             	sub    $0xc,%esp
 804a4d8:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a4de:	e8 8d ed ff ff       	call   8049270 <close@plt>
 804a4e3:	83 c4 10             	add    $0x10,%esp
 804a4e6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a4eb:	e9 2e 05 00 00       	jmp    804aa1e <submitr+0x727>
 804a4f0:	83 ec 0c             	sub    $0xc,%esp
 804a4f3:	ff b5 94 5f ff ff    	push   -0xa06c(%ebp)
 804a4f9:	e8 82 ec ff ff       	call   8049180 <strlen@plt>
 804a4fe:	83 c4 10             	add    $0x10,%esp
 804a501:	89 85 c0 5f ff ff    	mov    %eax,-0xa040(%ebp)
 804a507:	83 ec 0c             	sub    $0xc,%esp
 804a50a:	ff b5 a0 5f ff ff    	push   -0xa060(%ebp)
 804a510:	e8 6b ec ff ff       	call   8049180 <strlen@plt>
 804a515:	83 c4 10             	add    $0x10,%esp
 804a518:	89 c3                	mov    %eax,%ebx
 804a51a:	83 ec 0c             	sub    $0xc,%esp
 804a51d:	ff b5 9c 5f ff ff    	push   -0xa064(%ebp)
 804a523:	e8 58 ec ff ff       	call   8049180 <strlen@plt>
 804a528:	83 c4 10             	add    $0x10,%esp
 804a52b:	01 c3                	add    %eax,%ebx
 804a52d:	83 ec 0c             	sub    $0xc,%esp
 804a530:	ff b5 98 5f ff ff    	push   -0xa068(%ebp)
 804a536:	e8 45 ec ff ff       	call   8049180 <strlen@plt>
 804a53b:	83 c4 10             	add    $0x10,%esp
 804a53e:	8d 0c 03             	lea    (%ebx,%eax,1),%ecx
 804a541:	8b 95 c0 5f ff ff    	mov    -0xa040(%ebp),%edx
 804a547:	89 d0                	mov    %edx,%eax
 804a549:	01 c0                	add    %eax,%eax
 804a54b:	01 d0                	add    %edx,%eax
 804a54d:	01 c8                	add    %ecx,%eax
 804a54f:	83 e8 80             	sub    $0xffffff80,%eax
 804a552:	89 85 c4 5f ff ff    	mov    %eax,-0xa03c(%ebp)
 804a558:	81 bd c4 5f ff ff 00 	cmpl   $0x2000,-0xa03c(%ebp)
 804a55f:	20 00 00 
 804a562:	0f 86 82 00 00 00    	jbe    804a5ea <submitr+0x2f3>
 804a568:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a56e:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a574:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 804a57b:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 804a582:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 804a589:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 804a590:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 804a597:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 804a59e:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 804a5a5:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804a5ac:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 804a5b3:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 804a5ba:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 804a5c1:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 804a5c8:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 804a5cf:	83 ec 0c             	sub    $0xc,%esp
 804a5d2:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a5d8:	e8 93 ec ff ff       	call   8049270 <close@plt>
 804a5dd:	83 c4 10             	add    $0x10,%esp
 804a5e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a5e5:	e9 34 04 00 00       	jmp    804aa1e <submitr+0x727>
 804a5ea:	8d 85 e4 9f ff ff    	lea    -0x601c(%ebp),%eax
 804a5f0:	89 c3                	mov    %eax,%ebx
 804a5f2:	b8 00 00 00 00       	mov    $0x0,%eax
 804a5f7:	ba 00 08 00 00       	mov    $0x800,%edx
 804a5fc:	89 df                	mov    %ebx,%edi
 804a5fe:	89 d1                	mov    %edx,%ecx
 804a600:	f3 ab                	rep stos %eax,%es:(%edi)
 804a602:	83 ec 08             	sub    $0x8,%esp
 804a605:	8d 85 e4 9f ff ff    	lea    -0x601c(%ebp),%eax
 804a60b:	50                   	push   %eax
 804a60c:	ff b5 94 5f ff ff    	push   -0xa06c(%ebp)
 804a612:	e8 76 fb ff ff       	call   804a18d <urlencode>
 804a617:	83 c4 10             	add    $0x10,%esp
 804a61a:	85 c0                	test   %eax,%eax
 804a61c:	79 53                	jns    804a671 <submitr+0x37a>
 804a61e:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a624:	89 c1                	mov    %eax,%ecx
 804a626:	b8 b4 b5 04 08       	mov    $0x804b5b4,%eax
 804a62b:	ba 43 00 00 00       	mov    $0x43,%edx
 804a630:	8b 18                	mov    (%eax),%ebx
 804a632:	89 19                	mov    %ebx,(%ecx)
 804a634:	8b 5c 10 fc          	mov    -0x4(%eax,%edx,1),%ebx
 804a638:	89 5c 11 fc          	mov    %ebx,-0x4(%ecx,%edx,1)
 804a63c:	8d 59 04             	lea    0x4(%ecx),%ebx
 804a63f:	83 e3 fc             	and    $0xfffffffc,%ebx
 804a642:	29 d9                	sub    %ebx,%ecx
 804a644:	29 c8                	sub    %ecx,%eax
 804a646:	01 ca                	add    %ecx,%edx
 804a648:	83 e2 fc             	and    $0xfffffffc,%edx
 804a64b:	c1 ea 02             	shr    $0x2,%edx
 804a64e:	89 df                	mov    %ebx,%edi
 804a650:	89 c6                	mov    %eax,%esi
 804a652:	89 d1                	mov    %edx,%ecx
 804a654:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804a656:	83 ec 0c             	sub    $0xc,%esp
 804a659:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a65f:	e8 0c ec ff ff       	call   8049270 <close@plt>
 804a664:	83 c4 10             	add    $0x10,%esp
 804a667:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a66c:	e9 ad 03 00 00       	jmp    804aa1e <submitr+0x727>
 804a671:	83 ec 08             	sub    $0x8,%esp
 804a674:	8d 85 e4 9f ff ff    	lea    -0x601c(%ebp),%eax
 804a67a:	50                   	push   %eax
 804a67b:	ff b5 98 5f ff ff    	push   -0xa068(%ebp)
 804a681:	ff b5 9c 5f ff ff    	push   -0xa064(%ebp)
 804a687:	ff b5 a0 5f ff ff    	push   -0xa060(%ebp)
 804a68d:	68 f8 b5 04 08       	push   $0x804b5f8
 804a692:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a698:	50                   	push   %eax
 804a699:	e8 72 eb ff ff       	call   8049210 <sprintf@plt>
 804a69e:	83 c4 20             	add    $0x20,%esp
 804a6a1:	83 ec 0c             	sub    $0xc,%esp
 804a6a4:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a6aa:	50                   	push   %eax
 804a6ab:	e8 d0 ea ff ff       	call   8049180 <strlen@plt>
 804a6b0:	83 c4 10             	add    $0x10,%esp
 804a6b3:	83 ec 04             	sub    $0x4,%esp
 804a6b6:	50                   	push   %eax
 804a6b7:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a6bd:	50                   	push   %eax
 804a6be:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a6c4:	e8 60 fa ff ff       	call   804a129 <rio_writen>
 804a6c9:	83 c4 10             	add    $0x10,%esp
 804a6cc:	85 c0                	test   %eax,%eax
 804a6ce:	79 6d                	jns    804a73d <submitr+0x446>
 804a6d0:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a6d6:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a6dc:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a6e3:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a6ea:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a6f1:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a6f8:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a6ff:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 804a706:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 804a70d:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 804a714:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 804a71b:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 804a722:	83 ec 0c             	sub    $0xc,%esp
 804a725:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a72b:	e8 40 eb ff ff       	call   8049270 <close@plt>
 804a730:	83 c4 10             	add    $0x10,%esp
 804a733:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a738:	e9 e1 02 00 00       	jmp    804aa1e <submitr+0x727>
 804a73d:	83 ec 08             	sub    $0x8,%esp
 804a740:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a746:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 804a74c:	50                   	push   %eax
 804a74d:	e8 43 f8 ff ff       	call   8049f95 <rio_readinitb>
 804a752:	83 c4 10             	add    $0x10,%esp
 804a755:	83 ec 04             	sub    $0x4,%esp
 804a758:	68 00 20 00 00       	push   $0x2000
 804a75d:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a763:	50                   	push   %eax
 804a764:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 804a76a:	50                   	push   %eax
 804a76b:	e8 12 f9 ff ff       	call   804a082 <rio_readlineb>
 804a770:	83 c4 10             	add    $0x10,%esp
 804a773:	85 c0                	test   %eax,%eax
 804a775:	0f 8f 81 00 00 00    	jg     804a7fc <submitr+0x505>
 804a77b:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a781:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a787:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a78e:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a795:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a79c:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a7a3:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a7aa:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a7b1:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 804a7b8:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 804a7bf:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 804a7c6:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 804a7cd:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 804a7d4:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 804a7db:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 804a7e1:	83 ec 0c             	sub    $0xc,%esp
 804a7e4:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a7ea:	e8 81 ea ff ff       	call   8049270 <close@plt>
 804a7ef:	83 c4 10             	add    $0x10,%esp
 804a7f2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a7f7:	e9 22 02 00 00       	jmp    804aa1e <submitr+0x727>
 804a7fc:	83 ec 0c             	sub    $0xc,%esp
 804a7ff:	8d 85 e4 df ff ff    	lea    -0x201c(%ebp),%eax
 804a805:	50                   	push   %eax
 804a806:	8d 85 b4 5f ff ff    	lea    -0xa04c(%ebp),%eax
 804a80c:	50                   	push   %eax
 804a80d:	8d 85 e4 bf ff ff    	lea    -0x401c(%ebp),%eax
 804a813:	50                   	push   %eax
 804a814:	68 42 b6 04 08       	push   $0x804b642
 804a819:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a81f:	50                   	push   %eax
 804a820:	e8 9b e9 ff ff       	call   80491c0 <__isoc99_sscanf@plt>
 804a825:	83 c4 20             	add    $0x20,%esp
 804a828:	8b 85 b4 5f ff ff    	mov    -0xa04c(%ebp),%eax
 804a82e:	3d c8 00 00 00       	cmp    $0xc8,%eax
 804a833:	0f 84 d6 00 00 00    	je     804a90f <submitr+0x618>
 804a839:	8b 85 b4 5f ff ff    	mov    -0xa04c(%ebp),%eax
 804a83f:	8d 95 e4 df ff ff    	lea    -0x201c(%ebp),%edx
 804a845:	52                   	push   %edx
 804a846:	50                   	push   %eax
 804a847:	68 54 b6 04 08       	push   $0x804b654
 804a84c:	ff b5 90 5f ff ff    	push   -0xa070(%ebp)
 804a852:	e8 b9 e9 ff ff       	call   8049210 <sprintf@plt>
 804a857:	83 c4 10             	add    $0x10,%esp
 804a85a:	83 ec 0c             	sub    $0xc,%esp
 804a85d:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a863:	e8 08 ea ff ff       	call   8049270 <close@plt>
 804a868:	83 c4 10             	add    $0x10,%esp
 804a86b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a870:	e9 a9 01 00 00       	jmp    804aa1e <submitr+0x727>
 804a875:	83 ec 04             	sub    $0x4,%esp
 804a878:	68 00 20 00 00       	push   $0x2000
 804a87d:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a883:	50                   	push   %eax
 804a884:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 804a88a:	50                   	push   %eax
 804a88b:	e8 f2 f7 ff ff       	call   804a082 <rio_readlineb>
 804a890:	83 c4 10             	add    $0x10,%esp
 804a893:	85 c0                	test   %eax,%eax
 804a895:	7f 78                	jg     804a90f <submitr+0x618>
 804a897:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a89d:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a8a3:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a8aa:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a8b1:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a8b8:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a8bf:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a8c6:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a8cd:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 804a8d4:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 804a8db:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 804a8e2:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 804a8e9:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 804a8f0:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 804a8f4:	83 ec 0c             	sub    $0xc,%esp
 804a8f7:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a8fd:	e8 6e e9 ff ff       	call   8049270 <close@plt>
 804a902:	83 c4 10             	add    $0x10,%esp
 804a905:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a90a:	e9 0f 01 00 00       	jmp    804aa1e <submitr+0x727>
 804a90f:	83 ec 08             	sub    $0x8,%esp
 804a912:	68 81 b6 04 08       	push   $0x804b681
 804a917:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a91d:	50                   	push   %eax
 804a91e:	e8 1d e7 ff ff       	call   8049040 <strcmp@plt>
 804a923:	83 c4 10             	add    $0x10,%esp
 804a926:	85 c0                	test   %eax,%eax
 804a928:	0f 85 47 ff ff ff    	jne    804a875 <submitr+0x57e>
 804a92e:	83 ec 04             	sub    $0x4,%esp
 804a931:	68 00 20 00 00       	push   $0x2000
 804a936:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a93c:	50                   	push   %eax
 804a93d:	8d 85 d8 5f ff ff    	lea    -0xa028(%ebp),%eax
 804a943:	50                   	push   %eax
 804a944:	e8 39 f7 ff ff       	call   804a082 <rio_readlineb>
 804a949:	83 c4 10             	add    $0x10,%esp
 804a94c:	85 c0                	test   %eax,%eax
 804a94e:	7f 7f                	jg     804a9cf <submitr+0x6d8>
 804a950:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a956:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a95c:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a963:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a96a:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a971:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a978:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a97f:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a986:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 804a98d:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 804a994:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 804a99b:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 804a9a2:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 804a9a9:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 804a9b0:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 804a9b7:	83 ec 0c             	sub    $0xc,%esp
 804a9ba:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a9c0:	e8 ab e8 ff ff       	call   8049270 <close@plt>
 804a9c5:	83 c4 10             	add    $0x10,%esp
 804a9c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a9cd:	eb 4f                	jmp    804aa1e <submitr+0x727>
 804a9cf:	83 ec 08             	sub    $0x8,%esp
 804a9d2:	8d 85 e4 7f ff ff    	lea    -0x801c(%ebp),%eax
 804a9d8:	50                   	push   %eax
 804a9d9:	ff b5 90 5f ff ff    	push   -0xa070(%ebp)
 804a9df:	e8 2c e7 ff ff       	call   8049110 <strcpy@plt>
 804a9e4:	83 c4 10             	add    $0x10,%esp
 804a9e7:	83 ec 0c             	sub    $0xc,%esp
 804a9ea:	ff b5 b8 5f ff ff    	push   -0xa048(%ebp)
 804a9f0:	e8 7b e8 ff ff       	call   8049270 <close@plt>
 804a9f5:	83 c4 10             	add    $0x10,%esp
 804a9f8:	83 ec 08             	sub    $0x8,%esp
 804a9fb:	68 84 b6 04 08       	push   $0x804b684
 804aa00:	ff b5 90 5f ff ff    	push   -0xa070(%ebp)
 804aa06:	e8 35 e6 ff ff       	call   8049040 <strcmp@plt>
 804aa0b:	83 c4 10             	add    $0x10,%esp
 804aa0e:	85 c0                	test   %eax,%eax
 804aa10:	75 07                	jne    804aa19 <submitr+0x722>
 804aa12:	b8 00 00 00 00       	mov    $0x0,%eax
 804aa17:	eb 05                	jmp    804aa1e <submitr+0x727>
 804aa19:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804aa1e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804aa21:	65 2b 15 14 00 00 00 	sub    %gs:0x14,%edx
 804aa28:	74 05                	je     804aa2f <submitr+0x738>
 804aa2a:	e8 b1 e6 ff ff       	call   80490e0 <__stack_chk_fail@plt>
 804aa2f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804aa32:	5b                   	pop    %ebx
 804aa33:	5e                   	pop    %esi
 804aa34:	5f                   	pop    %edi
 804aa35:	5d                   	pop    %ebp
 804aa36:	c3                   	ret    

0804aa37 <init_timeout>:
 804aa37:	55                   	push   %ebp
 804aa38:	89 e5                	mov    %esp,%ebp
 804aa3a:	83 ec 08             	sub    $0x8,%esp
 804aa3d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804aa41:	74 30                	je     804aa73 <init_timeout+0x3c>
 804aa43:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804aa47:	79 07                	jns    804aa50 <init_timeout+0x19>
 804aa49:	c7 45 08 02 00 00 00 	movl   $0x2,0x8(%ebp)
 804aa50:	83 ec 08             	sub    $0x8,%esp
 804aa53:	68 73 9f 04 08       	push   $0x8049f73
 804aa58:	6a 0e                	push   $0xe
 804aa5a:	e8 61 e6 ff ff       	call   80490c0 <signal@plt>
 804aa5f:	83 c4 10             	add    $0x10,%esp
 804aa62:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa65:	83 ec 0c             	sub    $0xc,%esp
 804aa68:	50                   	push   %eax
 804aa69:	e8 62 e6 ff ff       	call   80490d0 <alarm@plt>
 804aa6e:	83 c4 10             	add    $0x10,%esp
 804aa71:	eb 01                	jmp    804aa74 <init_timeout+0x3d>
 804aa73:	90                   	nop
 804aa74:	c9                   	leave  
 804aa75:	c3                   	ret    

0804aa76 <init_driver>:
 804aa76:	55                   	push   %ebp
 804aa77:	89 e5                	mov    %esp,%ebp
 804aa79:	83 ec 48             	sub    $0x48,%esp
 804aa7c:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa7f:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804aa82:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804aa88:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aa8b:	31 c0                	xor    %eax,%eax
 804aa8d:	c7 45 d4 87 b6 04 08 	movl   $0x804b687,-0x2c(%ebp)
 804aa94:	c7 45 d8 03 d9 00 00 	movl   $0xd903,-0x28(%ebp)
 804aa9b:	83 ec 08             	sub    $0x8,%esp
 804aa9e:	6a 01                	push   $0x1
 804aaa0:	6a 0d                	push   $0xd
 804aaa2:	e8 19 e6 ff ff       	call   80490c0 <signal@plt>
 804aaa7:	83 c4 10             	add    $0x10,%esp
 804aaaa:	83 ec 08             	sub    $0x8,%esp
 804aaad:	6a 01                	push   $0x1
 804aaaf:	6a 1d                	push   $0x1d
 804aab1:	e8 0a e6 ff ff       	call   80490c0 <signal@plt>
 804aab6:	83 c4 10             	add    $0x10,%esp
 804aab9:	83 ec 08             	sub    $0x8,%esp
 804aabc:	6a 01                	push   $0x1
 804aabe:	6a 1d                	push   $0x1d
 804aac0:	e8 fb e5 ff ff       	call   80490c0 <signal@plt>
 804aac5:	83 c4 10             	add    $0x10,%esp
 804aac8:	83 ec 04             	sub    $0x4,%esp
 804aacb:	6a 00                	push   $0x0
 804aacd:	6a 01                	push   $0x1
 804aacf:	6a 02                	push   $0x2
 804aad1:	e8 4a e7 ff ff       	call   8049220 <socket@plt>
 804aad6:	83 c4 10             	add    $0x10,%esp
 804aad9:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804aadc:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804aae0:	79 51                	jns    804ab33 <init_driver+0xbd>
 804aae2:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804aae5:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804aaeb:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804aaf2:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804aaf9:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804ab00:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804ab07:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804ab0e:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 804ab15:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804ab1c:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804ab23:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804ab29:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ab2e:	e9 05 01 00 00       	jmp    804ac38 <init_driver+0x1c2>
 804ab33:	83 ec 0c             	sub    $0xc,%esp
 804ab36:	ff 75 d4             	push   -0x2c(%ebp)
 804ab39:	e8 12 e7 ff ff       	call   8049250 <gethostbyname@plt>
 804ab3e:	83 c4 10             	add    $0x10,%esp
 804ab41:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804ab44:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804ab48:	75 2e                	jne    804ab78 <init_driver+0x102>
 804ab4a:	83 ec 04             	sub    $0x4,%esp
 804ab4d:	ff 75 d4             	push   -0x2c(%ebp)
 804ab50:	68 60 b5 04 08       	push   $0x804b560
 804ab55:	ff 75 c4             	push   -0x3c(%ebp)
 804ab58:	e8 b3 e6 ff ff       	call   8049210 <sprintf@plt>
 804ab5d:	83 c4 10             	add    $0x10,%esp
 804ab60:	83 ec 0c             	sub    $0xc,%esp
 804ab63:	ff 75 dc             	push   -0x24(%ebp)
 804ab66:	e8 05 e7 ff ff       	call   8049270 <close@plt>
 804ab6b:	83 c4 10             	add    $0x10,%esp
 804ab6e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ab73:	e9 c0 00 00 00       	jmp    804ac38 <init_driver+0x1c2>
 804ab78:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804ab7b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804ab81:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804ab88:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804ab8f:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804ab96:	66 c7 45 e4 02 00    	movw   $0x2,-0x1c(%ebp)
 804ab9c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804ab9f:	8b 40 0c             	mov    0xc(%eax),%eax
 804aba2:	89 c2                	mov    %eax,%edx
 804aba4:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804aba7:	8b 40 10             	mov    0x10(%eax),%eax
 804abaa:	8b 00                	mov    (%eax),%eax
 804abac:	83 ec 04             	sub    $0x4,%esp
 804abaf:	52                   	push   %edx
 804abb0:	50                   	push   %eax
 804abb1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804abb4:	83 c0 04             	add    $0x4,%eax
 804abb7:	50                   	push   %eax
 804abb8:	e8 d3 e4 ff ff       	call   8049090 <memmove@plt>
 804abbd:	83 c4 10             	add    $0x10,%esp
 804abc0:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804abc3:	0f b7 c0             	movzwl %ax,%eax
 804abc6:	83 ec 0c             	sub    $0xc,%esp
 804abc9:	50                   	push   %eax
 804abca:	e8 21 e5 ff ff       	call   80490f0 <htons@plt>
 804abcf:	83 c4 10             	add    $0x10,%esp
 804abd2:	66 89 45 e6          	mov    %ax,-0x1a(%ebp)
 804abd6:	83 ec 04             	sub    $0x4,%esp
 804abd9:	6a 10                	push   $0x10
 804abdb:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804abde:	50                   	push   %eax
 804abdf:	ff 75 dc             	push   -0x24(%ebp)
 804abe2:	e8 79 e6 ff ff       	call   8049260 <connect@plt>
 804abe7:	83 c4 10             	add    $0x10,%esp
 804abea:	85 c0                	test   %eax,%eax
 804abec:	79 2b                	jns    804ac19 <init_driver+0x1a3>
 804abee:	ff 75 d8             	push   -0x28(%ebp)
 804abf1:	ff 75 d4             	push   -0x2c(%ebp)
 804abf4:	68 9c b6 04 08       	push   $0x804b69c
 804abf9:	ff 75 c4             	push   -0x3c(%ebp)
 804abfc:	e8 0f e6 ff ff       	call   8049210 <sprintf@plt>
 804ac01:	83 c4 10             	add    $0x10,%esp
 804ac04:	83 ec 0c             	sub    $0xc,%esp
 804ac07:	ff 75 dc             	push   -0x24(%ebp)
 804ac0a:	e8 61 e6 ff ff       	call   8049270 <close@plt>
 804ac0f:	83 c4 10             	add    $0x10,%esp
 804ac12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ac17:	eb 1f                	jmp    804ac38 <init_driver+0x1c2>
 804ac19:	83 ec 0c             	sub    $0xc,%esp
 804ac1c:	ff 75 dc             	push   -0x24(%ebp)
 804ac1f:	e8 4c e6 ff ff       	call   8049270 <close@plt>
 804ac24:	83 c4 10             	add    $0x10,%esp
 804ac27:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804ac2a:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804ac2f:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804ac33:	b8 00 00 00 00       	mov    $0x0,%eax
 804ac38:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804ac3b:	65 2b 15 14 00 00 00 	sub    %gs:0x14,%edx
 804ac42:	74 05                	je     804ac49 <init_driver+0x1d3>
 804ac44:	e8 97 e4 ff ff       	call   80490e0 <__stack_chk_fail@plt>
 804ac49:	c9                   	leave  
 804ac4a:	c3                   	ret    

0804ac4b <driver_post>:
 804ac4b:	55                   	push   %ebp
 804ac4c:	89 e5                	mov    %esp,%ebp
 804ac4e:	83 ec 18             	sub    $0x18,%esp
 804ac51:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804ac55:	74 26                	je     804ac7d <driver_post+0x32>
 804ac57:	83 ec 08             	sub    $0x8,%esp
 804ac5a:	ff 75 0c             	push   0xc(%ebp)
 804ac5d:	68 c5 b6 04 08       	push   $0x804b6c5
 804ac62:	e8 19 e4 ff ff       	call   8049080 <printf@plt>
 804ac67:	83 c4 10             	add    $0x10,%esp
 804ac6a:	8b 45 14             	mov    0x14(%ebp),%eax
 804ac6d:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804ac72:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804ac76:	b8 00 00 00 00       	mov    $0x0,%eax
 804ac7b:	eb 54                	jmp    804acd1 <driver_post+0x86>
 804ac7d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804ac81:	74 3d                	je     804acc0 <driver_post+0x75>
 804ac83:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac86:	0f b6 00             	movzbl (%eax),%eax
 804ac89:	0f b6 c0             	movzbl %al,%eax
 804ac8c:	85 c0                	test   %eax,%eax
 804ac8e:	74 30                	je     804acc0 <driver_post+0x75>
 804ac90:	83 ec 04             	sub    $0x4,%esp
 804ac93:	ff 75 14             	push   0x14(%ebp)
 804ac96:	ff 75 0c             	push   0xc(%ebp)
 804ac99:	68 dc b6 04 08       	push   $0x804b6dc
 804ac9e:	ff 75 08             	push   0x8(%ebp)
 804aca1:	68 e3 b6 04 08       	push   $0x804b6e3
 804aca6:	68 03 d9 00 00       	push   $0xd903
 804acab:	68 87 b6 04 08       	push   $0x804b687
 804acb0:	e8 42 f6 ff ff       	call   804a2f7 <submitr>
 804acb5:	83 c4 20             	add    $0x20,%esp
 804acb8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804acbb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804acbe:	eb 11                	jmp    804acd1 <driver_post+0x86>
 804acc0:	8b 45 14             	mov    0x14(%ebp),%eax
 804acc3:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804acc8:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804accc:	b8 00 00 00 00       	mov    $0x0,%eax
 804acd1:	c9                   	leave  
 804acd2:	c3                   	ret    

0804acd3 <hash>:
 804acd3:	55                   	push   %ebp
 804acd4:	89 e5                	mov    %esp,%ebp
 804acd6:	83 ec 10             	sub    $0x10,%esp
 804acd9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804ace0:	eb 1a                	jmp    804acfc <hash+0x29>
 804ace2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ace5:	6b c8 67             	imul   $0x67,%eax,%ecx
 804ace8:	8b 45 08             	mov    0x8(%ebp),%eax
 804aceb:	8d 50 01             	lea    0x1(%eax),%edx
 804acee:	89 55 08             	mov    %edx,0x8(%ebp)
 804acf1:	0f b6 00             	movzbl (%eax),%eax
 804acf4:	0f be c0             	movsbl %al,%eax
 804acf7:	01 c8                	add    %ecx,%eax
 804acf9:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804acfc:	8b 45 08             	mov    0x8(%ebp),%eax
 804acff:	0f b6 00             	movzbl (%eax),%eax
 804ad02:	84 c0                	test   %al,%al
 804ad04:	75 dc                	jne    804ace2 <hash+0xf>
 804ad06:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ad09:	c9                   	leave  
 804ad0a:	c3                   	ret    

0804ad0b <check>:
 804ad0b:	55                   	push   %ebp
 804ad0c:	89 e5                	mov    %esp,%ebp
 804ad0e:	83 ec 10             	sub    $0x10,%esp
 804ad11:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad14:	c1 e8 1c             	shr    $0x1c,%eax
 804ad17:	85 c0                	test   %eax,%eax
 804ad19:	75 07                	jne    804ad22 <check+0x17>
 804ad1b:	b8 00 00 00 00       	mov    $0x0,%eax
 804ad20:	eb 33                	jmp    804ad55 <check+0x4a>
 804ad22:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804ad29:	eb 1f                	jmp    804ad4a <check+0x3f>
 804ad2b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ad2e:	8b 55 08             	mov    0x8(%ebp),%edx
 804ad31:	89 c1                	mov    %eax,%ecx
 804ad33:	d3 ea                	shr    %cl,%edx
 804ad35:	89 d0                	mov    %edx,%eax
 804ad37:	0f b6 c0             	movzbl %al,%eax
 804ad3a:	83 f8 0a             	cmp    $0xa,%eax
 804ad3d:	75 07                	jne    804ad46 <check+0x3b>
 804ad3f:	b8 00 00 00 00       	mov    $0x0,%eax
 804ad44:	eb 0f                	jmp    804ad55 <check+0x4a>
 804ad46:	83 45 fc 08          	addl   $0x8,-0x4(%ebp)
 804ad4a:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%ebp)
 804ad4e:	7e db                	jle    804ad2b <check+0x20>
 804ad50:	b8 01 00 00 00       	mov    $0x1,%eax
 804ad55:	c9                   	leave  
 804ad56:	c3                   	ret    

0804ad57 <gencookie>:
 804ad57:	55                   	push   %ebp
 804ad58:	89 e5                	mov    %esp,%ebp
 804ad5a:	83 ec 18             	sub    $0x18,%esp
 804ad5d:	ff 75 08             	push   0x8(%ebp)
 804ad60:	e8 6e ff ff ff       	call   804acd3 <hash>
 804ad65:	83 c4 04             	add    $0x4,%esp
 804ad68:	83 ec 0c             	sub    $0xc,%esp
 804ad6b:	50                   	push   %eax
 804ad6c:	e8 ef e3 ff ff       	call   8049160 <srand@plt>
 804ad71:	83 c4 10             	add    $0x10,%esp
 804ad74:	e8 77 e4 ff ff       	call   80491f0 <rand@plt>
 804ad79:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ad7c:	83 ec 0c             	sub    $0xc,%esp
 804ad7f:	ff 75 f4             	push   -0xc(%ebp)
 804ad82:	e8 84 ff ff ff       	call   804ad0b <check>
 804ad87:	83 c4 10             	add    $0x10,%esp
 804ad8a:	85 c0                	test   %eax,%eax
 804ad8c:	74 e6                	je     804ad74 <gencookie+0x1d>
 804ad8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ad91:	c9                   	leave  
 804ad92:	c3                   	ret    

Disassembly of section .fini:

0804ad94 <_fini>:
 804ad94:	f3 0f 1e fb          	endbr32 
 804ad98:	53                   	push   %ebx
 804ad99:	83 ec 08             	sub    $0x8,%esp
 804ad9c:	e8 3f e5 ff ff       	call   80492e0 <__x86.get_pc_thunk.bx>
 804ada1:	81 c3 5f 22 00 00    	add    $0x225f,%ebx
 804ada7:	83 c4 08             	add    $0x8,%esp
 804adaa:	5b                   	pop    %ebx
 804adab:	c3                   	ret    
