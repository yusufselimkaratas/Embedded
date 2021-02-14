
c1m2.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004003c8 <_init>:
  4003c8:	48 83 ec 08          	sub    $0x8,%rsp
  4003cc:	48 8b 05 25 0c 20 00 	mov    0x200c25(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  4003d3:	48 85 c0             	test   %rax,%rax
  4003d6:	74 05                	je     4003dd <_init+0x15>
  4003d8:	e8 43 00 00 00       	callq  400420 <__libc_start_main@plt+0x10>
  4003dd:	48 83 c4 08          	add    $0x8,%rsp
  4003e1:	c3                   	retq   

Disassembly of section .plt:

00000000004003f0 <putchar@plt-0x10>:
  4003f0:	ff 35 12 0c 20 00    	pushq  0x200c12(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003f6:	ff 25 14 0c 20 00    	jmpq   *0x200c14(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400400 <putchar@plt>:
  400400:	ff 25 12 0c 20 00    	jmpq   *0x200c12(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400406:	68 00 00 00 00       	pushq  $0x0
  40040b:	e9 e0 ff ff ff       	jmpq   4003f0 <_init+0x28>

0000000000400410 <__libc_start_main@plt>:
  400410:	ff 25 0a 0c 20 00    	jmpq   *0x200c0a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400416:	68 01 00 00 00       	pushq  $0x1
  40041b:	e9 d0 ff ff ff       	jmpq   4003f0 <_init+0x28>

Disassembly of section .plt.got:

0000000000400420 <.plt.got>:
  400420:	ff 25 d2 0b 20 00    	jmpq   *0x200bd2(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  400426:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400430 <_start>:
  400430:	31 ed                	xor    %ebp,%ebp
  400432:	49 89 d1             	mov    %rdx,%r9
  400435:	5e                   	pop    %rsi
  400436:	48 89 e2             	mov    %rsp,%rdx
  400439:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40043d:	50                   	push   %rax
  40043e:	54                   	push   %rsp
  40043f:	49 c7 c0 a0 07 40 00 	mov    $0x4007a0,%r8
  400446:	48 c7 c1 30 07 40 00 	mov    $0x400730,%rcx
  40044d:	48 c7 c7 26 05 40 00 	mov    $0x400526,%rdi
  400454:	e8 b7 ff ff ff       	callq  400410 <__libc_start_main@plt>
  400459:	f4                   	hlt    
  40045a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400460 <deregister_tm_clones>:
  400460:	b8 3f 10 60 00       	mov    $0x60103f,%eax
  400465:	55                   	push   %rbp
  400466:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  40046c:	48 83 f8 0e          	cmp    $0xe,%rax
  400470:	48 89 e5             	mov    %rsp,%rbp
  400473:	76 1b                	jbe    400490 <deregister_tm_clones+0x30>
  400475:	b8 00 00 00 00       	mov    $0x0,%eax
  40047a:	48 85 c0             	test   %rax,%rax
  40047d:	74 11                	je     400490 <deregister_tm_clones+0x30>
  40047f:	5d                   	pop    %rbp
  400480:	bf 38 10 60 00       	mov    $0x601038,%edi
  400485:	ff e0                	jmpq   *%rax
  400487:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40048e:	00 00 
  400490:	5d                   	pop    %rbp
  400491:	c3                   	retq   
  400492:	0f 1f 40 00          	nopl   0x0(%rax)
  400496:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40049d:	00 00 00 

00000000004004a0 <register_tm_clones>:
  4004a0:	be 38 10 60 00       	mov    $0x601038,%esi
  4004a5:	55                   	push   %rbp
  4004a6:	48 81 ee 38 10 60 00 	sub    $0x601038,%rsi
  4004ad:	48 c1 fe 03          	sar    $0x3,%rsi
  4004b1:	48 89 e5             	mov    %rsp,%rbp
  4004b4:	48 89 f0             	mov    %rsi,%rax
  4004b7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4004bb:	48 01 c6             	add    %rax,%rsi
  4004be:	48 d1 fe             	sar    %rsi
  4004c1:	74 15                	je     4004d8 <register_tm_clones+0x38>
  4004c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4004c8:	48 85 c0             	test   %rax,%rax
  4004cb:	74 0b                	je     4004d8 <register_tm_clones+0x38>
  4004cd:	5d                   	pop    %rbp
  4004ce:	bf 38 10 60 00       	mov    $0x601038,%edi
  4004d3:	ff e0                	jmpq   *%rax
  4004d5:	0f 1f 00             	nopl   (%rax)
  4004d8:	5d                   	pop    %rbp
  4004d9:	c3                   	retq   
  4004da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004e0 <__do_global_dtors_aux>:
  4004e0:	80 3d 51 0b 20 00 00 	cmpb   $0x0,0x200b51(%rip)        # 601038 <__TMC_END__>
  4004e7:	75 11                	jne    4004fa <__do_global_dtors_aux+0x1a>
  4004e9:	55                   	push   %rbp
  4004ea:	48 89 e5             	mov    %rsp,%rbp
  4004ed:	e8 6e ff ff ff       	callq  400460 <deregister_tm_clones>
  4004f2:	5d                   	pop    %rbp
  4004f3:	c6 05 3e 0b 20 00 01 	movb   $0x1,0x200b3e(%rip)        # 601038 <__TMC_END__>
  4004fa:	f3 c3                	repz retq 
  4004fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400500 <frame_dummy>:
  400500:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400505:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400509:	75 05                	jne    400510 <frame_dummy+0x10>
  40050b:	eb 93                	jmp    4004a0 <register_tm_clones>
  40050d:	0f 1f 00             	nopl   (%rax)
  400510:	b8 00 00 00 00       	mov    $0x0,%eax
  400515:	48 85 c0             	test   %rax,%rax
  400518:	74 f1                	je     40050b <frame_dummy+0xb>
  40051a:	55                   	push   %rbp
  40051b:	48 89 e5             	mov    %rsp,%rbp
  40051e:	ff d0                	callq  *%rax
  400520:	5d                   	pop    %rbp
  400521:	e9 7a ff ff ff       	jmpq   4004a0 <register_tm_clones>

0000000000400526 <main>:
  400526:	55                   	push   %rbp
  400527:	48 89 e5             	mov    %rsp,%rbp
  40052a:	48 83 ec 10          	sub    $0x10,%rsp
  40052e:	be 0a 00 00 00       	mov    $0xa,%esi
  400533:	bf 40 10 60 00       	mov    $0x601040,%edi
  400538:	e8 c7 01 00 00       	callq  400704 <clear_all>
  40053d:	b8 48 10 60 00       	mov    $0x601048,%eax
  400542:	ba 02 00 00 00       	mov    $0x2,%edx
  400547:	be 2b 00 00 00       	mov    $0x2b,%esi
  40054c:	48 89 c7             	mov    %rax,%rdi
  40054f:	e8 6f 01 00 00       	callq  4006c3 <set_all>
  400554:	ba 61 00 00 00       	mov    $0x61,%edx
  400559:	be 00 00 00 00       	mov    $0x0,%esi
  40055e:	bf 40 10 60 00       	mov    $0x601040,%edi
  400563:	e8 f6 00 00 00       	callq  40065e <set_value>
  400568:	be 09 00 00 00       	mov    $0x9,%esi
  40056d:	bf 40 10 60 00       	mov    $0x601040,%edi
  400572:	e8 32 01 00 00       	callq  4006a9 <get_value>
  400577:	88 45 fb             	mov    %al,-0x5(%rbp)
  40057a:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
  40057e:	83 c0 27             	add    $0x27,%eax
  400581:	0f be c0             	movsbl %al,%eax
  400584:	89 c2                	mov    %eax,%edx
  400586:	be 09 00 00 00       	mov    $0x9,%esi
  40058b:	bf 40 10 60 00       	mov    $0x601040,%edi
  400590:	e8 c9 00 00 00       	callq  40065e <set_value>
  400595:	ba 37 00 00 00       	mov    $0x37,%edx
  40059a:	be 03 00 00 00       	mov    $0x3,%esi
  40059f:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005a4:	e8 b5 00 00 00       	callq  40065e <set_value>
  4005a9:	ba 58 00 00 00       	mov    $0x58,%edx
  4005ae:	be 01 00 00 00       	mov    $0x1,%esi
  4005b3:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005b8:	e8 a1 00 00 00       	callq  40065e <set_value>
  4005bd:	ba 32 00 00 00       	mov    $0x32,%edx
  4005c2:	be 04 00 00 00       	mov    $0x4,%esi
  4005c7:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005cc:	e8 8d 00 00 00       	callq  40065e <set_value>
  4005d1:	be 01 00 00 00       	mov    $0x1,%esi
  4005d6:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005db:	e8 c9 00 00 00       	callq  4006a9 <get_value>
  4005e0:	88 45 fb             	mov    %al,-0x5(%rbp)
  4005e3:	ba 79 00 00 00       	mov    $0x79,%edx
  4005e8:	be 02 00 00 00       	mov    $0x2,%esi
  4005ed:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005f2:	e8 67 00 00 00       	callq  40065e <set_value>
  4005f7:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
  4005fb:	83 e8 0c             	sub    $0xc,%eax
  4005fe:	0f be c0             	movsbl %al,%eax
  400601:	89 c2                	mov    %eax,%edx
  400603:	be 07 00 00 00       	mov    $0x7,%esi
  400608:	bf 40 10 60 00       	mov    $0x601040,%edi
  40060d:	e8 4c 00 00 00       	callq  40065e <set_value>
  400612:	ba 5f 00 00 00       	mov    $0x5f,%edx
  400617:	be 05 00 00 00       	mov    $0x5,%esi
  40061c:	bf 40 10 60 00       	mov    $0x601040,%edi
  400621:	e8 38 00 00 00       	callq  40065e <set_value>
  400626:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40062d:	eb 18                	jmp    400647 <main+0x121>
  40062f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400632:	0f b6 80 40 10 60 00 	movzbl 0x601040(%rax),%eax
  400639:	0f be c0             	movsbl %al,%eax
  40063c:	89 c7                	mov    %eax,%edi
  40063e:	e8 bd fd ff ff       	callq  400400 <putchar@plt>
  400643:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400647:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  40064b:	76 e2                	jbe    40062f <main+0x109>
  40064d:	bf 0a 00 00 00       	mov    $0xa,%edi
  400652:	e8 a9 fd ff ff       	callq  400400 <putchar@plt>
  400657:	b8 00 00 00 00       	mov    $0x0,%eax
  40065c:	c9                   	leaveq 
  40065d:	c3                   	retq   

000000000040065e <set_value>:
  40065e:	55                   	push   %rbp
  40065f:	48 89 e5             	mov    %rsp,%rbp
  400662:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400666:	89 75 f4             	mov    %esi,-0xc(%rbp)
  400669:	89 d0                	mov    %edx,%eax
  40066b:	88 45 f0             	mov    %al,-0x10(%rbp)
  40066e:	8b 55 f4             	mov    -0xc(%rbp),%edx
  400671:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400675:	48 01 c2             	add    %rax,%rdx
  400678:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  40067c:	88 02                	mov    %al,(%rdx)
  40067e:	90                   	nop
  40067f:	5d                   	pop    %rbp
  400680:	c3                   	retq   

0000000000400681 <clear_value>:
  400681:	55                   	push   %rbp
  400682:	48 89 e5             	mov    %rsp,%rbp
  400685:	48 83 ec 10          	sub    $0x10,%rsp
  400689:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40068d:	89 75 f4             	mov    %esi,-0xc(%rbp)
  400690:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  400693:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400697:	ba 00 00 00 00       	mov    $0x0,%edx
  40069c:	89 ce                	mov    %ecx,%esi
  40069e:	48 89 c7             	mov    %rax,%rdi
  4006a1:	e8 b8 ff ff ff       	callq  40065e <set_value>
  4006a6:	90                   	nop
  4006a7:	c9                   	leaveq 
  4006a8:	c3                   	retq   

00000000004006a9 <get_value>:
  4006a9:	55                   	push   %rbp
  4006aa:	48 89 e5             	mov    %rsp,%rbp
  4006ad:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4006b1:	89 75 f4             	mov    %esi,-0xc(%rbp)
  4006b4:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4006b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4006bb:	48 01 d0             	add    %rdx,%rax
  4006be:	0f b6 00             	movzbl (%rax),%eax
  4006c1:	5d                   	pop    %rbp
  4006c2:	c3                   	retq   

00000000004006c3 <set_all>:
  4006c3:	55                   	push   %rbp
  4006c4:	48 89 e5             	mov    %rsp,%rbp
  4006c7:	48 83 ec 20          	sub    $0x20,%rsp
  4006cb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4006cf:	89 f0                	mov    %esi,%eax
  4006d1:	89 55 e0             	mov    %edx,-0x20(%rbp)
  4006d4:	88 45 e4             	mov    %al,-0x1c(%rbp)
  4006d7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4006de:	eb 19                	jmp    4006f9 <set_all+0x36>
  4006e0:	0f be 55 e4          	movsbl -0x1c(%rbp),%edx
  4006e4:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  4006e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4006eb:	89 ce                	mov    %ecx,%esi
  4006ed:	48 89 c7             	mov    %rax,%rdi
  4006f0:	e8 69 ff ff ff       	callq  40065e <set_value>
  4006f5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4006f9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4006fc:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  4006ff:	72 df                	jb     4006e0 <set_all+0x1d>
  400701:	90                   	nop
  400702:	c9                   	leaveq 
  400703:	c3                   	retq   

0000000000400704 <clear_all>:
  400704:	55                   	push   %rbp
  400705:	48 89 e5             	mov    %rsp,%rbp
  400708:	48 83 ec 10          	sub    $0x10,%rsp
  40070c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400710:	89 75 f4             	mov    %esi,-0xc(%rbp)
  400713:	8b 55 f4             	mov    -0xc(%rbp),%edx
  400716:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40071a:	be 00 00 00 00       	mov    $0x0,%esi
  40071f:	48 89 c7             	mov    %rax,%rdi
  400722:	e8 9c ff ff ff       	callq  4006c3 <set_all>
  400727:	90                   	nop
  400728:	c9                   	leaveq 
  400729:	c3                   	retq   
  40072a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400730 <__libc_csu_init>:
  400730:	41 57                	push   %r15
  400732:	41 56                	push   %r14
  400734:	41 89 ff             	mov    %edi,%r15d
  400737:	41 55                	push   %r13
  400739:	41 54                	push   %r12
  40073b:	4c 8d 25 ce 06 20 00 	lea    0x2006ce(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400742:	55                   	push   %rbp
  400743:	48 8d 2d ce 06 20 00 	lea    0x2006ce(%rip),%rbp        # 600e18 <__init_array_end>
  40074a:	53                   	push   %rbx
  40074b:	49 89 f6             	mov    %rsi,%r14
  40074e:	49 89 d5             	mov    %rdx,%r13
  400751:	4c 29 e5             	sub    %r12,%rbp
  400754:	48 83 ec 08          	sub    $0x8,%rsp
  400758:	48 c1 fd 03          	sar    $0x3,%rbp
  40075c:	e8 67 fc ff ff       	callq  4003c8 <_init>
  400761:	48 85 ed             	test   %rbp,%rbp
  400764:	74 20                	je     400786 <__libc_csu_init+0x56>
  400766:	31 db                	xor    %ebx,%ebx
  400768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40076f:	00 
  400770:	4c 89 ea             	mov    %r13,%rdx
  400773:	4c 89 f6             	mov    %r14,%rsi
  400776:	44 89 ff             	mov    %r15d,%edi
  400779:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40077d:	48 83 c3 01          	add    $0x1,%rbx
  400781:	48 39 eb             	cmp    %rbp,%rbx
  400784:	75 ea                	jne    400770 <__libc_csu_init+0x40>
  400786:	48 83 c4 08          	add    $0x8,%rsp
  40078a:	5b                   	pop    %rbx
  40078b:	5d                   	pop    %rbp
  40078c:	41 5c                	pop    %r12
  40078e:	41 5d                	pop    %r13
  400790:	41 5e                	pop    %r14
  400792:	41 5f                	pop    %r15
  400794:	c3                   	retq   
  400795:	90                   	nop
  400796:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40079d:	00 00 00 

00000000004007a0 <__libc_csu_fini>:
  4007a0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004007a4 <_fini>:
  4007a4:	48 83 ec 08          	sub    $0x8,%rsp
  4007a8:	48 83 c4 08          	add    $0x8,%rsp
  4007ac:	c3                   	retq   

c1m2.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004003c8 <_init>:
  4003c8:	48 83 ec 08          	sub    $0x8,%rsp
  4003cc:	48 8b 05 25 0c 20 00 	mov    0x200c25(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  4003d3:	48 85 c0             	test   %rax,%rax
  4003d6:	74 05                	je     4003dd <_init+0x15>
  4003d8:	e8 43 00 00 00       	callq  400420 <__libc_start_main@plt+0x10>
  4003dd:	48 83 c4 08          	add    $0x8,%rsp
  4003e1:	c3                   	retq   

Disassembly of section .plt:

00000000004003f0 <putchar@plt-0x10>:
  4003f0:	ff 35 12 0c 20 00    	pushq  0x200c12(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003f6:	ff 25 14 0c 20 00    	jmpq   *0x200c14(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400400 <putchar@plt>:
  400400:	ff 25 12 0c 20 00    	jmpq   *0x200c12(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400406:	68 00 00 00 00       	pushq  $0x0
  40040b:	e9 e0 ff ff ff       	jmpq   4003f0 <_init+0x28>

0000000000400410 <__libc_start_main@plt>:
  400410:	ff 25 0a 0c 20 00    	jmpq   *0x200c0a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400416:	68 01 00 00 00       	pushq  $0x1
  40041b:	e9 d0 ff ff ff       	jmpq   4003f0 <_init+0x28>

Disassembly of section .plt.got:

0000000000400420 <.plt.got>:
  400420:	ff 25 d2 0b 20 00    	jmpq   *0x200bd2(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  400426:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400430 <_start>:
  400430:	31 ed                	xor    %ebp,%ebp
  400432:	49 89 d1             	mov    %rdx,%r9
  400435:	5e                   	pop    %rsi
  400436:	48 89 e2             	mov    %rsp,%rdx
  400439:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40043d:	50                   	push   %rax
  40043e:	54                   	push   %rsp
  40043f:	49 c7 c0 a0 07 40 00 	mov    $0x4007a0,%r8
  400446:	48 c7 c1 30 07 40 00 	mov    $0x400730,%rcx
  40044d:	48 c7 c7 26 05 40 00 	mov    $0x400526,%rdi
  400454:	e8 b7 ff ff ff       	callq  400410 <__libc_start_main@plt>
  400459:	f4                   	hlt    
  40045a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400460 <deregister_tm_clones>:
  400460:	b8 3f 10 60 00       	mov    $0x60103f,%eax
  400465:	55                   	push   %rbp
  400466:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  40046c:	48 83 f8 0e          	cmp    $0xe,%rax
  400470:	48 89 e5             	mov    %rsp,%rbp
  400473:	76 1b                	jbe    400490 <deregister_tm_clones+0x30>
  400475:	b8 00 00 00 00       	mov    $0x0,%eax
  40047a:	48 85 c0             	test   %rax,%rax
  40047d:	74 11                	je     400490 <deregister_tm_clones+0x30>
  40047f:	5d                   	pop    %rbp
  400480:	bf 38 10 60 00       	mov    $0x601038,%edi
  400485:	ff e0                	jmpq   *%rax
  400487:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40048e:	00 00 
  400490:	5d                   	pop    %rbp
  400491:	c3                   	retq   
  400492:	0f 1f 40 00          	nopl   0x0(%rax)
  400496:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40049d:	00 00 00 

00000000004004a0 <register_tm_clones>:
  4004a0:	be 38 10 60 00       	mov    $0x601038,%esi
  4004a5:	55                   	push   %rbp
  4004a6:	48 81 ee 38 10 60 00 	sub    $0x601038,%rsi
  4004ad:	48 c1 fe 03          	sar    $0x3,%rsi
  4004b1:	48 89 e5             	mov    %rsp,%rbp
  4004b4:	48 89 f0             	mov    %rsi,%rax
  4004b7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4004bb:	48 01 c6             	add    %rax,%rsi
  4004be:	48 d1 fe             	sar    %rsi
  4004c1:	74 15                	je     4004d8 <register_tm_clones+0x38>
  4004c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4004c8:	48 85 c0             	test   %rax,%rax
  4004cb:	74 0b                	je     4004d8 <register_tm_clones+0x38>
  4004cd:	5d                   	pop    %rbp
  4004ce:	bf 38 10 60 00       	mov    $0x601038,%edi
  4004d3:	ff e0                	jmpq   *%rax
  4004d5:	0f 1f 00             	nopl   (%rax)
  4004d8:	5d                   	pop    %rbp
  4004d9:	c3                   	retq   
  4004da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004e0 <__do_global_dtors_aux>:
  4004e0:	80 3d 51 0b 20 00 00 	cmpb   $0x0,0x200b51(%rip)        # 601038 <__TMC_END__>
  4004e7:	75 11                	jne    4004fa <__do_global_dtors_aux+0x1a>
  4004e9:	55                   	push   %rbp
  4004ea:	48 89 e5             	mov    %rsp,%rbp
  4004ed:	e8 6e ff ff ff       	callq  400460 <deregister_tm_clones>
  4004f2:	5d                   	pop    %rbp
  4004f3:	c6 05 3e 0b 20 00 01 	movb   $0x1,0x200b3e(%rip)        # 601038 <__TMC_END__>
  4004fa:	f3 c3                	repz retq 
  4004fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400500 <frame_dummy>:
  400500:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400505:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400509:	75 05                	jne    400510 <frame_dummy+0x10>
  40050b:	eb 93                	jmp    4004a0 <register_tm_clones>
  40050d:	0f 1f 00             	nopl   (%rax)
  400510:	b8 00 00 00 00       	mov    $0x0,%eax
  400515:	48 85 c0             	test   %rax,%rax
  400518:	74 f1                	je     40050b <frame_dummy+0xb>
  40051a:	55                   	push   %rbp
  40051b:	48 89 e5             	mov    %rsp,%rbp
  40051e:	ff d0                	callq  *%rax
  400520:	5d                   	pop    %rbp
  400521:	e9 7a ff ff ff       	jmpq   4004a0 <register_tm_clones>

0000000000400526 <main>:
  400526:	55                   	push   %rbp
  400527:	48 89 e5             	mov    %rsp,%rbp
  40052a:	48 83 ec 10          	sub    $0x10,%rsp
  40052e:	be 0a 00 00 00       	mov    $0xa,%esi
  400533:	bf 40 10 60 00       	mov    $0x601040,%edi
  400538:	e8 c7 01 00 00       	callq  400704 <clear_all>
  40053d:	b8 48 10 60 00       	mov    $0x601048,%eax
  400542:	ba 02 00 00 00       	mov    $0x2,%edx
  400547:	be 2b 00 00 00       	mov    $0x2b,%esi
  40054c:	48 89 c7             	mov    %rax,%rdi
  40054f:	e8 6f 01 00 00       	callq  4006c3 <set_all>
  400554:	ba 61 00 00 00       	mov    $0x61,%edx
  400559:	be 00 00 00 00       	mov    $0x0,%esi
  40055e:	bf 40 10 60 00       	mov    $0x601040,%edi
  400563:	e8 f6 00 00 00       	callq  40065e <set_value>
  400568:	be 09 00 00 00       	mov    $0x9,%esi
  40056d:	bf 40 10 60 00       	mov    $0x601040,%edi
  400572:	e8 32 01 00 00       	callq  4006a9 <get_value>
  400577:	88 45 fb             	mov    %al,-0x5(%rbp)
  40057a:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
  40057e:	83 c0 27             	add    $0x27,%eax
  400581:	0f be c0             	movsbl %al,%eax
  400584:	89 c2                	mov    %eax,%edx
  400586:	be 09 00 00 00       	mov    $0x9,%esi
  40058b:	bf 40 10 60 00       	mov    $0x601040,%edi
  400590:	e8 c9 00 00 00       	callq  40065e <set_value>
  400595:	ba 37 00 00 00       	mov    $0x37,%edx
  40059a:	be 03 00 00 00       	mov    $0x3,%esi
  40059f:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005a4:	e8 b5 00 00 00       	callq  40065e <set_value>
  4005a9:	ba 58 00 00 00       	mov    $0x58,%edx
  4005ae:	be 01 00 00 00       	mov    $0x1,%esi
  4005b3:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005b8:	e8 a1 00 00 00       	callq  40065e <set_value>
  4005bd:	ba 32 00 00 00       	mov    $0x32,%edx
  4005c2:	be 04 00 00 00       	mov    $0x4,%esi
  4005c7:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005cc:	e8 8d 00 00 00       	callq  40065e <set_value>
  4005d1:	be 01 00 00 00       	mov    $0x1,%esi
  4005d6:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005db:	e8 c9 00 00 00       	callq  4006a9 <get_value>
  4005e0:	88 45 fb             	mov    %al,-0x5(%rbp)
  4005e3:	ba 79 00 00 00       	mov    $0x79,%edx
  4005e8:	be 02 00 00 00       	mov    $0x2,%esi
  4005ed:	bf 40 10 60 00       	mov    $0x601040,%edi
  4005f2:	e8 67 00 00 00       	callq  40065e <set_value>
  4005f7:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
  4005fb:	83 e8 0c             	sub    $0xc,%eax
  4005fe:	0f be c0             	movsbl %al,%eax
  400601:	89 c2                	mov    %eax,%edx
  400603:	be 07 00 00 00       	mov    $0x7,%esi
  400608:	bf 40 10 60 00       	mov    $0x601040,%edi
  40060d:	e8 4c 00 00 00       	callq  40065e <set_value>
  400612:	ba 5f 00 00 00       	mov    $0x5f,%edx
  400617:	be 05 00 00 00       	mov    $0x5,%esi
  40061c:	bf 40 10 60 00       	mov    $0x601040,%edi
  400621:	e8 38 00 00 00       	callq  40065e <set_value>
  400626:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40062d:	eb 18                	jmp    400647 <main+0x121>
  40062f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400632:	0f b6 80 40 10 60 00 	movzbl 0x601040(%rax),%eax
  400639:	0f be c0             	movsbl %al,%eax
  40063c:	89 c7                	mov    %eax,%edi
  40063e:	e8 bd fd ff ff       	callq  400400 <putchar@plt>
  400643:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400647:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  40064b:	76 e2                	jbe    40062f <main+0x109>
  40064d:	bf 0a 00 00 00       	mov    $0xa,%edi
  400652:	e8 a9 fd ff ff       	callq  400400 <putchar@plt>
  400657:	b8 00 00 00 00       	mov    $0x0,%eax
  40065c:	c9                   	leaveq 
  40065d:	c3                   	retq   

000000000040065e <set_value>:
  40065e:	55                   	push   %rbp
  40065f:	48 89 e5             	mov    %rsp,%rbp
  400662:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400666:	89 75 f4             	mov    %esi,-0xc(%rbp)
  400669:	89 d0                	mov    %edx,%eax
  40066b:	88 45 f0             	mov    %al,-0x10(%rbp)
  40066e:	8b 55 f4             	mov    -0xc(%rbp),%edx
  400671:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400675:	48 01 c2             	add    %rax,%rdx
  400678:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  40067c:	88 02                	mov    %al,(%rdx)
  40067e:	90                   	nop
  40067f:	5d                   	pop    %rbp
  400680:	c3                   	retq   

0000000000400681 <clear_value>:
  400681:	55                   	push   %rbp
  400682:	48 89 e5             	mov    %rsp,%rbp
  400685:	48 83 ec 10          	sub    $0x10,%rsp
  400689:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40068d:	89 75 f4             	mov    %esi,-0xc(%rbp)
  400690:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  400693:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400697:	ba 00 00 00 00       	mov    $0x0,%edx
  40069c:	89 ce                	mov    %ecx,%esi
  40069e:	48 89 c7             	mov    %rax,%rdi
  4006a1:	e8 b8 ff ff ff       	callq  40065e <set_value>
  4006a6:	90                   	nop
  4006a7:	c9                   	leaveq 
  4006a8:	c3                   	retq   

00000000004006a9 <get_value>:
  4006a9:	55                   	push   %rbp
  4006aa:	48 89 e5             	mov    %rsp,%rbp
  4006ad:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4006b1:	89 75 f4             	mov    %esi,-0xc(%rbp)
  4006b4:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4006b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4006bb:	48 01 d0             	add    %rdx,%rax
  4006be:	0f b6 00             	movzbl (%rax),%eax
  4006c1:	5d                   	pop    %rbp
  4006c2:	c3                   	retq   

00000000004006c3 <set_all>:
  4006c3:	55                   	push   %rbp
  4006c4:	48 89 e5             	mov    %rsp,%rbp
  4006c7:	48 83 ec 20          	sub    $0x20,%rsp
  4006cb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4006cf:	89 f0                	mov    %esi,%eax
  4006d1:	89 55 e0             	mov    %edx,-0x20(%rbp)
  4006d4:	88 45 e4             	mov    %al,-0x1c(%rbp)
  4006d7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4006de:	eb 19                	jmp    4006f9 <set_all+0x36>
  4006e0:	0f be 55 e4          	movsbl -0x1c(%rbp),%edx
  4006e4:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  4006e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4006eb:	89 ce                	mov    %ecx,%esi
  4006ed:	48 89 c7             	mov    %rax,%rdi
  4006f0:	e8 69 ff ff ff       	callq  40065e <set_value>
  4006f5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4006f9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4006fc:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  4006ff:	72 df                	jb     4006e0 <set_all+0x1d>
  400701:	90                   	nop
  400702:	c9                   	leaveq 
  400703:	c3                   	retq   

0000000000400704 <clear_all>:
  400704:	55                   	push   %rbp
  400705:	48 89 e5             	mov    %rsp,%rbp
  400708:	48 83 ec 10          	sub    $0x10,%rsp
  40070c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400710:	89 75 f4             	mov    %esi,-0xc(%rbp)
  400713:	8b 55 f4             	mov    -0xc(%rbp),%edx
  400716:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40071a:	be 00 00 00 00       	mov    $0x0,%esi
  40071f:	48 89 c7             	mov    %rax,%rdi
  400722:	e8 9c ff ff ff       	callq  4006c3 <set_all>
  400727:	90                   	nop
  400728:	c9                   	leaveq 
  400729:	c3                   	retq   
  40072a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400730 <__libc_csu_init>:
  400730:	41 57                	push   %r15
  400732:	41 56                	push   %r14
  400734:	41 89 ff             	mov    %edi,%r15d
  400737:	41 55                	push   %r13
  400739:	41 54                	push   %r12
  40073b:	4c 8d 25 ce 06 20 00 	lea    0x2006ce(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400742:	55                   	push   %rbp
  400743:	48 8d 2d ce 06 20 00 	lea    0x2006ce(%rip),%rbp        # 600e18 <__init_array_end>
  40074a:	53                   	push   %rbx
  40074b:	49 89 f6             	mov    %rsi,%r14
  40074e:	49 89 d5             	mov    %rdx,%r13
  400751:	4c 29 e5             	sub    %r12,%rbp
  400754:	48 83 ec 08          	sub    $0x8,%rsp
  400758:	48 c1 fd 03          	sar    $0x3,%rbp
  40075c:	e8 67 fc ff ff       	callq  4003c8 <_init>
  400761:	48 85 ed             	test   %rbp,%rbp
  400764:	74 20                	je     400786 <__libc_csu_init+0x56>
  400766:	31 db                	xor    %ebx,%ebx
  400768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40076f:	00 
  400770:	4c 89 ea             	mov    %r13,%rdx
  400773:	4c 89 f6             	mov    %r14,%rsi
  400776:	44 89 ff             	mov    %r15d,%edi
  400779:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40077d:	48 83 c3 01          	add    $0x1,%rbx
  400781:	48 39 eb             	cmp    %rbp,%rbx
  400784:	75 ea                	jne    400770 <__libc_csu_init+0x40>
  400786:	48 83 c4 08          	add    $0x8,%rsp
  40078a:	5b                   	pop    %rbx
  40078b:	5d                   	pop    %rbp
  40078c:	41 5c                	pop    %r12
  40078e:	41 5d                	pop    %r13
  400790:	41 5e                	pop    %r14
  400792:	41 5f                	pop    %r15
  400794:	c3                   	retq   
  400795:	90                   	nop
  400796:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40079d:	00 00 00 

00000000004007a0 <__libc_csu_fini>:
  4007a0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004007a4 <_fini>:
  4007a4:	48 83 ec 08          	sub    $0x8,%rsp
  4007a8:	48 83 c4 08          	add    $0x8,%rsp
  4007ac:	c3                   	retq   

c1m2.out:     file format elf32-littlearm


Disassembly of section .text:

00000140 <deregister_tm_clones>:
 140:	4b04      	ldr	r3, [pc, #16]	; (154 <deregister_tm_clones+0x14>)
 142:	4805      	ldr	r0, [pc, #20]	; (158 <deregister_tm_clones+0x18>)
 144:	1a1b      	subs	r3, r3, r0
 146:	2b06      	cmp	r3, #6
 148:	d902      	bls.n	150 <deregister_tm_clones+0x10>
 14a:	4b04      	ldr	r3, [pc, #16]	; (15c <deregister_tm_clones+0x1c>)
 14c:	b103      	cbz	r3, 150 <deregister_tm_clones+0x10>
 14e:	4718      	bx	r3
 150:	4770      	bx	lr
 152:	bf00      	nop
 154:	2000043b 	.word	0x2000043b
 158:	20000438 	.word	0x20000438
 15c:	00000000 	.word	0x00000000

00000160 <register_tm_clones>:
 160:	4905      	ldr	r1, [pc, #20]	; (178 <register_tm_clones+0x18>)
 162:	4806      	ldr	r0, [pc, #24]	; (17c <register_tm_clones+0x1c>)
 164:	1a09      	subs	r1, r1, r0
 166:	1089      	asrs	r1, r1, #2
 168:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
 16c:	1049      	asrs	r1, r1, #1
 16e:	d002      	beq.n	176 <register_tm_clones+0x16>
 170:	4b03      	ldr	r3, [pc, #12]	; (180 <register_tm_clones+0x20>)
 172:	b103      	cbz	r3, 176 <register_tm_clones+0x16>
 174:	4718      	bx	r3
 176:	4770      	bx	lr
 178:	20000438 	.word	0x20000438
 17c:	20000438 	.word	0x20000438
 180:	00000000 	.word	0x00000000

00000184 <__do_global_dtors_aux>:
 184:	b510      	push	{r4, lr}
 186:	4c06      	ldr	r4, [pc, #24]	; (1a0 <__do_global_dtors_aux+0x1c>)
 188:	7823      	ldrb	r3, [r4, #0]
 18a:	b943      	cbnz	r3, 19e <__do_global_dtors_aux+0x1a>
 18c:	f7ff ffd8 	bl	140 <deregister_tm_clones>
 190:	4b04      	ldr	r3, [pc, #16]	; (1a4 <__do_global_dtors_aux+0x20>)
 192:	b113      	cbz	r3, 19a <__do_global_dtors_aux+0x16>
 194:	4804      	ldr	r0, [pc, #16]	; (1a8 <__do_global_dtors_aux+0x24>)
 196:	f3af 8000 	nop.w
 19a:	2301      	movs	r3, #1
 19c:	7023      	strb	r3, [r4, #0]
 19e:	bd10      	pop	{r4, pc}
 1a0:	20000438 	.word	0x20000438
 1a4:	00000000 	.word	0x00000000
 1a8:	00000ab4 	.word	0x00000ab4

000001ac <frame_dummy>:
 1ac:	b508      	push	{r3, lr}
 1ae:	4b08      	ldr	r3, [pc, #32]	; (1d0 <frame_dummy+0x24>)
 1b0:	b11b      	cbz	r3, 1ba <frame_dummy+0xe>
 1b2:	4808      	ldr	r0, [pc, #32]	; (1d4 <frame_dummy+0x28>)
 1b4:	4908      	ldr	r1, [pc, #32]	; (1d8 <frame_dummy+0x2c>)
 1b6:	f3af 8000 	nop.w
 1ba:	4808      	ldr	r0, [pc, #32]	; (1dc <frame_dummy+0x30>)
 1bc:	6803      	ldr	r3, [r0, #0]
 1be:	b913      	cbnz	r3, 1c6 <frame_dummy+0x1a>
 1c0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 1c4:	e7cc      	b.n	160 <register_tm_clones>
 1c6:	4b06      	ldr	r3, [pc, #24]	; (1e0 <frame_dummy+0x34>)
 1c8:	2b00      	cmp	r3, #0
 1ca:	d0f9      	beq.n	1c0 <frame_dummy+0x14>
 1cc:	4798      	blx	r3
 1ce:	e7f7      	b.n	1c0 <frame_dummy+0x14>
 1d0:	00000000 	.word	0x00000000
 1d4:	00000ab4 	.word	0x00000ab4
 1d8:	2000043c 	.word	0x2000043c
 1dc:	20000434 	.word	0x20000434
 1e0:	00000000 	.word	0x00000000

000001e4 <_mainCRTStartup>:
 1e4:	4b13      	ldr	r3, [pc, #76]	; (234 <_mainCRTStartup+0x50>)
 1e6:	2b00      	cmp	r3, #0
 1e8:	bf08      	it	eq
 1ea:	4b11      	ldreq	r3, [pc, #68]	; (230 <_mainCRTStartup+0x4c>)
 1ec:	469d      	mov	sp, r3
 1ee:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
 1f2:	2100      	movs	r1, #0
 1f4:	468b      	mov	fp, r1
 1f6:	460f      	mov	r7, r1
 1f8:	4811      	ldr	r0, [pc, #68]	; (240 <_mainCRTStartup+0x5c>)
 1fa:	4a12      	ldr	r2, [pc, #72]	; (244 <_mainCRTStartup+0x60>)
 1fc:	1a12      	subs	r2, r2, r0
 1fe:	f000 fadf 	bl	7c0 <memset>
 202:	4b0d      	ldr	r3, [pc, #52]	; (238 <_mainCRTStartup+0x54>)
 204:	2b00      	cmp	r3, #0
 206:	d000      	beq.n	20a <_mainCRTStartup+0x26>
 208:	4798      	blx	r3
 20a:	4b0c      	ldr	r3, [pc, #48]	; (23c <_mainCRTStartup+0x58>)
 20c:	2b00      	cmp	r3, #0
 20e:	d000      	beq.n	212 <_mainCRTStartup+0x2e>
 210:	4798      	blx	r3
 212:	2000      	movs	r0, #0
 214:	2100      	movs	r1, #0
 216:	0004      	movs	r4, r0
 218:	000d      	movs	r5, r1
 21a:	480b      	ldr	r0, [pc, #44]	; (248 <_mainCRTStartup+0x64>)
 21c:	f000 fa7c 	bl	718 <atexit>
 220:	f000 faa6 	bl	770 <__libc_init_array>
 224:	0020      	movs	r0, r4
 226:	0029      	movs	r1, r5
 228:	f000 f810 	bl	24c <main>
 22c:	f000 fa7a 	bl	724 <exit>
 230:	00080000 	.word	0x00080000
 234:	20000460 	.word	0x20000460
	...
 240:	20000438 	.word	0x20000438
 244:	20000460 	.word	0x20000460
 248:	00000745 	.word	0x00000745

0000024c <main>:
 24c:	b580      	push	{r7, lr}
 24e:	b082      	sub	sp, #8
 250:	af00      	add	r7, sp, #0
 252:	4828      	ldr	r0, [pc, #160]	; (2f4 <main+0xa8>)
 254:	210a      	movs	r1, #10
 256:	f000 f89b 	bl	390 <clear_all>
 25a:	4827      	ldr	r0, [pc, #156]	; (2f8 <main+0xac>)
 25c:	212b      	movs	r1, #43	; 0x2b
 25e:	2202      	movs	r2, #2
 260:	f000 f87c 	bl	35c <set_all>
 264:	4823      	ldr	r0, [pc, #140]	; (2f4 <main+0xa8>)
 266:	2100      	movs	r1, #0
 268:	2261      	movs	r2, #97	; 0x61
 26a:	f000 f847 	bl	2fc <set_value>
 26e:	4821      	ldr	r0, [pc, #132]	; (2f4 <main+0xa8>)
 270:	2109      	movs	r1, #9
 272:	f000 f863 	bl	33c <get_value>
 276:	4603      	mov	r3, r0
 278:	70fb      	strb	r3, [r7, #3]
 27a:	78fb      	ldrb	r3, [r7, #3]
 27c:	3327      	adds	r3, #39	; 0x27
 27e:	b2db      	uxtb	r3, r3
 280:	481c      	ldr	r0, [pc, #112]	; (2f4 <main+0xa8>)
 282:	2109      	movs	r1, #9
 284:	461a      	mov	r2, r3
 286:	f000 f839 	bl	2fc <set_value>
 28a:	481a      	ldr	r0, [pc, #104]	; (2f4 <main+0xa8>)
 28c:	2103      	movs	r1, #3
 28e:	2237      	movs	r2, #55	; 0x37
 290:	f000 f834 	bl	2fc <set_value>
 294:	4817      	ldr	r0, [pc, #92]	; (2f4 <main+0xa8>)
 296:	2101      	movs	r1, #1
 298:	2258      	movs	r2, #88	; 0x58
 29a:	f000 f82f 	bl	2fc <set_value>
 29e:	4815      	ldr	r0, [pc, #84]	; (2f4 <main+0xa8>)
 2a0:	2104      	movs	r1, #4
 2a2:	2232      	movs	r2, #50	; 0x32
 2a4:	f000 f82a 	bl	2fc <set_value>
 2a8:	4812      	ldr	r0, [pc, #72]	; (2f4 <main+0xa8>)
 2aa:	2101      	movs	r1, #1
 2ac:	f000 f846 	bl	33c <get_value>
 2b0:	4603      	mov	r3, r0
 2b2:	70fb      	strb	r3, [r7, #3]
 2b4:	480f      	ldr	r0, [pc, #60]	; (2f4 <main+0xa8>)
 2b6:	2102      	movs	r1, #2
 2b8:	2279      	movs	r2, #121	; 0x79
 2ba:	f000 f81f 	bl	2fc <set_value>
 2be:	78fb      	ldrb	r3, [r7, #3]
 2c0:	3b0c      	subs	r3, #12
 2c2:	b2db      	uxtb	r3, r3
 2c4:	480b      	ldr	r0, [pc, #44]	; (2f4 <main+0xa8>)
 2c6:	2107      	movs	r1, #7
 2c8:	461a      	mov	r2, r3
 2ca:	f000 f817 	bl	2fc <set_value>
 2ce:	4809      	ldr	r0, [pc, #36]	; (2f4 <main+0xa8>)
 2d0:	2105      	movs	r1, #5
 2d2:	225f      	movs	r2, #95	; 0x5f
 2d4:	f000 f812 	bl	2fc <set_value>
 2d8:	2300      	movs	r3, #0
 2da:	607b      	str	r3, [r7, #4]
 2dc:	e002      	b.n	2e4 <main+0x98>
 2de:	687b      	ldr	r3, [r7, #4]
 2e0:	3301      	adds	r3, #1
 2e2:	607b      	str	r3, [r7, #4]
 2e4:	687b      	ldr	r3, [r7, #4]
 2e6:	2b09      	cmp	r3, #9
 2e8:	d9f9      	bls.n	2de <main+0x92>
 2ea:	2300      	movs	r3, #0
 2ec:	4618      	mov	r0, r3
 2ee:	3708      	adds	r7, #8
 2f0:	46bd      	mov	sp, r7
 2f2:	bd80      	pop	{r7, pc}
 2f4:	20000454 	.word	0x20000454
 2f8:	2000045c 	.word	0x2000045c

000002fc <set_value>:
 2fc:	b480      	push	{r7}
 2fe:	b085      	sub	sp, #20
 300:	af00      	add	r7, sp, #0
 302:	60f8      	str	r0, [r7, #12]
 304:	60b9      	str	r1, [r7, #8]
 306:	4613      	mov	r3, r2
 308:	71fb      	strb	r3, [r7, #7]
 30a:	68fa      	ldr	r2, [r7, #12]
 30c:	68bb      	ldr	r3, [r7, #8]
 30e:	4413      	add	r3, r2
 310:	79fa      	ldrb	r2, [r7, #7]
 312:	701a      	strb	r2, [r3, #0]
 314:	3714      	adds	r7, #20
 316:	46bd      	mov	sp, r7
 318:	f85d 7b04 	ldr.w	r7, [sp], #4
 31c:	4770      	bx	lr
 31e:	bf00      	nop

00000320 <clear_value>:
 320:	b580      	push	{r7, lr}
 322:	b082      	sub	sp, #8
 324:	af00      	add	r7, sp, #0
 326:	6078      	str	r0, [r7, #4]
 328:	6039      	str	r1, [r7, #0]
 32a:	6878      	ldr	r0, [r7, #4]
 32c:	6839      	ldr	r1, [r7, #0]
 32e:	2200      	movs	r2, #0
 330:	f7ff ffe4 	bl	2fc <set_value>
 334:	3708      	adds	r7, #8
 336:	46bd      	mov	sp, r7
 338:	bd80      	pop	{r7, pc}
 33a:	bf00      	nop

0000033c <get_value>:
 33c:	b480      	push	{r7}
 33e:	b083      	sub	sp, #12
 340:	af00      	add	r7, sp, #0
 342:	6078      	str	r0, [r7, #4]
 344:	6039      	str	r1, [r7, #0]
 346:	687a      	ldr	r2, [r7, #4]
 348:	683b      	ldr	r3, [r7, #0]
 34a:	4413      	add	r3, r2
 34c:	781b      	ldrb	r3, [r3, #0]
 34e:	4618      	mov	r0, r3
 350:	370c      	adds	r7, #12
 352:	46bd      	mov	sp, r7
 354:	f85d 7b04 	ldr.w	r7, [sp], #4
 358:	4770      	bx	lr
 35a:	bf00      	nop

0000035c <set_all>:
 35c:	b580      	push	{r7, lr}
 35e:	b086      	sub	sp, #24
 360:	af00      	add	r7, sp, #0
 362:	60f8      	str	r0, [r7, #12]
 364:	460b      	mov	r3, r1
 366:	607a      	str	r2, [r7, #4]
 368:	72fb      	strb	r3, [r7, #11]
 36a:	2300      	movs	r3, #0
 36c:	617b      	str	r3, [r7, #20]
 36e:	e008      	b.n	382 <set_all+0x26>
 370:	7afb      	ldrb	r3, [r7, #11]
 372:	68f8      	ldr	r0, [r7, #12]
 374:	6979      	ldr	r1, [r7, #20]
 376:	461a      	mov	r2, r3
 378:	f7ff ffc0 	bl	2fc <set_value>
 37c:	697b      	ldr	r3, [r7, #20]
 37e:	3301      	adds	r3, #1
 380:	617b      	str	r3, [r7, #20]
 382:	697a      	ldr	r2, [r7, #20]
 384:	687b      	ldr	r3, [r7, #4]
 386:	429a      	cmp	r2, r3
 388:	d3f2      	bcc.n	370 <set_all+0x14>
 38a:	3718      	adds	r7, #24
 38c:	46bd      	mov	sp, r7
 38e:	bd80      	pop	{r7, pc}

00000390 <clear_all>:
 390:	b580      	push	{r7, lr}
 392:	b082      	sub	sp, #8
 394:	af00      	add	r7, sp, #0
 396:	6078      	str	r0, [r7, #4]
 398:	6039      	str	r1, [r7, #0]
 39a:	6878      	ldr	r0, [r7, #4]
 39c:	2100      	movs	r1, #0
 39e:	683a      	ldr	r2, [r7, #0]
 3a0:	f7ff ffdc 	bl	35c <set_all>
 3a4:	3708      	adds	r7, #8
 3a6:	46bd      	mov	sp, r7
 3a8:	bd80      	pop	{r7, pc}
 3aa:	bf00      	nop

000003ac <SystemCoreClockUpdate>:
 3ac:	b480      	push	{r7}
 3ae:	b089      	sub	sp, #36	; 0x24
 3b0:	af00      	add	r7, sp, #0
 3b2:	4bab      	ldr	r3, [pc, #684]	; (660 <SystemCoreClockUpdate+0x2b4>)
 3b4:	689b      	ldr	r3, [r3, #8]
 3b6:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 3ba:	0c1b      	lsrs	r3, r3, #16
 3bc:	60fb      	str	r3, [r7, #12]
 3be:	68fb      	ldr	r3, [r7, #12]
 3c0:	2201      	movs	r2, #1
 3c2:	fa02 f303 	lsl.w	r3, r2, r3
 3c6:	72fb      	strb	r3, [r7, #11]
 3c8:	4ba5      	ldr	r3, [pc, #660]	; (660 <SystemCoreClockUpdate+0x2b4>)
 3ca:	689b      	ldr	r3, [r3, #8]
 3cc:	f003 0307 	and.w	r3, r3, #7
 3d0:	607b      	str	r3, [r7, #4]
 3d2:	687b      	ldr	r3, [r7, #4]
 3d4:	2b05      	cmp	r3, #5
 3d6:	f200 813e 	bhi.w	656 <SystemCoreClockUpdate+0x2aa>
 3da:	a201      	add	r2, pc, #4	; (adr r2, 3e0 <SystemCoreClockUpdate+0x34>)
 3dc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 3e0:	000003f9 	.word	0x000003f9
 3e4:	0000047b 	.word	0x0000047b
 3e8:	0000048d 	.word	0x0000048d
 3ec:	000004bb 	.word	0x000004bb
 3f0:	000005cb 	.word	0x000005cb
 3f4:	000005db 	.word	0x000005db
 3f8:	4b9a      	ldr	r3, [pc, #616]	; (664 <SystemCoreClockUpdate+0x2b8>)
 3fa:	781b      	ldrb	r3, [r3, #0]
 3fc:	b2db      	uxtb	r3, r3
 3fe:	2b00      	cmp	r3, #0
 400:	d031      	beq.n	466 <SystemCoreClockUpdate+0xba>
 402:	4b97      	ldr	r3, [pc, #604]	; (660 <SystemCoreClockUpdate+0x2b4>)
 404:	f646 125a 	movw	r2, #26970	; 0x695a
 408:	601a      	str	r2, [r3, #0]
 40a:	4a95      	ldr	r2, [pc, #596]	; (660 <SystemCoreClockUpdate+0x2b4>)
 40c:	4b94      	ldr	r3, [pc, #592]	; (660 <SystemCoreClockUpdate+0x2b4>)
 40e:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 410:	f043 0301 	orr.w	r3, r3, #1
 414:	6513      	str	r3, [r2, #80]	; 0x50
 416:	4b92      	ldr	r3, [pc, #584]	; (660 <SystemCoreClockUpdate+0x2b4>)
 418:	2201      	movs	r2, #1
 41a:	601a      	str	r2, [r3, #0]
 41c:	4b91      	ldr	r3, [pc, #580]	; (664 <SystemCoreClockUpdate+0x2b8>)
 41e:	781b      	ldrb	r3, [r3, #0]
 420:	b2db      	uxtb	r3, r3
 422:	2b00      	cmp	r3, #0
 424:	d016      	beq.n	454 <SystemCoreClockUpdate+0xa8>
 426:	4b90      	ldr	r3, [pc, #576]	; (668 <SystemCoreClockUpdate+0x2bc>)
 428:	781b      	ldrb	r3, [r3, #0]
 42a:	b2db      	uxtb	r3, r3
 42c:	2b00      	cmp	r3, #0
 42e:	d008      	beq.n	442 <SystemCoreClockUpdate+0x96>
 430:	7afb      	ldrb	r3, [r7, #11]
 432:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 436:	fb92 f3f3 	sdiv	r3, r2, r3
 43a:	461a      	mov	r2, r3
 43c:	4b8b      	ldr	r3, [pc, #556]	; (66c <SystemCoreClockUpdate+0x2c0>)
 43e:	601a      	str	r2, [r3, #0]
 440:	e01a      	b.n	478 <SystemCoreClockUpdate+0xcc>
 442:	7afb      	ldrb	r3, [r7, #11]
 444:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 448:	fb92 f3f3 	sdiv	r3, r2, r3
 44c:	461a      	mov	r2, r3
 44e:	4b87      	ldr	r3, [pc, #540]	; (66c <SystemCoreClockUpdate+0x2c0>)
 450:	601a      	str	r2, [r3, #0]
 452:	e011      	b.n	478 <SystemCoreClockUpdate+0xcc>
 454:	7afb      	ldrb	r3, [r7, #11]
 456:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 45a:	fb92 f3f3 	sdiv	r3, r2, r3
 45e:	461a      	mov	r2, r3
 460:	4b82      	ldr	r3, [pc, #520]	; (66c <SystemCoreClockUpdate+0x2c0>)
 462:	601a      	str	r2, [r3, #0]
 464:	e0f7      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 466:	7afb      	ldrb	r3, [r7, #11]
 468:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 46c:	fb92 f3f3 	sdiv	r3, r2, r3
 470:	461a      	mov	r2, r3
 472:	4b7e      	ldr	r3, [pc, #504]	; (66c <SystemCoreClockUpdate+0x2c0>)
 474:	601a      	str	r2, [r3, #0]
 476:	e0ee      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 478:	e0ed      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 47a:	7afb      	ldrb	r3, [r7, #11]
 47c:	f242 7210 	movw	r2, #10000	; 0x2710
 480:	fb92 f3f3 	sdiv	r3, r2, r3
 484:	461a      	mov	r2, r3
 486:	4b79      	ldr	r3, [pc, #484]	; (66c <SystemCoreClockUpdate+0x2c0>)
 488:	601a      	str	r2, [r3, #0]
 48a:	e0e4      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 48c:	4b76      	ldr	r3, [pc, #472]	; (668 <SystemCoreClockUpdate+0x2bc>)
 48e:	781b      	ldrb	r3, [r3, #0]
 490:	b2db      	uxtb	r3, r3
 492:	2b00      	cmp	r3, #0
 494:	d008      	beq.n	4a8 <SystemCoreClockUpdate+0xfc>
 496:	7afb      	ldrb	r3, [r7, #11]
 498:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 49c:	fb92 f3f3 	sdiv	r3, r2, r3
 4a0:	461a      	mov	r2, r3
 4a2:	4b72      	ldr	r3, [pc, #456]	; (66c <SystemCoreClockUpdate+0x2c0>)
 4a4:	601a      	str	r2, [r3, #0]
 4a6:	e0d6      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 4a8:	7afb      	ldrb	r3, [r7, #11]
 4aa:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 4ae:	fb92 f3f3 	sdiv	r3, r2, r3
 4b2:	461a      	mov	r2, r3
 4b4:	4b6d      	ldr	r3, [pc, #436]	; (66c <SystemCoreClockUpdate+0x2c0>)
 4b6:	601a      	str	r2, [r3, #0]
 4b8:	e0cd      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 4ba:	4b69      	ldr	r3, [pc, #420]	; (660 <SystemCoreClockUpdate+0x2b4>)
 4bc:	685b      	ldr	r3, [r3, #4]
 4be:	b29b      	uxth	r3, r3
 4c0:	f3c3 0309 	ubfx	r3, r3, #0, #10
 4c4:	827b      	strh	r3, [r7, #18]
 4c6:	4b66      	ldr	r3, [pc, #408]	; (660 <SystemCoreClockUpdate+0x2b4>)
 4c8:	685b      	ldr	r3, [r3, #4]
 4ca:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 4ce:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4d2:	d018      	beq.n	506 <SystemCoreClockUpdate+0x15a>
 4d4:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4d8:	d805      	bhi.n	4e6 <SystemCoreClockUpdate+0x13a>
 4da:	2b00      	cmp	r3, #0
 4dc:	d00d      	beq.n	4fa <SystemCoreClockUpdate+0x14e>
 4de:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 4e2:	d00d      	beq.n	500 <SystemCoreClockUpdate+0x154>
 4e4:	e01b      	b.n	51e <SystemCoreClockUpdate+0x172>
 4e6:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 4ea:	d012      	beq.n	512 <SystemCoreClockUpdate+0x166>
 4ec:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 4f0:	d012      	beq.n	518 <SystemCoreClockUpdate+0x16c>
 4f2:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 4f6:	d009      	beq.n	50c <SystemCoreClockUpdate+0x160>
 4f8:	e011      	b.n	51e <SystemCoreClockUpdate+0x172>
 4fa:	4b5d      	ldr	r3, [pc, #372]	; (670 <SystemCoreClockUpdate+0x2c4>)
 4fc:	617b      	str	r3, [r7, #20]
 4fe:	e00e      	b.n	51e <SystemCoreClockUpdate+0x172>
 500:	4b5c      	ldr	r3, [pc, #368]	; (674 <SystemCoreClockUpdate+0x2c8>)
 502:	617b      	str	r3, [r7, #20]
 504:	e00b      	b.n	51e <SystemCoreClockUpdate+0x172>
 506:	4b5c      	ldr	r3, [pc, #368]	; (678 <SystemCoreClockUpdate+0x2cc>)
 508:	617b      	str	r3, [r7, #20]
 50a:	e008      	b.n	51e <SystemCoreClockUpdate+0x172>
 50c:	4b5b      	ldr	r3, [pc, #364]	; (67c <SystemCoreClockUpdate+0x2d0>)
 50e:	617b      	str	r3, [r7, #20]
 510:	e005      	b.n	51e <SystemCoreClockUpdate+0x172>
 512:	4b5b      	ldr	r3, [pc, #364]	; (680 <SystemCoreClockUpdate+0x2d4>)
 514:	617b      	str	r3, [r7, #20]
 516:	e002      	b.n	51e <SystemCoreClockUpdate+0x172>
 518:	4b5a      	ldr	r3, [pc, #360]	; (684 <SystemCoreClockUpdate+0x2d8>)
 51a:	617b      	str	r3, [r7, #20]
 51c:	bf00      	nop
 51e:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 522:	2b00      	cmp	r3, #0
 524:	d103      	bne.n	52e <SystemCoreClockUpdate+0x182>
 526:	4a51      	ldr	r2, [pc, #324]	; (66c <SystemCoreClockUpdate+0x2c0>)
 528:	697b      	ldr	r3, [r7, #20]
 52a:	6013      	str	r3, [r2, #0]
 52c:	e093      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 52e:	8a7b      	ldrh	r3, [r7, #18]
 530:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 534:	2b00      	cmp	r3, #0
 536:	d005      	beq.n	544 <SystemCoreClockUpdate+0x198>
 538:	8a7b      	ldrh	r3, [r7, #18]
 53a:	ea6f 5303 	mvn.w	r3, r3, lsl #20
 53e:	ea6f 5313 	mvn.w	r3, r3, lsr #20
 542:	827b      	strh	r3, [r7, #18]
 544:	4b50      	ldr	r3, [pc, #320]	; (688 <SystemCoreClockUpdate+0x2dc>)
 546:	781b      	ldrb	r3, [r3, #0]
 548:	b2db      	uxtb	r3, r3
 54a:	2b00      	cmp	r3, #0
 54c:	d006      	beq.n	55c <SystemCoreClockUpdate+0x1b0>
 54e:	4b4f      	ldr	r3, [pc, #316]	; (68c <SystemCoreClockUpdate+0x2e0>)
 550:	681b      	ldr	r3, [r3, #0]
 552:	61fb      	str	r3, [r7, #28]
 554:	4b4e      	ldr	r3, [pc, #312]	; (690 <SystemCoreClockUpdate+0x2e4>)
 556:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 558:	61bb      	str	r3, [r7, #24]
 55a:	e005      	b.n	568 <SystemCoreClockUpdate+0x1bc>
 55c:	4b4d      	ldr	r3, [pc, #308]	; (694 <SystemCoreClockUpdate+0x2e8>)
 55e:	681b      	ldr	r3, [r3, #0]
 560:	61fb      	str	r3, [r7, #28]
 562:	4b4b      	ldr	r3, [pc, #300]	; (690 <SystemCoreClockUpdate+0x2e4>)
 564:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 566:	61bb      	str	r3, [r7, #24]
 568:	697b      	ldr	r3, [r7, #20]
 56a:	ee07 3a90 	vmov	s15, r3
 56e:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 572:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 576:	ee07 3a90 	vmov	s15, r3
 57a:	eef8 6ae7 	vcvt.f32.s32	s13, s15
 57e:	edd7 7a07 	vldr	s15, [r7, #28]
 582:	ee66 6aa7 	vmul.f32	s13, s13, s15
 586:	69bb      	ldr	r3, [r7, #24]
 588:	f5c3 7340 	rsb	r3, r3, #768	; 0x300
 58c:	ee07 3a90 	vmov	s15, r3
 590:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
 594:	edd7 7a07 	vldr	s15, [r7, #28]
 598:	ee66 7a27 	vmul.f32	s15, s12, s15
 59c:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
 5a0:	ee77 7a86 	vadd.f32	s15, s15, s12
 5a4:	eeb2 6a00 	vmov.f32	s12, #32	; 0x41000000  8.0
 5a8:	ee67 7a86 	vmul.f32	s15, s15, s12
 5ac:	eec6 7aa7 	vdiv.f32	s15, s13, s15
 5b0:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
 5b4:	ee76 7ae7 	vsub.f32	s15, s13, s15
 5b8:	eec7 7a27 	vdiv.f32	s15, s14, s15
 5bc:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 5c0:	ee17 2a90 	vmov	r2, s15
 5c4:	4b29      	ldr	r3, [pc, #164]	; (66c <SystemCoreClockUpdate+0x2c0>)
 5c6:	601a      	str	r2, [r3, #0]
 5c8:	e045      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 5ca:	7afb      	ldrb	r3, [r7, #11]
 5cc:	4a2c      	ldr	r2, [pc, #176]	; (680 <SystemCoreClockUpdate+0x2d4>)
 5ce:	fb92 f3f3 	sdiv	r3, r2, r3
 5d2:	461a      	mov	r2, r3
 5d4:	4b25      	ldr	r3, [pc, #148]	; (66c <SystemCoreClockUpdate+0x2c0>)
 5d6:	601a      	str	r2, [r3, #0]
 5d8:	e03d      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 5da:	4b2f      	ldr	r3, [pc, #188]	; (698 <SystemCoreClockUpdate+0x2ec>)
 5dc:	781b      	ldrb	r3, [r3, #0]
 5de:	b2db      	uxtb	r3, r3
 5e0:	2b00      	cmp	r3, #0
 5e2:	d030      	beq.n	646 <SystemCoreClockUpdate+0x29a>
 5e4:	4b1e      	ldr	r3, [pc, #120]	; (660 <SystemCoreClockUpdate+0x2b4>)
 5e6:	f646 125a 	movw	r2, #26970	; 0x695a
 5ea:	601a      	str	r2, [r3, #0]
 5ec:	4a1c      	ldr	r2, [pc, #112]	; (660 <SystemCoreClockUpdate+0x2b4>)
 5ee:	4b1c      	ldr	r3, [pc, #112]	; (660 <SystemCoreClockUpdate+0x2b4>)
 5f0:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 5f2:	f043 0302 	orr.w	r3, r3, #2
 5f6:	6513      	str	r3, [r2, #80]	; 0x50
 5f8:	4b19      	ldr	r3, [pc, #100]	; (660 <SystemCoreClockUpdate+0x2b4>)
 5fa:	2201      	movs	r2, #1
 5fc:	601a      	str	r2, [r3, #0]
 5fe:	4b26      	ldr	r3, [pc, #152]	; (698 <SystemCoreClockUpdate+0x2ec>)
 600:	781b      	ldrb	r3, [r3, #0]
 602:	b2db      	uxtb	r3, r3
 604:	2b00      	cmp	r3, #0
 606:	d016      	beq.n	636 <SystemCoreClockUpdate+0x28a>
 608:	4b17      	ldr	r3, [pc, #92]	; (668 <SystemCoreClockUpdate+0x2bc>)
 60a:	781b      	ldrb	r3, [r3, #0]
 60c:	b2db      	uxtb	r3, r3
 60e:	2b00      	cmp	r3, #0
 610:	d008      	beq.n	624 <SystemCoreClockUpdate+0x278>
 612:	7afb      	ldrb	r3, [r7, #11]
 614:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 618:	fb92 f3f3 	sdiv	r3, r2, r3
 61c:	461a      	mov	r2, r3
 61e:	4b13      	ldr	r3, [pc, #76]	; (66c <SystemCoreClockUpdate+0x2c0>)
 620:	601a      	str	r2, [r3, #0]
 622:	e017      	b.n	654 <SystemCoreClockUpdate+0x2a8>
 624:	7afb      	ldrb	r3, [r7, #11]
 626:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 62a:	fb92 f3f3 	sdiv	r3, r2, r3
 62e:	461a      	mov	r2, r3
 630:	4b0e      	ldr	r3, [pc, #56]	; (66c <SystemCoreClockUpdate+0x2c0>)
 632:	601a      	str	r2, [r3, #0]
 634:	e00e      	b.n	654 <SystemCoreClockUpdate+0x2a8>
 636:	7afb      	ldrb	r3, [r7, #11]
 638:	4a12      	ldr	r2, [pc, #72]	; (684 <SystemCoreClockUpdate+0x2d8>)
 63a:	fb92 f3f3 	sdiv	r3, r2, r3
 63e:	461a      	mov	r2, r3
 640:	4b0a      	ldr	r3, [pc, #40]	; (66c <SystemCoreClockUpdate+0x2c0>)
 642:	601a      	str	r2, [r3, #0]
 644:	e007      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 646:	7afb      	ldrb	r3, [r7, #11]
 648:	4a0e      	ldr	r2, [pc, #56]	; (684 <SystemCoreClockUpdate+0x2d8>)
 64a:	fb92 f3f3 	sdiv	r3, r2, r3
 64e:	461a      	mov	r2, r3
 650:	4b06      	ldr	r3, [pc, #24]	; (66c <SystemCoreClockUpdate+0x2c0>)
 652:	601a      	str	r2, [r3, #0]
 654:	bf00      	nop
 656:	3724      	adds	r7, #36	; 0x24
 658:	46bd      	mov	sp, r7
 65a:	f85d 7b04 	ldr.w	r7, [sp], #4
 65e:	4770      	bx	lr
 660:	40010400 	.word	0x40010400
 664:	42208900 	.word	0x42208900
 668:	4220863c 	.word	0x4220863c
 66c:	20000004 	.word	0x20000004
 670:	0016e360 	.word	0x0016e360
 674:	002dc6c0 	.word	0x002dc6c0
 678:	005b8d80 	.word	0x005b8d80
 67c:	00b71b00 	.word	0x00b71b00
 680:	016e3600 	.word	0x016e3600
 684:	02dc6c00 	.word	0x02dc6c00
 688:	422080d8 	.word	0x422080d8
 68c:	00201084 	.word	0x00201084
 690:	00201000 	.word	0x00201000
 694:	00201064 	.word	0x00201064
 698:	42208904 	.word	0x42208904

0000069c <SystemInit>:
 69c:	b480      	push	{r7}
 69e:	af00      	add	r7, sp, #0
 6a0:	4a18      	ldr	r2, [pc, #96]	; (704 <SystemInit+0x68>)
 6a2:	4b18      	ldr	r3, [pc, #96]	; (704 <SystemInit+0x68>)
 6a4:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 6a8:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 6ac:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 6b0:	4b15      	ldr	r3, [pc, #84]	; (708 <SystemInit+0x6c>)
 6b2:	f44f 42b5 	mov.w	r2, #23168	; 0x5a80
 6b6:	819a      	strh	r2, [r3, #12]
 6b8:	4b14      	ldr	r3, [pc, #80]	; (70c <SystemInit+0x70>)
 6ba:	2280      	movs	r2, #128	; 0x80
 6bc:	615a      	str	r2, [r3, #20]
 6be:	4b14      	ldr	r3, [pc, #80]	; (710 <SystemInit+0x74>)
 6c0:	f646 125a 	movw	r2, #26970	; 0x695a
 6c4:	601a      	str	r2, [r3, #0]
 6c6:	4b12      	ldr	r3, [pc, #72]	; (710 <SystemInit+0x74>)
 6c8:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 6cc:	605a      	str	r2, [r3, #4]
 6ce:	4a10      	ldr	r2, [pc, #64]	; (710 <SystemInit+0x74>)
 6d0:	4b0f      	ldr	r3, [pc, #60]	; (710 <SystemInit+0x74>)
 6d2:	689b      	ldr	r3, [r3, #8]
 6d4:	f023 1307 	bic.w	r3, r3, #458759	; 0x70007
 6d8:	f043 0303 	orr.w	r3, r3, #3
 6dc:	6093      	str	r3, [r2, #8]
 6de:	4b0c      	ldr	r3, [pc, #48]	; (710 <SystemInit+0x74>)
 6e0:	2200      	movs	r2, #0
 6e2:	601a      	str	r2, [r3, #0]
 6e4:	4a0b      	ldr	r2, [pc, #44]	; (714 <SystemInit+0x78>)
 6e6:	4b0b      	ldr	r3, [pc, #44]	; (714 <SystemInit+0x78>)
 6e8:	691b      	ldr	r3, [r3, #16]
 6ea:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 6ee:	6113      	str	r3, [r2, #16]
 6f0:	4a08      	ldr	r2, [pc, #32]	; (714 <SystemInit+0x78>)
 6f2:	4b08      	ldr	r3, [pc, #32]	; (714 <SystemInit+0x78>)
 6f4:	695b      	ldr	r3, [r3, #20]
 6f6:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 6fa:	6153      	str	r3, [r2, #20]
 6fc:	46bd      	mov	sp, r7
 6fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 702:	4770      	bx	lr
 704:	e000ed00 	.word	0xe000ed00
 708:	40004800 	.word	0x40004800
 70c:	e0043000 	.word	0xe0043000
 710:	40010400 	.word	0x40010400
 714:	40011000 	.word	0x40011000

00000718 <atexit>:
 718:	4601      	mov	r1, r0
 71a:	2000      	movs	r0, #0
 71c:	4602      	mov	r2, r0
 71e:	4603      	mov	r3, r0
 720:	f000 b89c 	b.w	85c <__register_exitproc>

00000724 <exit>:
 724:	b508      	push	{r3, lr}
 726:	2100      	movs	r1, #0
 728:	4604      	mov	r4, r0
 72a:	f000 f8f3 	bl	914 <__call_exitprocs>
 72e:	4b04      	ldr	r3, [pc, #16]	; (740 <exit+0x1c>)
 730:	6818      	ldr	r0, [r3, #0]
 732:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 734:	b103      	cbz	r3, 738 <exit+0x14>
 736:	4798      	blx	r3
 738:	4620      	mov	r0, r4
 73a:	f000 f955 	bl	9e8 <_exit>
 73e:	bf00      	nop
 740:	00000ab0 	.word	0x00000ab0

00000744 <__libc_fini_array>:
 744:	b538      	push	{r3, r4, r5, lr}
 746:	4b08      	ldr	r3, [pc, #32]	; (768 <__libc_fini_array+0x24>)
 748:	4d08      	ldr	r5, [pc, #32]	; (76c <__libc_fini_array+0x28>)
 74a:	1aed      	subs	r5, r5, r3
 74c:	10ac      	asrs	r4, r5, #2
 74e:	bf18      	it	ne
 750:	18ed      	addne	r5, r5, r3
 752:	d005      	beq.n	760 <__libc_fini_array+0x1c>
 754:	3c01      	subs	r4, #1
 756:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 75a:	4798      	blx	r3
 75c:	2c00      	cmp	r4, #0
 75e:	d1f9      	bne.n	754 <__libc_fini_array+0x10>
 760:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 764:	f000 b94c 	b.w	a00 <_fini>
	...

00000770 <__libc_init_array>:
 770:	b570      	push	{r4, r5, r6, lr}
 772:	4e0f      	ldr	r6, [pc, #60]	; (7b0 <__libc_init_array+0x40>)
 774:	4d0f      	ldr	r5, [pc, #60]	; (7b4 <__libc_init_array+0x44>)
 776:	1b76      	subs	r6, r6, r5
 778:	10b6      	asrs	r6, r6, #2
 77a:	bf18      	it	ne
 77c:	2400      	movne	r4, #0
 77e:	d005      	beq.n	78c <__libc_init_array+0x1c>
 780:	3401      	adds	r4, #1
 782:	f855 3b04 	ldr.w	r3, [r5], #4
 786:	4798      	blx	r3
 788:	42a6      	cmp	r6, r4
 78a:	d1f9      	bne.n	780 <__libc_init_array+0x10>
 78c:	4e0a      	ldr	r6, [pc, #40]	; (7b8 <__libc_init_array+0x48>)
 78e:	4d0b      	ldr	r5, [pc, #44]	; (7bc <__libc_init_array+0x4c>)
 790:	1b76      	subs	r6, r6, r5
 792:	f000 f92f 	bl	9f4 <_init>
 796:	10b6      	asrs	r6, r6, #2
 798:	bf18      	it	ne
 79a:	2400      	movne	r4, #0
 79c:	d006      	beq.n	7ac <__libc_init_array+0x3c>
 79e:	3401      	adds	r4, #1
 7a0:	f855 3b04 	ldr.w	r3, [r5], #4
 7a4:	4798      	blx	r3
 7a6:	42a6      	cmp	r6, r4
 7a8:	d1f9      	bne.n	79e <__libc_init_array+0x2e>
 7aa:	bd70      	pop	{r4, r5, r6, pc}
 7ac:	bd70      	pop	{r4, r5, r6, pc}
 7ae:	bf00      	nop
	...
 7b8:	000009f4 	.word	0x000009f4
 7bc:	000009ec 	.word	0x000009ec

000007c0 <memset>:
 7c0:	b470      	push	{r4, r5, r6}
 7c2:	0784      	lsls	r4, r0, #30
 7c4:	d046      	beq.n	854 <memset+0x94>
 7c6:	1e54      	subs	r4, r2, #1
 7c8:	2a00      	cmp	r2, #0
 7ca:	d041      	beq.n	850 <memset+0x90>
 7cc:	b2cd      	uxtb	r5, r1
 7ce:	4603      	mov	r3, r0
 7d0:	e002      	b.n	7d8 <memset+0x18>
 7d2:	1e62      	subs	r2, r4, #1
 7d4:	b3e4      	cbz	r4, 850 <memset+0x90>
 7d6:	4614      	mov	r4, r2
 7d8:	f803 5b01 	strb.w	r5, [r3], #1
 7dc:	079a      	lsls	r2, r3, #30
 7de:	d1f8      	bne.n	7d2 <memset+0x12>
 7e0:	2c03      	cmp	r4, #3
 7e2:	d92e      	bls.n	842 <memset+0x82>
 7e4:	b2cd      	uxtb	r5, r1
 7e6:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 7ea:	2c0f      	cmp	r4, #15
 7ec:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 7f0:	d919      	bls.n	826 <memset+0x66>
 7f2:	f103 0210 	add.w	r2, r3, #16
 7f6:	4626      	mov	r6, r4
 7f8:	3e10      	subs	r6, #16
 7fa:	2e0f      	cmp	r6, #15
 7fc:	f842 5c10 	str.w	r5, [r2, #-16]
 800:	f842 5c0c 	str.w	r5, [r2, #-12]
 804:	f842 5c08 	str.w	r5, [r2, #-8]
 808:	f842 5c04 	str.w	r5, [r2, #-4]
 80c:	f102 0210 	add.w	r2, r2, #16
 810:	d8f2      	bhi.n	7f8 <memset+0x38>
 812:	f1a4 0210 	sub.w	r2, r4, #16
 816:	f022 020f 	bic.w	r2, r2, #15
 81a:	f004 040f 	and.w	r4, r4, #15
 81e:	3210      	adds	r2, #16
 820:	2c03      	cmp	r4, #3
 822:	4413      	add	r3, r2
 824:	d90d      	bls.n	842 <memset+0x82>
 826:	461e      	mov	r6, r3
 828:	4622      	mov	r2, r4
 82a:	3a04      	subs	r2, #4
 82c:	2a03      	cmp	r2, #3
 82e:	f846 5b04 	str.w	r5, [r6], #4
 832:	d8fa      	bhi.n	82a <memset+0x6a>
 834:	1f22      	subs	r2, r4, #4
 836:	f022 0203 	bic.w	r2, r2, #3
 83a:	3204      	adds	r2, #4
 83c:	4413      	add	r3, r2
 83e:	f004 0403 	and.w	r4, r4, #3
 842:	b12c      	cbz	r4, 850 <memset+0x90>
 844:	b2c9      	uxtb	r1, r1
 846:	441c      	add	r4, r3
 848:	f803 1b01 	strb.w	r1, [r3], #1
 84c:	42a3      	cmp	r3, r4
 84e:	d1fb      	bne.n	848 <memset+0x88>
 850:	bc70      	pop	{r4, r5, r6}
 852:	4770      	bx	lr
 854:	4614      	mov	r4, r2
 856:	4603      	mov	r3, r0
 858:	e7c2      	b.n	7e0 <memset+0x20>
 85a:	bf00      	nop

0000085c <__register_exitproc>:
 85c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 860:	4c25      	ldr	r4, [pc, #148]	; (8f8 <__register_exitproc+0x9c>)
 862:	6825      	ldr	r5, [r4, #0]
 864:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 868:	4606      	mov	r6, r0
 86a:	4688      	mov	r8, r1
 86c:	4692      	mov	sl, r2
 86e:	4699      	mov	r9, r3
 870:	b3cc      	cbz	r4, 8e6 <__register_exitproc+0x8a>
 872:	6860      	ldr	r0, [r4, #4]
 874:	281f      	cmp	r0, #31
 876:	dc18      	bgt.n	8aa <__register_exitproc+0x4e>
 878:	1c43      	adds	r3, r0, #1
 87a:	b17e      	cbz	r6, 89c <__register_exitproc+0x40>
 87c:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 880:	2101      	movs	r1, #1
 882:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 886:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 88a:	fa01 f200 	lsl.w	r2, r1, r0
 88e:	4317      	orrs	r7, r2
 890:	2e02      	cmp	r6, #2
 892:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 896:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 89a:	d01e      	beq.n	8da <__register_exitproc+0x7e>
 89c:	3002      	adds	r0, #2
 89e:	6063      	str	r3, [r4, #4]
 8a0:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 8a4:	2000      	movs	r0, #0
 8a6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8aa:	4b14      	ldr	r3, [pc, #80]	; (8fc <__register_exitproc+0xa0>)
 8ac:	b303      	cbz	r3, 8f0 <__register_exitproc+0x94>
 8ae:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8b2:	f3af 8000 	nop.w
 8b6:	4604      	mov	r4, r0
 8b8:	b1d0      	cbz	r0, 8f0 <__register_exitproc+0x94>
 8ba:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 8be:	2700      	movs	r7, #0
 8c0:	e880 0088 	stmia.w	r0, {r3, r7}
 8c4:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8c8:	4638      	mov	r0, r7
 8ca:	2301      	movs	r3, #1
 8cc:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8d0:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 8d4:	2e00      	cmp	r6, #0
 8d6:	d0e1      	beq.n	89c <__register_exitproc+0x40>
 8d8:	e7d0      	b.n	87c <__register_exitproc+0x20>
 8da:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 8de:	430a      	orrs	r2, r1
 8e0:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 8e4:	e7da      	b.n	89c <__register_exitproc+0x40>
 8e6:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8ea:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8ee:	e7c0      	b.n	872 <__register_exitproc+0x16>
 8f0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8f4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8f8:	00000ab0 	.word	0x00000ab0
 8fc:	00000000 	.word	0x00000000

00000900 <register_fini>:
 900:	4b02      	ldr	r3, [pc, #8]	; (90c <register_fini+0xc>)
 902:	b113      	cbz	r3, 90a <register_fini+0xa>
 904:	4802      	ldr	r0, [pc, #8]	; (910 <register_fini+0x10>)
 906:	f7ff bf07 	b.w	718 <atexit>
 90a:	4770      	bx	lr
 90c:	00000000 	.word	0x00000000
 910:	00000745 	.word	0x00000745

00000914 <__call_exitprocs>:
 914:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 918:	4b31      	ldr	r3, [pc, #196]	; (9e0 <__call_exitprocs+0xcc>)
 91a:	b083      	sub	sp, #12
 91c:	681b      	ldr	r3, [r3, #0]
 91e:	9300      	str	r3, [sp, #0]
 920:	f503 73a4 	add.w	r3, r3, #328	; 0x148
 924:	4681      	mov	r9, r0
 926:	460e      	mov	r6, r1
 928:	9301      	str	r3, [sp, #4]
 92a:	9b00      	ldr	r3, [sp, #0]
 92c:	f8d3 7148 	ldr.w	r7, [r3, #328]	; 0x148
 930:	b327      	cbz	r7, 97c <__call_exitprocs+0x68>
 932:	f8dd a004 	ldr.w	sl, [sp, #4]
 936:	687c      	ldr	r4, [r7, #4]
 938:	1e65      	subs	r5, r4, #1
 93a:	d40e      	bmi.n	95a <__call_exitprocs+0x46>
 93c:	3401      	adds	r4, #1
 93e:	eb07 0484 	add.w	r4, r7, r4, lsl #2
 942:	f04f 0800 	mov.w	r8, #0
 946:	b1e6      	cbz	r6, 982 <__call_exitprocs+0x6e>
 948:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 94c:	42b3      	cmp	r3, r6
 94e:	d018      	beq.n	982 <__call_exitprocs+0x6e>
 950:	3d01      	subs	r5, #1
 952:	1c6b      	adds	r3, r5, #1
 954:	f1a4 0404 	sub.w	r4, r4, #4
 958:	d1f5      	bne.n	946 <__call_exitprocs+0x32>
 95a:	4b22      	ldr	r3, [pc, #136]	; (9e4 <__call_exitprocs+0xd0>)
 95c:	b173      	cbz	r3, 97c <__call_exitprocs+0x68>
 95e:	687b      	ldr	r3, [r7, #4]
 960:	2b00      	cmp	r3, #0
 962:	d136      	bne.n	9d2 <__call_exitprocs+0xbe>
 964:	683b      	ldr	r3, [r7, #0]
 966:	2b00      	cmp	r3, #0
 968:	d034      	beq.n	9d4 <__call_exitprocs+0xc0>
 96a:	4638      	mov	r0, r7
 96c:	f8ca 3000 	str.w	r3, [sl]
 970:	f3af 8000 	nop.w
 974:	f8da 7000 	ldr.w	r7, [sl]
 978:	2f00      	cmp	r7, #0
 97a:	d1dc      	bne.n	936 <__call_exitprocs+0x22>
 97c:	b003      	add	sp, #12
 97e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 982:	687b      	ldr	r3, [r7, #4]
 984:	6822      	ldr	r2, [r4, #0]
 986:	3b01      	subs	r3, #1
 988:	42ab      	cmp	r3, r5
 98a:	bf0c      	ite	eq
 98c:	607d      	streq	r5, [r7, #4]
 98e:	f8c4 8000 	strne.w	r8, [r4]
 992:	2a00      	cmp	r2, #0
 994:	d0dc      	beq.n	950 <__call_exitprocs+0x3c>
 996:	f8d7 3188 	ldr.w	r3, [r7, #392]	; 0x188
 99a:	f8d7 b004 	ldr.w	fp, [r7, #4]
 99e:	2101      	movs	r1, #1
 9a0:	40a9      	lsls	r1, r5
 9a2:	4219      	tst	r1, r3
 9a4:	d108      	bne.n	9b8 <__call_exitprocs+0xa4>
 9a6:	4790      	blx	r2
 9a8:	687b      	ldr	r3, [r7, #4]
 9aa:	455b      	cmp	r3, fp
 9ac:	d1bd      	bne.n	92a <__call_exitprocs+0x16>
 9ae:	f8da 3000 	ldr.w	r3, [sl]
 9b2:	42bb      	cmp	r3, r7
 9b4:	d0cc      	beq.n	950 <__call_exitprocs+0x3c>
 9b6:	e7b8      	b.n	92a <__call_exitprocs+0x16>
 9b8:	f8d7 318c 	ldr.w	r3, [r7, #396]	; 0x18c
 9bc:	4219      	tst	r1, r3
 9be:	d104      	bne.n	9ca <__call_exitprocs+0xb6>
 9c0:	4648      	mov	r0, r9
 9c2:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 9c6:	4790      	blx	r2
 9c8:	e7ee      	b.n	9a8 <__call_exitprocs+0x94>
 9ca:	f8d4 0080 	ldr.w	r0, [r4, #128]	; 0x80
 9ce:	4790      	blx	r2
 9d0:	e7ea      	b.n	9a8 <__call_exitprocs+0x94>
 9d2:	683b      	ldr	r3, [r7, #0]
 9d4:	46ba      	mov	sl, r7
 9d6:	461f      	mov	r7, r3
 9d8:	2f00      	cmp	r7, #0
 9da:	d1ac      	bne.n	936 <__call_exitprocs+0x22>
 9dc:	e7ce      	b.n	97c <__call_exitprocs+0x68>
 9de:	bf00      	nop
 9e0:	00000ab0 	.word	0x00000ab0
 9e4:	00000000 	.word	0x00000000

000009e8 <_exit>:
 9e8:	e7fe      	b.n	9e8 <_exit>
 9ea:	bf00      	nop

000009ec <__init_array_start>:
 9ec:	000001ad 	.word	0x000001ad
 9f0:	00000901 	.word	0x00000901

000009f4 <_init>:
 9f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 9f6:	bf00      	nop
 9f8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 9fa:	bc08      	pop	{r3}
 9fc:	469e      	mov	lr, r3
 9fe:	4770      	bx	lr

00000a00 <_fini>:
 a00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 a02:	bf00      	nop

00000a04 <__do_global_dtors_aux_fini_array_entry>:
 a04:	0185 0000 bcf8 bc08 469e 4770               .........FpG

Disassembly of section .text:Reset_Handler:

00000a10 <Reset_Handler>:
 a10:	4668      	mov	r0, sp
 a12:	f020 0107 	bic.w	r1, r0, #7
 a16:	468d      	mov	sp, r1
 a18:	b581      	push	{r0, r7, lr}
 a1a:	b083      	sub	sp, #12
 a1c:	af00      	add	r7, sp, #0
 a1e:	4b12      	ldr	r3, [pc, #72]	; (a68 <zero_loop+0x20>)
 a20:	607b      	str	r3, [r7, #4]
 a22:	4b12      	ldr	r3, [pc, #72]	; (a6c <zero_loop+0x24>)
 a24:	603b      	str	r3, [r7, #0]
 a26:	e007      	b.n	a38 <Reset_Handler+0x28>
 a28:	683b      	ldr	r3, [r7, #0]
 a2a:	1d1a      	adds	r2, r3, #4
 a2c:	603a      	str	r2, [r7, #0]
 a2e:	687a      	ldr	r2, [r7, #4]
 a30:	1d11      	adds	r1, r2, #4
 a32:	6079      	str	r1, [r7, #4]
 a34:	6812      	ldr	r2, [r2, #0]
 a36:	601a      	str	r2, [r3, #0]
 a38:	683b      	ldr	r3, [r7, #0]
 a3a:	4a0d      	ldr	r2, [pc, #52]	; (a70 <zero_loop+0x28>)
 a3c:	4293      	cmp	r3, r2
 a3e:	d3f3      	bcc.n	a28 <Reset_Handler+0x18>
 a40:	480c      	ldr	r0, [pc, #48]	; (a74 <zero_loop+0x2c>)
 a42:	490d      	ldr	r1, [pc, #52]	; (a78 <zero_loop+0x30>)
 a44:	f04f 0200 	mov.w	r2, #0

00000a48 <zero_loop>:
 a48:	4288      	cmp	r0, r1
 a4a:	bfb8      	it	lt
 a4c:	f840 2b04 	strlt.w	r2, [r0], #4
 a50:	dbfa      	blt.n	a48 <zero_loop>
 a52:	f7ff fe23 	bl	69c <SystemInit>
 a56:	f7ff fbf9 	bl	24c <main>
 a5a:	370c      	adds	r7, #12
 a5c:	46bd      	mov	sp, r7
 a5e:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
 a62:	4685      	mov	sp, r0
 a64:	4770      	bx	lr
 a66:	bf00      	nop
 a68:	00000ac0 	.word	0x00000ac0
 a6c:	20000000 	.word	0x20000000
 a70:	20000434 	.word	0x20000434
 a74:	20000438 	.word	0x20000438
 a78:	20000460 	.word	0x20000460

Disassembly of section .text:NMI_Handler:

00000a7c <NMI_Handler>:
 a7c:	4668      	mov	r0, sp
 a7e:	f020 0107 	bic.w	r1, r0, #7
 a82:	468d      	mov	sp, r1
 a84:	b481      	push	{r0, r7}
 a86:	af00      	add	r7, sp, #0
 a88:	e7fe      	b.n	a88 <NMI_Handler+0xc>
 a8a:	bf00      	nop

Disassembly of section .text:HardFault_Handler:

00000a8c <HardFault_Handler>:
 a8c:	4668      	mov	r0, sp
 a8e:	f020 0107 	bic.w	r1, r0, #7
 a92:	468d      	mov	sp, r1
 a94:	b481      	push	{r0, r7}
 a96:	af00      	add	r7, sp, #0
 a98:	e7fe      	b.n	a98 <HardFault_Handler+0xc>
 a9a:	bf00      	nop

Disassembly of section .text:Default_Handler:

00000a9c <Default_Handler>:
 a9c:	4668      	mov	r0, sp
 a9e:	f020 0107 	bic.w	r1, r0, #7
 aa2:	468d      	mov	sp, r1
 aa4:	b481      	push	{r0, r7}
 aa6:	af00      	add	r7, sp, #0
 aa8:	e7fe      	b.n	aa8 <Default_Handler+0xc>
 aaa:	bf00      	nop

c1m2.out:     file format elf32-littlearm


Disassembly of section .text:

00000140 <deregister_tm_clones>:
 140:	4b04      	ldr	r3, [pc, #16]	; (154 <deregister_tm_clones+0x14>)
 142:	4805      	ldr	r0, [pc, #20]	; (158 <deregister_tm_clones+0x18>)
 144:	1a1b      	subs	r3, r3, r0
 146:	2b06      	cmp	r3, #6
 148:	d902      	bls.n	150 <deregister_tm_clones+0x10>
 14a:	4b04      	ldr	r3, [pc, #16]	; (15c <deregister_tm_clones+0x1c>)
 14c:	b103      	cbz	r3, 150 <deregister_tm_clones+0x10>
 14e:	4718      	bx	r3
 150:	4770      	bx	lr
 152:	bf00      	nop
 154:	2000043b 	.word	0x2000043b
 158:	20000438 	.word	0x20000438
 15c:	00000000 	.word	0x00000000

00000160 <register_tm_clones>:
 160:	4905      	ldr	r1, [pc, #20]	; (178 <register_tm_clones+0x18>)
 162:	4806      	ldr	r0, [pc, #24]	; (17c <register_tm_clones+0x1c>)
 164:	1a09      	subs	r1, r1, r0
 166:	1089      	asrs	r1, r1, #2
 168:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
 16c:	1049      	asrs	r1, r1, #1
 16e:	d002      	beq.n	176 <register_tm_clones+0x16>
 170:	4b03      	ldr	r3, [pc, #12]	; (180 <register_tm_clones+0x20>)
 172:	b103      	cbz	r3, 176 <register_tm_clones+0x16>
 174:	4718      	bx	r3
 176:	4770      	bx	lr
 178:	20000438 	.word	0x20000438
 17c:	20000438 	.word	0x20000438
 180:	00000000 	.word	0x00000000

00000184 <__do_global_dtors_aux>:
 184:	b510      	push	{r4, lr}
 186:	4c06      	ldr	r4, [pc, #24]	; (1a0 <__do_global_dtors_aux+0x1c>)
 188:	7823      	ldrb	r3, [r4, #0]
 18a:	b943      	cbnz	r3, 19e <__do_global_dtors_aux+0x1a>
 18c:	f7ff ffd8 	bl	140 <deregister_tm_clones>
 190:	4b04      	ldr	r3, [pc, #16]	; (1a4 <__do_global_dtors_aux+0x20>)
 192:	b113      	cbz	r3, 19a <__do_global_dtors_aux+0x16>
 194:	4804      	ldr	r0, [pc, #16]	; (1a8 <__do_global_dtors_aux+0x24>)
 196:	f3af 8000 	nop.w
 19a:	2301      	movs	r3, #1
 19c:	7023      	strb	r3, [r4, #0]
 19e:	bd10      	pop	{r4, pc}
 1a0:	20000438 	.word	0x20000438
 1a4:	00000000 	.word	0x00000000
 1a8:	00000ab4 	.word	0x00000ab4

000001ac <frame_dummy>:
 1ac:	b508      	push	{r3, lr}
 1ae:	4b08      	ldr	r3, [pc, #32]	; (1d0 <frame_dummy+0x24>)
 1b0:	b11b      	cbz	r3, 1ba <frame_dummy+0xe>
 1b2:	4808      	ldr	r0, [pc, #32]	; (1d4 <frame_dummy+0x28>)
 1b4:	4908      	ldr	r1, [pc, #32]	; (1d8 <frame_dummy+0x2c>)
 1b6:	f3af 8000 	nop.w
 1ba:	4808      	ldr	r0, [pc, #32]	; (1dc <frame_dummy+0x30>)
 1bc:	6803      	ldr	r3, [r0, #0]
 1be:	b913      	cbnz	r3, 1c6 <frame_dummy+0x1a>
 1c0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 1c4:	e7cc      	b.n	160 <register_tm_clones>
 1c6:	4b06      	ldr	r3, [pc, #24]	; (1e0 <frame_dummy+0x34>)
 1c8:	2b00      	cmp	r3, #0
 1ca:	d0f9      	beq.n	1c0 <frame_dummy+0x14>
 1cc:	4798      	blx	r3
 1ce:	e7f7      	b.n	1c0 <frame_dummy+0x14>
 1d0:	00000000 	.word	0x00000000
 1d4:	00000ab4 	.word	0x00000ab4
 1d8:	2000043c 	.word	0x2000043c
 1dc:	20000434 	.word	0x20000434
 1e0:	00000000 	.word	0x00000000

000001e4 <_mainCRTStartup>:
 1e4:	4b13      	ldr	r3, [pc, #76]	; (234 <_mainCRTStartup+0x50>)
 1e6:	2b00      	cmp	r3, #0
 1e8:	bf08      	it	eq
 1ea:	4b11      	ldreq	r3, [pc, #68]	; (230 <_mainCRTStartup+0x4c>)
 1ec:	469d      	mov	sp, r3
 1ee:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
 1f2:	2100      	movs	r1, #0
 1f4:	468b      	mov	fp, r1
 1f6:	460f      	mov	r7, r1
 1f8:	4811      	ldr	r0, [pc, #68]	; (240 <_mainCRTStartup+0x5c>)
 1fa:	4a12      	ldr	r2, [pc, #72]	; (244 <_mainCRTStartup+0x60>)
 1fc:	1a12      	subs	r2, r2, r0
 1fe:	f000 fadf 	bl	7c0 <memset>
 202:	4b0d      	ldr	r3, [pc, #52]	; (238 <_mainCRTStartup+0x54>)
 204:	2b00      	cmp	r3, #0
 206:	d000      	beq.n	20a <_mainCRTStartup+0x26>
 208:	4798      	blx	r3
 20a:	4b0c      	ldr	r3, [pc, #48]	; (23c <_mainCRTStartup+0x58>)
 20c:	2b00      	cmp	r3, #0
 20e:	d000      	beq.n	212 <_mainCRTStartup+0x2e>
 210:	4798      	blx	r3
 212:	2000      	movs	r0, #0
 214:	2100      	movs	r1, #0
 216:	0004      	movs	r4, r0
 218:	000d      	movs	r5, r1
 21a:	480b      	ldr	r0, [pc, #44]	; (248 <_mainCRTStartup+0x64>)
 21c:	f000 fa7c 	bl	718 <atexit>
 220:	f000 faa6 	bl	770 <__libc_init_array>
 224:	0020      	movs	r0, r4
 226:	0029      	movs	r1, r5
 228:	f000 f810 	bl	24c <main>
 22c:	f000 fa7a 	bl	724 <exit>
 230:	00080000 	.word	0x00080000
 234:	20000460 	.word	0x20000460
	...
 240:	20000438 	.word	0x20000438
 244:	20000460 	.word	0x20000460
 248:	00000745 	.word	0x00000745

0000024c <main>:
 24c:	b580      	push	{r7, lr}
 24e:	b082      	sub	sp, #8
 250:	af00      	add	r7, sp, #0
 252:	4828      	ldr	r0, [pc, #160]	; (2f4 <main+0xa8>)
 254:	210a      	movs	r1, #10
 256:	f000 f89b 	bl	390 <clear_all>
 25a:	4827      	ldr	r0, [pc, #156]	; (2f8 <main+0xac>)
 25c:	212b      	movs	r1, #43	; 0x2b
 25e:	2202      	movs	r2, #2
 260:	f000 f87c 	bl	35c <set_all>
 264:	4823      	ldr	r0, [pc, #140]	; (2f4 <main+0xa8>)
 266:	2100      	movs	r1, #0
 268:	2261      	movs	r2, #97	; 0x61
 26a:	f000 f847 	bl	2fc <set_value>
 26e:	4821      	ldr	r0, [pc, #132]	; (2f4 <main+0xa8>)
 270:	2109      	movs	r1, #9
 272:	f000 f863 	bl	33c <get_value>
 276:	4603      	mov	r3, r0
 278:	70fb      	strb	r3, [r7, #3]
 27a:	78fb      	ldrb	r3, [r7, #3]
 27c:	3327      	adds	r3, #39	; 0x27
 27e:	b2db      	uxtb	r3, r3
 280:	481c      	ldr	r0, [pc, #112]	; (2f4 <main+0xa8>)
 282:	2109      	movs	r1, #9
 284:	461a      	mov	r2, r3
 286:	f000 f839 	bl	2fc <set_value>
 28a:	481a      	ldr	r0, [pc, #104]	; (2f4 <main+0xa8>)
 28c:	2103      	movs	r1, #3
 28e:	2237      	movs	r2, #55	; 0x37
 290:	f000 f834 	bl	2fc <set_value>
 294:	4817      	ldr	r0, [pc, #92]	; (2f4 <main+0xa8>)
 296:	2101      	movs	r1, #1
 298:	2258      	movs	r2, #88	; 0x58
 29a:	f000 f82f 	bl	2fc <set_value>
 29e:	4815      	ldr	r0, [pc, #84]	; (2f4 <main+0xa8>)
 2a0:	2104      	movs	r1, #4
 2a2:	2232      	movs	r2, #50	; 0x32
 2a4:	f000 f82a 	bl	2fc <set_value>
 2a8:	4812      	ldr	r0, [pc, #72]	; (2f4 <main+0xa8>)
 2aa:	2101      	movs	r1, #1
 2ac:	f000 f846 	bl	33c <get_value>
 2b0:	4603      	mov	r3, r0
 2b2:	70fb      	strb	r3, [r7, #3]
 2b4:	480f      	ldr	r0, [pc, #60]	; (2f4 <main+0xa8>)
 2b6:	2102      	movs	r1, #2
 2b8:	2279      	movs	r2, #121	; 0x79
 2ba:	f000 f81f 	bl	2fc <set_value>
 2be:	78fb      	ldrb	r3, [r7, #3]
 2c0:	3b0c      	subs	r3, #12
 2c2:	b2db      	uxtb	r3, r3
 2c4:	480b      	ldr	r0, [pc, #44]	; (2f4 <main+0xa8>)
 2c6:	2107      	movs	r1, #7
 2c8:	461a      	mov	r2, r3
 2ca:	f000 f817 	bl	2fc <set_value>
 2ce:	4809      	ldr	r0, [pc, #36]	; (2f4 <main+0xa8>)
 2d0:	2105      	movs	r1, #5
 2d2:	225f      	movs	r2, #95	; 0x5f
 2d4:	f000 f812 	bl	2fc <set_value>
 2d8:	2300      	movs	r3, #0
 2da:	607b      	str	r3, [r7, #4]
 2dc:	e002      	b.n	2e4 <main+0x98>
 2de:	687b      	ldr	r3, [r7, #4]
 2e0:	3301      	adds	r3, #1
 2e2:	607b      	str	r3, [r7, #4]
 2e4:	687b      	ldr	r3, [r7, #4]
 2e6:	2b09      	cmp	r3, #9
 2e8:	d9f9      	bls.n	2de <main+0x92>
 2ea:	2300      	movs	r3, #0
 2ec:	4618      	mov	r0, r3
 2ee:	3708      	adds	r7, #8
 2f0:	46bd      	mov	sp, r7
 2f2:	bd80      	pop	{r7, pc}
 2f4:	20000454 	.word	0x20000454
 2f8:	2000045c 	.word	0x2000045c

000002fc <set_value>:
 2fc:	b480      	push	{r7}
 2fe:	b085      	sub	sp, #20
 300:	af00      	add	r7, sp, #0
 302:	60f8      	str	r0, [r7, #12]
 304:	60b9      	str	r1, [r7, #8]
 306:	4613      	mov	r3, r2
 308:	71fb      	strb	r3, [r7, #7]
 30a:	68fa      	ldr	r2, [r7, #12]
 30c:	68bb      	ldr	r3, [r7, #8]
 30e:	4413      	add	r3, r2
 310:	79fa      	ldrb	r2, [r7, #7]
 312:	701a      	strb	r2, [r3, #0]
 314:	3714      	adds	r7, #20
 316:	46bd      	mov	sp, r7
 318:	f85d 7b04 	ldr.w	r7, [sp], #4
 31c:	4770      	bx	lr
 31e:	bf00      	nop

00000320 <clear_value>:
 320:	b580      	push	{r7, lr}
 322:	b082      	sub	sp, #8
 324:	af00      	add	r7, sp, #0
 326:	6078      	str	r0, [r7, #4]
 328:	6039      	str	r1, [r7, #0]
 32a:	6878      	ldr	r0, [r7, #4]
 32c:	6839      	ldr	r1, [r7, #0]
 32e:	2200      	movs	r2, #0
 330:	f7ff ffe4 	bl	2fc <set_value>
 334:	3708      	adds	r7, #8
 336:	46bd      	mov	sp, r7
 338:	bd80      	pop	{r7, pc}
 33a:	bf00      	nop

0000033c <get_value>:
 33c:	b480      	push	{r7}
 33e:	b083      	sub	sp, #12
 340:	af00      	add	r7, sp, #0
 342:	6078      	str	r0, [r7, #4]
 344:	6039      	str	r1, [r7, #0]
 346:	687a      	ldr	r2, [r7, #4]
 348:	683b      	ldr	r3, [r7, #0]
 34a:	4413      	add	r3, r2
 34c:	781b      	ldrb	r3, [r3, #0]
 34e:	4618      	mov	r0, r3
 350:	370c      	adds	r7, #12
 352:	46bd      	mov	sp, r7
 354:	f85d 7b04 	ldr.w	r7, [sp], #4
 358:	4770      	bx	lr
 35a:	bf00      	nop

0000035c <set_all>:
 35c:	b580      	push	{r7, lr}
 35e:	b086      	sub	sp, #24
 360:	af00      	add	r7, sp, #0
 362:	60f8      	str	r0, [r7, #12]
 364:	460b      	mov	r3, r1
 366:	607a      	str	r2, [r7, #4]
 368:	72fb      	strb	r3, [r7, #11]
 36a:	2300      	movs	r3, #0
 36c:	617b      	str	r3, [r7, #20]
 36e:	e008      	b.n	382 <set_all+0x26>
 370:	7afb      	ldrb	r3, [r7, #11]
 372:	68f8      	ldr	r0, [r7, #12]
 374:	6979      	ldr	r1, [r7, #20]
 376:	461a      	mov	r2, r3
 378:	f7ff ffc0 	bl	2fc <set_value>
 37c:	697b      	ldr	r3, [r7, #20]
 37e:	3301      	adds	r3, #1
 380:	617b      	str	r3, [r7, #20]
 382:	697a      	ldr	r2, [r7, #20]
 384:	687b      	ldr	r3, [r7, #4]
 386:	429a      	cmp	r2, r3
 388:	d3f2      	bcc.n	370 <set_all+0x14>
 38a:	3718      	adds	r7, #24
 38c:	46bd      	mov	sp, r7
 38e:	bd80      	pop	{r7, pc}

00000390 <clear_all>:
 390:	b580      	push	{r7, lr}
 392:	b082      	sub	sp, #8
 394:	af00      	add	r7, sp, #0
 396:	6078      	str	r0, [r7, #4]
 398:	6039      	str	r1, [r7, #0]
 39a:	6878      	ldr	r0, [r7, #4]
 39c:	2100      	movs	r1, #0
 39e:	683a      	ldr	r2, [r7, #0]
 3a0:	f7ff ffdc 	bl	35c <set_all>
 3a4:	3708      	adds	r7, #8
 3a6:	46bd      	mov	sp, r7
 3a8:	bd80      	pop	{r7, pc}
 3aa:	bf00      	nop

000003ac <SystemCoreClockUpdate>:
 3ac:	b480      	push	{r7}
 3ae:	b089      	sub	sp, #36	; 0x24
 3b0:	af00      	add	r7, sp, #0
 3b2:	4bab      	ldr	r3, [pc, #684]	; (660 <SystemCoreClockUpdate+0x2b4>)
 3b4:	689b      	ldr	r3, [r3, #8]
 3b6:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 3ba:	0c1b      	lsrs	r3, r3, #16
 3bc:	60fb      	str	r3, [r7, #12]
 3be:	68fb      	ldr	r3, [r7, #12]
 3c0:	2201      	movs	r2, #1
 3c2:	fa02 f303 	lsl.w	r3, r2, r3
 3c6:	72fb      	strb	r3, [r7, #11]
 3c8:	4ba5      	ldr	r3, [pc, #660]	; (660 <SystemCoreClockUpdate+0x2b4>)
 3ca:	689b      	ldr	r3, [r3, #8]
 3cc:	f003 0307 	and.w	r3, r3, #7
 3d0:	607b      	str	r3, [r7, #4]
 3d2:	687b      	ldr	r3, [r7, #4]
 3d4:	2b05      	cmp	r3, #5
 3d6:	f200 813e 	bhi.w	656 <SystemCoreClockUpdate+0x2aa>
 3da:	a201      	add	r2, pc, #4	; (adr r2, 3e0 <SystemCoreClockUpdate+0x34>)
 3dc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 3e0:	000003f9 	.word	0x000003f9
 3e4:	0000047b 	.word	0x0000047b
 3e8:	0000048d 	.word	0x0000048d
 3ec:	000004bb 	.word	0x000004bb
 3f0:	000005cb 	.word	0x000005cb
 3f4:	000005db 	.word	0x000005db
 3f8:	4b9a      	ldr	r3, [pc, #616]	; (664 <SystemCoreClockUpdate+0x2b8>)
 3fa:	781b      	ldrb	r3, [r3, #0]
 3fc:	b2db      	uxtb	r3, r3
 3fe:	2b00      	cmp	r3, #0
 400:	d031      	beq.n	466 <SystemCoreClockUpdate+0xba>
 402:	4b97      	ldr	r3, [pc, #604]	; (660 <SystemCoreClockUpdate+0x2b4>)
 404:	f646 125a 	movw	r2, #26970	; 0x695a
 408:	601a      	str	r2, [r3, #0]
 40a:	4a95      	ldr	r2, [pc, #596]	; (660 <SystemCoreClockUpdate+0x2b4>)
 40c:	4b94      	ldr	r3, [pc, #592]	; (660 <SystemCoreClockUpdate+0x2b4>)
 40e:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 410:	f043 0301 	orr.w	r3, r3, #1
 414:	6513      	str	r3, [r2, #80]	; 0x50
 416:	4b92      	ldr	r3, [pc, #584]	; (660 <SystemCoreClockUpdate+0x2b4>)
 418:	2201      	movs	r2, #1
 41a:	601a      	str	r2, [r3, #0]
 41c:	4b91      	ldr	r3, [pc, #580]	; (664 <SystemCoreClockUpdate+0x2b8>)
 41e:	781b      	ldrb	r3, [r3, #0]
 420:	b2db      	uxtb	r3, r3
 422:	2b00      	cmp	r3, #0
 424:	d016      	beq.n	454 <SystemCoreClockUpdate+0xa8>
 426:	4b90      	ldr	r3, [pc, #576]	; (668 <SystemCoreClockUpdate+0x2bc>)
 428:	781b      	ldrb	r3, [r3, #0]
 42a:	b2db      	uxtb	r3, r3
 42c:	2b00      	cmp	r3, #0
 42e:	d008      	beq.n	442 <SystemCoreClockUpdate+0x96>
 430:	7afb      	ldrb	r3, [r7, #11]
 432:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 436:	fb92 f3f3 	sdiv	r3, r2, r3
 43a:	461a      	mov	r2, r3
 43c:	4b8b      	ldr	r3, [pc, #556]	; (66c <SystemCoreClockUpdate+0x2c0>)
 43e:	601a      	str	r2, [r3, #0]
 440:	e01a      	b.n	478 <SystemCoreClockUpdate+0xcc>
 442:	7afb      	ldrb	r3, [r7, #11]
 444:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 448:	fb92 f3f3 	sdiv	r3, r2, r3
 44c:	461a      	mov	r2, r3
 44e:	4b87      	ldr	r3, [pc, #540]	; (66c <SystemCoreClockUpdate+0x2c0>)
 450:	601a      	str	r2, [r3, #0]
 452:	e011      	b.n	478 <SystemCoreClockUpdate+0xcc>
 454:	7afb      	ldrb	r3, [r7, #11]
 456:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 45a:	fb92 f3f3 	sdiv	r3, r2, r3
 45e:	461a      	mov	r2, r3
 460:	4b82      	ldr	r3, [pc, #520]	; (66c <SystemCoreClockUpdate+0x2c0>)
 462:	601a      	str	r2, [r3, #0]
 464:	e0f7      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 466:	7afb      	ldrb	r3, [r7, #11]
 468:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 46c:	fb92 f3f3 	sdiv	r3, r2, r3
 470:	461a      	mov	r2, r3
 472:	4b7e      	ldr	r3, [pc, #504]	; (66c <SystemCoreClockUpdate+0x2c0>)
 474:	601a      	str	r2, [r3, #0]
 476:	e0ee      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 478:	e0ed      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 47a:	7afb      	ldrb	r3, [r7, #11]
 47c:	f242 7210 	movw	r2, #10000	; 0x2710
 480:	fb92 f3f3 	sdiv	r3, r2, r3
 484:	461a      	mov	r2, r3
 486:	4b79      	ldr	r3, [pc, #484]	; (66c <SystemCoreClockUpdate+0x2c0>)
 488:	601a      	str	r2, [r3, #0]
 48a:	e0e4      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 48c:	4b76      	ldr	r3, [pc, #472]	; (668 <SystemCoreClockUpdate+0x2bc>)
 48e:	781b      	ldrb	r3, [r3, #0]
 490:	b2db      	uxtb	r3, r3
 492:	2b00      	cmp	r3, #0
 494:	d008      	beq.n	4a8 <SystemCoreClockUpdate+0xfc>
 496:	7afb      	ldrb	r3, [r7, #11]
 498:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 49c:	fb92 f3f3 	sdiv	r3, r2, r3
 4a0:	461a      	mov	r2, r3
 4a2:	4b72      	ldr	r3, [pc, #456]	; (66c <SystemCoreClockUpdate+0x2c0>)
 4a4:	601a      	str	r2, [r3, #0]
 4a6:	e0d6      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 4a8:	7afb      	ldrb	r3, [r7, #11]
 4aa:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 4ae:	fb92 f3f3 	sdiv	r3, r2, r3
 4b2:	461a      	mov	r2, r3
 4b4:	4b6d      	ldr	r3, [pc, #436]	; (66c <SystemCoreClockUpdate+0x2c0>)
 4b6:	601a      	str	r2, [r3, #0]
 4b8:	e0cd      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 4ba:	4b69      	ldr	r3, [pc, #420]	; (660 <SystemCoreClockUpdate+0x2b4>)
 4bc:	685b      	ldr	r3, [r3, #4]
 4be:	b29b      	uxth	r3, r3
 4c0:	f3c3 0309 	ubfx	r3, r3, #0, #10
 4c4:	827b      	strh	r3, [r7, #18]
 4c6:	4b66      	ldr	r3, [pc, #408]	; (660 <SystemCoreClockUpdate+0x2b4>)
 4c8:	685b      	ldr	r3, [r3, #4]
 4ca:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 4ce:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4d2:	d018      	beq.n	506 <SystemCoreClockUpdate+0x15a>
 4d4:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4d8:	d805      	bhi.n	4e6 <SystemCoreClockUpdate+0x13a>
 4da:	2b00      	cmp	r3, #0
 4dc:	d00d      	beq.n	4fa <SystemCoreClockUpdate+0x14e>
 4de:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 4e2:	d00d      	beq.n	500 <SystemCoreClockUpdate+0x154>
 4e4:	e01b      	b.n	51e <SystemCoreClockUpdate+0x172>
 4e6:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 4ea:	d012      	beq.n	512 <SystemCoreClockUpdate+0x166>
 4ec:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 4f0:	d012      	beq.n	518 <SystemCoreClockUpdate+0x16c>
 4f2:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 4f6:	d009      	beq.n	50c <SystemCoreClockUpdate+0x160>
 4f8:	e011      	b.n	51e <SystemCoreClockUpdate+0x172>
 4fa:	4b5d      	ldr	r3, [pc, #372]	; (670 <SystemCoreClockUpdate+0x2c4>)
 4fc:	617b      	str	r3, [r7, #20]
 4fe:	e00e      	b.n	51e <SystemCoreClockUpdate+0x172>
 500:	4b5c      	ldr	r3, [pc, #368]	; (674 <SystemCoreClockUpdate+0x2c8>)
 502:	617b      	str	r3, [r7, #20]
 504:	e00b      	b.n	51e <SystemCoreClockUpdate+0x172>
 506:	4b5c      	ldr	r3, [pc, #368]	; (678 <SystemCoreClockUpdate+0x2cc>)
 508:	617b      	str	r3, [r7, #20]
 50a:	e008      	b.n	51e <SystemCoreClockUpdate+0x172>
 50c:	4b5b      	ldr	r3, [pc, #364]	; (67c <SystemCoreClockUpdate+0x2d0>)
 50e:	617b      	str	r3, [r7, #20]
 510:	e005      	b.n	51e <SystemCoreClockUpdate+0x172>
 512:	4b5b      	ldr	r3, [pc, #364]	; (680 <SystemCoreClockUpdate+0x2d4>)
 514:	617b      	str	r3, [r7, #20]
 516:	e002      	b.n	51e <SystemCoreClockUpdate+0x172>
 518:	4b5a      	ldr	r3, [pc, #360]	; (684 <SystemCoreClockUpdate+0x2d8>)
 51a:	617b      	str	r3, [r7, #20]
 51c:	bf00      	nop
 51e:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 522:	2b00      	cmp	r3, #0
 524:	d103      	bne.n	52e <SystemCoreClockUpdate+0x182>
 526:	4a51      	ldr	r2, [pc, #324]	; (66c <SystemCoreClockUpdate+0x2c0>)
 528:	697b      	ldr	r3, [r7, #20]
 52a:	6013      	str	r3, [r2, #0]
 52c:	e093      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 52e:	8a7b      	ldrh	r3, [r7, #18]
 530:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 534:	2b00      	cmp	r3, #0
 536:	d005      	beq.n	544 <SystemCoreClockUpdate+0x198>
 538:	8a7b      	ldrh	r3, [r7, #18]
 53a:	ea6f 5303 	mvn.w	r3, r3, lsl #20
 53e:	ea6f 5313 	mvn.w	r3, r3, lsr #20
 542:	827b      	strh	r3, [r7, #18]
 544:	4b50      	ldr	r3, [pc, #320]	; (688 <SystemCoreClockUpdate+0x2dc>)
 546:	781b      	ldrb	r3, [r3, #0]
 548:	b2db      	uxtb	r3, r3
 54a:	2b00      	cmp	r3, #0
 54c:	d006      	beq.n	55c <SystemCoreClockUpdate+0x1b0>
 54e:	4b4f      	ldr	r3, [pc, #316]	; (68c <SystemCoreClockUpdate+0x2e0>)
 550:	681b      	ldr	r3, [r3, #0]
 552:	61fb      	str	r3, [r7, #28]
 554:	4b4e      	ldr	r3, [pc, #312]	; (690 <SystemCoreClockUpdate+0x2e4>)
 556:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 558:	61bb      	str	r3, [r7, #24]
 55a:	e005      	b.n	568 <SystemCoreClockUpdate+0x1bc>
 55c:	4b4d      	ldr	r3, [pc, #308]	; (694 <SystemCoreClockUpdate+0x2e8>)
 55e:	681b      	ldr	r3, [r3, #0]
 560:	61fb      	str	r3, [r7, #28]
 562:	4b4b      	ldr	r3, [pc, #300]	; (690 <SystemCoreClockUpdate+0x2e4>)
 564:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 566:	61bb      	str	r3, [r7, #24]
 568:	697b      	ldr	r3, [r7, #20]
 56a:	ee07 3a90 	vmov	s15, r3
 56e:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 572:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 576:	ee07 3a90 	vmov	s15, r3
 57a:	eef8 6ae7 	vcvt.f32.s32	s13, s15
 57e:	edd7 7a07 	vldr	s15, [r7, #28]
 582:	ee66 6aa7 	vmul.f32	s13, s13, s15
 586:	69bb      	ldr	r3, [r7, #24]
 588:	f5c3 7340 	rsb	r3, r3, #768	; 0x300
 58c:	ee07 3a90 	vmov	s15, r3
 590:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
 594:	edd7 7a07 	vldr	s15, [r7, #28]
 598:	ee66 7a27 	vmul.f32	s15, s12, s15
 59c:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
 5a0:	ee77 7a86 	vadd.f32	s15, s15, s12
 5a4:	eeb2 6a00 	vmov.f32	s12, #32	; 0x41000000  8.0
 5a8:	ee67 7a86 	vmul.f32	s15, s15, s12
 5ac:	eec6 7aa7 	vdiv.f32	s15, s13, s15
 5b0:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
 5b4:	ee76 7ae7 	vsub.f32	s15, s13, s15
 5b8:	eec7 7a27 	vdiv.f32	s15, s14, s15
 5bc:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 5c0:	ee17 2a90 	vmov	r2, s15
 5c4:	4b29      	ldr	r3, [pc, #164]	; (66c <SystemCoreClockUpdate+0x2c0>)
 5c6:	601a      	str	r2, [r3, #0]
 5c8:	e045      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 5ca:	7afb      	ldrb	r3, [r7, #11]
 5cc:	4a2c      	ldr	r2, [pc, #176]	; (680 <SystemCoreClockUpdate+0x2d4>)
 5ce:	fb92 f3f3 	sdiv	r3, r2, r3
 5d2:	461a      	mov	r2, r3
 5d4:	4b25      	ldr	r3, [pc, #148]	; (66c <SystemCoreClockUpdate+0x2c0>)
 5d6:	601a      	str	r2, [r3, #0]
 5d8:	e03d      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 5da:	4b2f      	ldr	r3, [pc, #188]	; (698 <SystemCoreClockUpdate+0x2ec>)
 5dc:	781b      	ldrb	r3, [r3, #0]
 5de:	b2db      	uxtb	r3, r3
 5e0:	2b00      	cmp	r3, #0
 5e2:	d030      	beq.n	646 <SystemCoreClockUpdate+0x29a>
 5e4:	4b1e      	ldr	r3, [pc, #120]	; (660 <SystemCoreClockUpdate+0x2b4>)
 5e6:	f646 125a 	movw	r2, #26970	; 0x695a
 5ea:	601a      	str	r2, [r3, #0]
 5ec:	4a1c      	ldr	r2, [pc, #112]	; (660 <SystemCoreClockUpdate+0x2b4>)
 5ee:	4b1c      	ldr	r3, [pc, #112]	; (660 <SystemCoreClockUpdate+0x2b4>)
 5f0:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 5f2:	f043 0302 	orr.w	r3, r3, #2
 5f6:	6513      	str	r3, [r2, #80]	; 0x50
 5f8:	4b19      	ldr	r3, [pc, #100]	; (660 <SystemCoreClockUpdate+0x2b4>)
 5fa:	2201      	movs	r2, #1
 5fc:	601a      	str	r2, [r3, #0]
 5fe:	4b26      	ldr	r3, [pc, #152]	; (698 <SystemCoreClockUpdate+0x2ec>)
 600:	781b      	ldrb	r3, [r3, #0]
 602:	b2db      	uxtb	r3, r3
 604:	2b00      	cmp	r3, #0
 606:	d016      	beq.n	636 <SystemCoreClockUpdate+0x28a>
 608:	4b17      	ldr	r3, [pc, #92]	; (668 <SystemCoreClockUpdate+0x2bc>)
 60a:	781b      	ldrb	r3, [r3, #0]
 60c:	b2db      	uxtb	r3, r3
 60e:	2b00      	cmp	r3, #0
 610:	d008      	beq.n	624 <SystemCoreClockUpdate+0x278>
 612:	7afb      	ldrb	r3, [r7, #11]
 614:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 618:	fb92 f3f3 	sdiv	r3, r2, r3
 61c:	461a      	mov	r2, r3
 61e:	4b13      	ldr	r3, [pc, #76]	; (66c <SystemCoreClockUpdate+0x2c0>)
 620:	601a      	str	r2, [r3, #0]
 622:	e017      	b.n	654 <SystemCoreClockUpdate+0x2a8>
 624:	7afb      	ldrb	r3, [r7, #11]
 626:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 62a:	fb92 f3f3 	sdiv	r3, r2, r3
 62e:	461a      	mov	r2, r3
 630:	4b0e      	ldr	r3, [pc, #56]	; (66c <SystemCoreClockUpdate+0x2c0>)
 632:	601a      	str	r2, [r3, #0]
 634:	e00e      	b.n	654 <SystemCoreClockUpdate+0x2a8>
 636:	7afb      	ldrb	r3, [r7, #11]
 638:	4a12      	ldr	r2, [pc, #72]	; (684 <SystemCoreClockUpdate+0x2d8>)
 63a:	fb92 f3f3 	sdiv	r3, r2, r3
 63e:	461a      	mov	r2, r3
 640:	4b0a      	ldr	r3, [pc, #40]	; (66c <SystemCoreClockUpdate+0x2c0>)
 642:	601a      	str	r2, [r3, #0]
 644:	e007      	b.n	656 <SystemCoreClockUpdate+0x2aa>
 646:	7afb      	ldrb	r3, [r7, #11]
 648:	4a0e      	ldr	r2, [pc, #56]	; (684 <SystemCoreClockUpdate+0x2d8>)
 64a:	fb92 f3f3 	sdiv	r3, r2, r3
 64e:	461a      	mov	r2, r3
 650:	4b06      	ldr	r3, [pc, #24]	; (66c <SystemCoreClockUpdate+0x2c0>)
 652:	601a      	str	r2, [r3, #0]
 654:	bf00      	nop
 656:	3724      	adds	r7, #36	; 0x24
 658:	46bd      	mov	sp, r7
 65a:	f85d 7b04 	ldr.w	r7, [sp], #4
 65e:	4770      	bx	lr
 660:	40010400 	.word	0x40010400
 664:	42208900 	.word	0x42208900
 668:	4220863c 	.word	0x4220863c
 66c:	20000004 	.word	0x20000004
 670:	0016e360 	.word	0x0016e360
 674:	002dc6c0 	.word	0x002dc6c0
 678:	005b8d80 	.word	0x005b8d80
 67c:	00b71b00 	.word	0x00b71b00
 680:	016e3600 	.word	0x016e3600
 684:	02dc6c00 	.word	0x02dc6c00
 688:	422080d8 	.word	0x422080d8
 68c:	00201084 	.word	0x00201084
 690:	00201000 	.word	0x00201000
 694:	00201064 	.word	0x00201064
 698:	42208904 	.word	0x42208904

0000069c <SystemInit>:
 69c:	b480      	push	{r7}
 69e:	af00      	add	r7, sp, #0
 6a0:	4a18      	ldr	r2, [pc, #96]	; (704 <SystemInit+0x68>)
 6a2:	4b18      	ldr	r3, [pc, #96]	; (704 <SystemInit+0x68>)
 6a4:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 6a8:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 6ac:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 6b0:	4b15      	ldr	r3, [pc, #84]	; (708 <SystemInit+0x6c>)
 6b2:	f44f 42b5 	mov.w	r2, #23168	; 0x5a80
 6b6:	819a      	strh	r2, [r3, #12]
 6b8:	4b14      	ldr	r3, [pc, #80]	; (70c <SystemInit+0x70>)
 6ba:	2280      	movs	r2, #128	; 0x80
 6bc:	615a      	str	r2, [r3, #20]
 6be:	4b14      	ldr	r3, [pc, #80]	; (710 <SystemInit+0x74>)
 6c0:	f646 125a 	movw	r2, #26970	; 0x695a
 6c4:	601a      	str	r2, [r3, #0]
 6c6:	4b12      	ldr	r3, [pc, #72]	; (710 <SystemInit+0x74>)
 6c8:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 6cc:	605a      	str	r2, [r3, #4]
 6ce:	4a10      	ldr	r2, [pc, #64]	; (710 <SystemInit+0x74>)
 6d0:	4b0f      	ldr	r3, [pc, #60]	; (710 <SystemInit+0x74>)
 6d2:	689b      	ldr	r3, [r3, #8]
 6d4:	f023 1307 	bic.w	r3, r3, #458759	; 0x70007
 6d8:	f043 0303 	orr.w	r3, r3, #3
 6dc:	6093      	str	r3, [r2, #8]
 6de:	4b0c      	ldr	r3, [pc, #48]	; (710 <SystemInit+0x74>)
 6e0:	2200      	movs	r2, #0
 6e2:	601a      	str	r2, [r3, #0]
 6e4:	4a0b      	ldr	r2, [pc, #44]	; (714 <SystemInit+0x78>)
 6e6:	4b0b      	ldr	r3, [pc, #44]	; (714 <SystemInit+0x78>)
 6e8:	691b      	ldr	r3, [r3, #16]
 6ea:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 6ee:	6113      	str	r3, [r2, #16]
 6f0:	4a08      	ldr	r2, [pc, #32]	; (714 <SystemInit+0x78>)
 6f2:	4b08      	ldr	r3, [pc, #32]	; (714 <SystemInit+0x78>)
 6f4:	695b      	ldr	r3, [r3, #20]
 6f6:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 6fa:	6153      	str	r3, [r2, #20]
 6fc:	46bd      	mov	sp, r7
 6fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 702:	4770      	bx	lr
 704:	e000ed00 	.word	0xe000ed00
 708:	40004800 	.word	0x40004800
 70c:	e0043000 	.word	0xe0043000
 710:	40010400 	.word	0x40010400
 714:	40011000 	.word	0x40011000

00000718 <atexit>:
 718:	4601      	mov	r1, r0
 71a:	2000      	movs	r0, #0
 71c:	4602      	mov	r2, r0
 71e:	4603      	mov	r3, r0
 720:	f000 b89c 	b.w	85c <__register_exitproc>

00000724 <exit>:
 724:	b508      	push	{r3, lr}
 726:	2100      	movs	r1, #0
 728:	4604      	mov	r4, r0
 72a:	f000 f8f3 	bl	914 <__call_exitprocs>
 72e:	4b04      	ldr	r3, [pc, #16]	; (740 <exit+0x1c>)
 730:	6818      	ldr	r0, [r3, #0]
 732:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 734:	b103      	cbz	r3, 738 <exit+0x14>
 736:	4798      	blx	r3
 738:	4620      	mov	r0, r4
 73a:	f000 f955 	bl	9e8 <_exit>
 73e:	bf00      	nop
 740:	00000ab0 	.word	0x00000ab0

00000744 <__libc_fini_array>:
 744:	b538      	push	{r3, r4, r5, lr}
 746:	4b08      	ldr	r3, [pc, #32]	; (768 <__libc_fini_array+0x24>)
 748:	4d08      	ldr	r5, [pc, #32]	; (76c <__libc_fini_array+0x28>)
 74a:	1aed      	subs	r5, r5, r3
 74c:	10ac      	asrs	r4, r5, #2
 74e:	bf18      	it	ne
 750:	18ed      	addne	r5, r5, r3
 752:	d005      	beq.n	760 <__libc_fini_array+0x1c>
 754:	3c01      	subs	r4, #1
 756:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 75a:	4798      	blx	r3
 75c:	2c00      	cmp	r4, #0
 75e:	d1f9      	bne.n	754 <__libc_fini_array+0x10>
 760:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 764:	f000 b94c 	b.w	a00 <_fini>
	...

00000770 <__libc_init_array>:
 770:	b570      	push	{r4, r5, r6, lr}
 772:	4e0f      	ldr	r6, [pc, #60]	; (7b0 <__libc_init_array+0x40>)
 774:	4d0f      	ldr	r5, [pc, #60]	; (7b4 <__libc_init_array+0x44>)
 776:	1b76      	subs	r6, r6, r5
 778:	10b6      	asrs	r6, r6, #2
 77a:	bf18      	it	ne
 77c:	2400      	movne	r4, #0
 77e:	d005      	beq.n	78c <__libc_init_array+0x1c>
 780:	3401      	adds	r4, #1
 782:	f855 3b04 	ldr.w	r3, [r5], #4
 786:	4798      	blx	r3
 788:	42a6      	cmp	r6, r4
 78a:	d1f9      	bne.n	780 <__libc_init_array+0x10>
 78c:	4e0a      	ldr	r6, [pc, #40]	; (7b8 <__libc_init_array+0x48>)
 78e:	4d0b      	ldr	r5, [pc, #44]	; (7bc <__libc_init_array+0x4c>)
 790:	1b76      	subs	r6, r6, r5
 792:	f000 f92f 	bl	9f4 <_init>
 796:	10b6      	asrs	r6, r6, #2
 798:	bf18      	it	ne
 79a:	2400      	movne	r4, #0
 79c:	d006      	beq.n	7ac <__libc_init_array+0x3c>
 79e:	3401      	adds	r4, #1
 7a0:	f855 3b04 	ldr.w	r3, [r5], #4
 7a4:	4798      	blx	r3
 7a6:	42a6      	cmp	r6, r4
 7a8:	d1f9      	bne.n	79e <__libc_init_array+0x2e>
 7aa:	bd70      	pop	{r4, r5, r6, pc}
 7ac:	bd70      	pop	{r4, r5, r6, pc}
 7ae:	bf00      	nop
	...
 7b8:	000009f4 	.word	0x000009f4
 7bc:	000009ec 	.word	0x000009ec

000007c0 <memset>:
 7c0:	b470      	push	{r4, r5, r6}
 7c2:	0784      	lsls	r4, r0, #30
 7c4:	d046      	beq.n	854 <memset+0x94>
 7c6:	1e54      	subs	r4, r2, #1
 7c8:	2a00      	cmp	r2, #0
 7ca:	d041      	beq.n	850 <memset+0x90>
 7cc:	b2cd      	uxtb	r5, r1
 7ce:	4603      	mov	r3, r0
 7d0:	e002      	b.n	7d8 <memset+0x18>
 7d2:	1e62      	subs	r2, r4, #1
 7d4:	b3e4      	cbz	r4, 850 <memset+0x90>
 7d6:	4614      	mov	r4, r2
 7d8:	f803 5b01 	strb.w	r5, [r3], #1
 7dc:	079a      	lsls	r2, r3, #30
 7de:	d1f8      	bne.n	7d2 <memset+0x12>
 7e0:	2c03      	cmp	r4, #3
 7e2:	d92e      	bls.n	842 <memset+0x82>
 7e4:	b2cd      	uxtb	r5, r1
 7e6:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 7ea:	2c0f      	cmp	r4, #15
 7ec:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 7f0:	d919      	bls.n	826 <memset+0x66>
 7f2:	f103 0210 	add.w	r2, r3, #16
 7f6:	4626      	mov	r6, r4
 7f8:	3e10      	subs	r6, #16
 7fa:	2e0f      	cmp	r6, #15
 7fc:	f842 5c10 	str.w	r5, [r2, #-16]
 800:	f842 5c0c 	str.w	r5, [r2, #-12]
 804:	f842 5c08 	str.w	r5, [r2, #-8]
 808:	f842 5c04 	str.w	r5, [r2, #-4]
 80c:	f102 0210 	add.w	r2, r2, #16
 810:	d8f2      	bhi.n	7f8 <memset+0x38>
 812:	f1a4 0210 	sub.w	r2, r4, #16
 816:	f022 020f 	bic.w	r2, r2, #15
 81a:	f004 040f 	and.w	r4, r4, #15
 81e:	3210      	adds	r2, #16
 820:	2c03      	cmp	r4, #3
 822:	4413      	add	r3, r2
 824:	d90d      	bls.n	842 <memset+0x82>
 826:	461e      	mov	r6, r3
 828:	4622      	mov	r2, r4
 82a:	3a04      	subs	r2, #4
 82c:	2a03      	cmp	r2, #3
 82e:	f846 5b04 	str.w	r5, [r6], #4
 832:	d8fa      	bhi.n	82a <memset+0x6a>
 834:	1f22      	subs	r2, r4, #4
 836:	f022 0203 	bic.w	r2, r2, #3
 83a:	3204      	adds	r2, #4
 83c:	4413      	add	r3, r2
 83e:	f004 0403 	and.w	r4, r4, #3
 842:	b12c      	cbz	r4, 850 <memset+0x90>
 844:	b2c9      	uxtb	r1, r1
 846:	441c      	add	r4, r3
 848:	f803 1b01 	strb.w	r1, [r3], #1
 84c:	42a3      	cmp	r3, r4
 84e:	d1fb      	bne.n	848 <memset+0x88>
 850:	bc70      	pop	{r4, r5, r6}
 852:	4770      	bx	lr
 854:	4614      	mov	r4, r2
 856:	4603      	mov	r3, r0
 858:	e7c2      	b.n	7e0 <memset+0x20>
 85a:	bf00      	nop

0000085c <__register_exitproc>:
 85c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 860:	4c25      	ldr	r4, [pc, #148]	; (8f8 <__register_exitproc+0x9c>)
 862:	6825      	ldr	r5, [r4, #0]
 864:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 868:	4606      	mov	r6, r0
 86a:	4688      	mov	r8, r1
 86c:	4692      	mov	sl, r2
 86e:	4699      	mov	r9, r3
 870:	b3cc      	cbz	r4, 8e6 <__register_exitproc+0x8a>
 872:	6860      	ldr	r0, [r4, #4]
 874:	281f      	cmp	r0, #31
 876:	dc18      	bgt.n	8aa <__register_exitproc+0x4e>
 878:	1c43      	adds	r3, r0, #1
 87a:	b17e      	cbz	r6, 89c <__register_exitproc+0x40>
 87c:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 880:	2101      	movs	r1, #1
 882:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 886:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 88a:	fa01 f200 	lsl.w	r2, r1, r0
 88e:	4317      	orrs	r7, r2
 890:	2e02      	cmp	r6, #2
 892:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 896:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 89a:	d01e      	beq.n	8da <__register_exitproc+0x7e>
 89c:	3002      	adds	r0, #2
 89e:	6063      	str	r3, [r4, #4]
 8a0:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 8a4:	2000      	movs	r0, #0
 8a6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8aa:	4b14      	ldr	r3, [pc, #80]	; (8fc <__register_exitproc+0xa0>)
 8ac:	b303      	cbz	r3, 8f0 <__register_exitproc+0x94>
 8ae:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8b2:	f3af 8000 	nop.w
 8b6:	4604      	mov	r4, r0
 8b8:	b1d0      	cbz	r0, 8f0 <__register_exitproc+0x94>
 8ba:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 8be:	2700      	movs	r7, #0
 8c0:	e880 0088 	stmia.w	r0, {r3, r7}
 8c4:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8c8:	4638      	mov	r0, r7
 8ca:	2301      	movs	r3, #1
 8cc:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8d0:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 8d4:	2e00      	cmp	r6, #0
 8d6:	d0e1      	beq.n	89c <__register_exitproc+0x40>
 8d8:	e7d0      	b.n	87c <__register_exitproc+0x20>
 8da:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 8de:	430a      	orrs	r2, r1
 8e0:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 8e4:	e7da      	b.n	89c <__register_exitproc+0x40>
 8e6:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8ea:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8ee:	e7c0      	b.n	872 <__register_exitproc+0x16>
 8f0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8f4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8f8:	00000ab0 	.word	0x00000ab0
 8fc:	00000000 	.word	0x00000000

00000900 <register_fini>:
 900:	4b02      	ldr	r3, [pc, #8]	; (90c <register_fini+0xc>)
 902:	b113      	cbz	r3, 90a <register_fini+0xa>
 904:	4802      	ldr	r0, [pc, #8]	; (910 <register_fini+0x10>)
 906:	f7ff bf07 	b.w	718 <atexit>
 90a:	4770      	bx	lr
 90c:	00000000 	.word	0x00000000
 910:	00000745 	.word	0x00000745

00000914 <__call_exitprocs>:
 914:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 918:	4b31      	ldr	r3, [pc, #196]	; (9e0 <__call_exitprocs+0xcc>)
 91a:	b083      	sub	sp, #12
 91c:	681b      	ldr	r3, [r3, #0]
 91e:	9300      	str	r3, [sp, #0]
 920:	f503 73a4 	add.w	r3, r3, #328	; 0x148
 924:	4681      	mov	r9, r0
 926:	460e      	mov	r6, r1
 928:	9301      	str	r3, [sp, #4]
 92a:	9b00      	ldr	r3, [sp, #0]
 92c:	f8d3 7148 	ldr.w	r7, [r3, #328]	; 0x148
 930:	b327      	cbz	r7, 97c <__call_exitprocs+0x68>
 932:	f8dd a004 	ldr.w	sl, [sp, #4]
 936:	687c      	ldr	r4, [r7, #4]
 938:	1e65      	subs	r5, r4, #1
 93a:	d40e      	bmi.n	95a <__call_exitprocs+0x46>
 93c:	3401      	adds	r4, #1
 93e:	eb07 0484 	add.w	r4, r7, r4, lsl #2
 942:	f04f 0800 	mov.w	r8, #0
 946:	b1e6      	cbz	r6, 982 <__call_exitprocs+0x6e>
 948:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 94c:	42b3      	cmp	r3, r6
 94e:	d018      	beq.n	982 <__call_exitprocs+0x6e>
 950:	3d01      	subs	r5, #1
 952:	1c6b      	adds	r3, r5, #1
 954:	f1a4 0404 	sub.w	r4, r4, #4
 958:	d1f5      	bne.n	946 <__call_exitprocs+0x32>
 95a:	4b22      	ldr	r3, [pc, #136]	; (9e4 <__call_exitprocs+0xd0>)
 95c:	b173      	cbz	r3, 97c <__call_exitprocs+0x68>
 95e:	687b      	ldr	r3, [r7, #4]
 960:	2b00      	cmp	r3, #0
 962:	d136      	bne.n	9d2 <__call_exitprocs+0xbe>
 964:	683b      	ldr	r3, [r7, #0]
 966:	2b00      	cmp	r3, #0
 968:	d034      	beq.n	9d4 <__call_exitprocs+0xc0>
 96a:	4638      	mov	r0, r7
 96c:	f8ca 3000 	str.w	r3, [sl]
 970:	f3af 8000 	nop.w
 974:	f8da 7000 	ldr.w	r7, [sl]
 978:	2f00      	cmp	r7, #0
 97a:	d1dc      	bne.n	936 <__call_exitprocs+0x22>
 97c:	b003      	add	sp, #12
 97e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 982:	687b      	ldr	r3, [r7, #4]
 984:	6822      	ldr	r2, [r4, #0]
 986:	3b01      	subs	r3, #1
 988:	42ab      	cmp	r3, r5
 98a:	bf0c      	ite	eq
 98c:	607d      	streq	r5, [r7, #4]
 98e:	f8c4 8000 	strne.w	r8, [r4]
 992:	2a00      	cmp	r2, #0
 994:	d0dc      	beq.n	950 <__call_exitprocs+0x3c>
 996:	f8d7 3188 	ldr.w	r3, [r7, #392]	; 0x188
 99a:	f8d7 b004 	ldr.w	fp, [r7, #4]
 99e:	2101      	movs	r1, #1
 9a0:	40a9      	lsls	r1, r5
 9a2:	4219      	tst	r1, r3
 9a4:	d108      	bne.n	9b8 <__call_exitprocs+0xa4>
 9a6:	4790      	blx	r2
 9a8:	687b      	ldr	r3, [r7, #4]
 9aa:	455b      	cmp	r3, fp
 9ac:	d1bd      	bne.n	92a <__call_exitprocs+0x16>
 9ae:	f8da 3000 	ldr.w	r3, [sl]
 9b2:	42bb      	cmp	r3, r7
 9b4:	d0cc      	beq.n	950 <__call_exitprocs+0x3c>
 9b6:	e7b8      	b.n	92a <__call_exitprocs+0x16>
 9b8:	f8d7 318c 	ldr.w	r3, [r7, #396]	; 0x18c
 9bc:	4219      	tst	r1, r3
 9be:	d104      	bne.n	9ca <__call_exitprocs+0xb6>
 9c0:	4648      	mov	r0, r9
 9c2:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 9c6:	4790      	blx	r2
 9c8:	e7ee      	b.n	9a8 <__call_exitprocs+0x94>
 9ca:	f8d4 0080 	ldr.w	r0, [r4, #128]	; 0x80
 9ce:	4790      	blx	r2
 9d0:	e7ea      	b.n	9a8 <__call_exitprocs+0x94>
 9d2:	683b      	ldr	r3, [r7, #0]
 9d4:	46ba      	mov	sl, r7
 9d6:	461f      	mov	r7, r3
 9d8:	2f00      	cmp	r7, #0
 9da:	d1ac      	bne.n	936 <__call_exitprocs+0x22>
 9dc:	e7ce      	b.n	97c <__call_exitprocs+0x68>
 9de:	bf00      	nop
 9e0:	00000ab0 	.word	0x00000ab0
 9e4:	00000000 	.word	0x00000000

000009e8 <_exit>:
 9e8:	e7fe      	b.n	9e8 <_exit>
 9ea:	bf00      	nop

000009ec <__init_array_start>:
 9ec:	000001ad 	.word	0x000001ad
 9f0:	00000901 	.word	0x00000901

000009f4 <_init>:
 9f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 9f6:	bf00      	nop
 9f8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 9fa:	bc08      	pop	{r3}
 9fc:	469e      	mov	lr, r3
 9fe:	4770      	bx	lr

00000a00 <_fini>:
 a00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 a02:	bf00      	nop

00000a04 <__do_global_dtors_aux_fini_array_entry>:
 a04:	0185 0000 bcf8 bc08 469e 4770               .........FpG

Disassembly of section .text:Reset_Handler:

00000a10 <Reset_Handler>:
 a10:	4668      	mov	r0, sp
 a12:	f020 0107 	bic.w	r1, r0, #7
 a16:	468d      	mov	sp, r1
 a18:	b581      	push	{r0, r7, lr}
 a1a:	b083      	sub	sp, #12
 a1c:	af00      	add	r7, sp, #0
 a1e:	4b12      	ldr	r3, [pc, #72]	; (a68 <zero_loop+0x20>)
 a20:	607b      	str	r3, [r7, #4]
 a22:	4b12      	ldr	r3, [pc, #72]	; (a6c <zero_loop+0x24>)
 a24:	603b      	str	r3, [r7, #0]
 a26:	e007      	b.n	a38 <Reset_Handler+0x28>
 a28:	683b      	ldr	r3, [r7, #0]
 a2a:	1d1a      	adds	r2, r3, #4
 a2c:	603a      	str	r2, [r7, #0]
 a2e:	687a      	ldr	r2, [r7, #4]
 a30:	1d11      	adds	r1, r2, #4
 a32:	6079      	str	r1, [r7, #4]
 a34:	6812      	ldr	r2, [r2, #0]
 a36:	601a      	str	r2, [r3, #0]
 a38:	683b      	ldr	r3, [r7, #0]
 a3a:	4a0d      	ldr	r2, [pc, #52]	; (a70 <zero_loop+0x28>)
 a3c:	4293      	cmp	r3, r2
 a3e:	d3f3      	bcc.n	a28 <Reset_Handler+0x18>
 a40:	480c      	ldr	r0, [pc, #48]	; (a74 <zero_loop+0x2c>)
 a42:	490d      	ldr	r1, [pc, #52]	; (a78 <zero_loop+0x30>)
 a44:	f04f 0200 	mov.w	r2, #0

00000a48 <zero_loop>:
 a48:	4288      	cmp	r0, r1
 a4a:	bfb8      	it	lt
 a4c:	f840 2b04 	strlt.w	r2, [r0], #4
 a50:	dbfa      	blt.n	a48 <zero_loop>
 a52:	f7ff fe23 	bl	69c <SystemInit>
 a56:	f7ff fbf9 	bl	24c <main>
 a5a:	370c      	adds	r7, #12
 a5c:	46bd      	mov	sp, r7
 a5e:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
 a62:	4685      	mov	sp, r0
 a64:	4770      	bx	lr
 a66:	bf00      	nop
 a68:	00000ac0 	.word	0x00000ac0
 a6c:	20000000 	.word	0x20000000
 a70:	20000434 	.word	0x20000434
 a74:	20000438 	.word	0x20000438
 a78:	20000460 	.word	0x20000460

Disassembly of section .text:NMI_Handler:

00000a7c <NMI_Handler>:
 a7c:	4668      	mov	r0, sp
 a7e:	f020 0107 	bic.w	r1, r0, #7
 a82:	468d      	mov	sp, r1
 a84:	b481      	push	{r0, r7}
 a86:	af00      	add	r7, sp, #0
 a88:	e7fe      	b.n	a88 <NMI_Handler+0xc>
 a8a:	bf00      	nop

Disassembly of section .text:HardFault_Handler:

00000a8c <HardFault_Handler>:
 a8c:	4668      	mov	r0, sp
 a8e:	f020 0107 	bic.w	r1, r0, #7
 a92:	468d      	mov	sp, r1
 a94:	b481      	push	{r0, r7}
 a96:	af00      	add	r7, sp, #0
 a98:	e7fe      	b.n	a98 <HardFault_Handler+0xc>
 a9a:	bf00      	nop

Disassembly of section .text:Default_Handler:

00000a9c <Default_Handler>:
 a9c:	4668      	mov	r0, sp
 a9e:	f020 0107 	bic.w	r1, r0, #7
 aa2:	468d      	mov	sp, r1
 aa4:	b481      	push	{r0, r7}
 aa6:	af00      	add	r7, sp, #0
 aa8:	e7fe      	b.n	aa8 <Default_Handler+0xc>
 aaa:	bf00      	nop
