
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
