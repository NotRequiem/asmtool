	.file	"main.s"
	.text
	.def	wprintf;	.scl	3;	.type	32;	.endef
	.seh_proc	wprintf
wprintf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	32(%rbp), %rdx
	movq	%rbx, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$4, %ecx
	call	__stdio_common_vfwprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	vsnwprintf;	.scl	3;	.type	32;	.endef
	.seh_proc	vsnwprintf
vsnwprintf:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %r8
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$4, %ecx
	call	__stdio_common_vswprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$-1, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	vswprintf;	.scl	3;	.type	32;	.endef
	.seh_proc	vswprintf
vswprintf:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %r8
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	vsnwprintf
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	swprintf;	.scl	3;	.type	32;	.endef
	.seh_proc	swprintf
swprintf:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %r8
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	vswprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 2
.LC0:
	.ascii "%\0s\0\\\0*\0.\0*\0\0\0"
	.align 2
.LC1:
	.ascii ".\0\0\0"
	.align 2
.LC2:
	.ascii ".\0.\0\0\0"
	.align 2
.LC3:
	.ascii "%\0s\0\\\0%\0s\0\0\0"
	.text
	.globl	RemoveDirectoryRecursively
	.def	RemoveDirectoryRecursively;	.scl	2;	.type	32;	.endef
	.seh_proc	RemoveDirectoryRecursively
RemoveDirectoryRecursively:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$1184, %rsp
	.seh_stackalloc	1184
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 1072(%rbp)
	movq	1072(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC0(%rip), %r8
	movl	$260, %edx
	movq	%rax, %rcx
	call	swprintf
	leaq	448(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_FindFirstFileW(%rip), %rax
	call	*%rax
	movq	%rax, 1048(%rbp)
	cmpq	$-1, 1048(%rbp)
	jne	.L10
	movl	$1, %eax
	jmp	.L15
.L10:
	leaq	448(%rbp), %rax
	addq	$44, %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	wcscmp
	testl	%eax, %eax
	je	.L12
	leaq	448(%rbp), %rax
	addq	$44, %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	wcscmp
	testl	%eax, %eax
	je	.L12
	movq	1072(%rbp), %rcx
	leaq	-80(%rbp), %rax
	leaq	448(%rbp), %rdx
	addq	$44, %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	leaq	.LC3(%rip), %r8
	movl	$260, %edx
	movq	%rax, %rcx
	call	swprintf
	movl	448(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L13
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	RemoveDirectoryRecursively
	testl	%eax, %eax
	jne	.L12
	movq	1048(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_FindClose(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L15
.L13:
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_DeleteFileW(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L12
	movq	1048(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_FindClose(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L15
.L12:
	leaq	448(%rbp), %rdx
	movq	1048(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_FindNextFileW(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L10
	movq	1048(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_FindClose(%rip), %rax
	call	*%rax
	movq	1072(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_RemoveDirectoryW(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	$1, %eax
.L15:
	addq	$1184, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "C\0u\0r\0r\0e\0n\0t\0 \0d\0i\0r\0e\0c\0t\0o\0r\0y\0 \0c\0o\0u\0l\0d\0 \0n\0o\0t\0 \0b\0e\0 \0s\0e\0t\0.\0\0\0"
	.align 8
.LC5:
	.ascii "p\0o\0w\0e\0r\0s\0h\0e\0l\0l\0 \0-\0C\0o\0m\0m\0a\0n\0d\0 \0\"\0I\0n\0v\0o\0k\0e\0-\0W\0e\0b\0R\0e\0q\0u\0e\0s\0t\0 \0-\0U\0r\0i\0 \0'\0%\0s\0'\0 \0-\0O\0u\0t\0F\0i\0l\0e\0 \0'\0%\0s\0\\\0s\0y\0s\0t\0e\0m\0i\0n\0f\0o\0r\0m\0e\0r\0-\0"
	.ascii "3\0.\0"
	.ascii "0\0.\0"
	.ascii "7\0"
	.ascii "2\0"
	.ascii "7\0"
	.ascii "0\0-\0b\0i\0n\0.\0z\0i\0p\0'\0 \0-\0U\0s\0e\0B\0a\0s\0i\0c\0P\0a\0r\0s\0i\0n\0g\0 \0-\0E\0r\0r\0o\0r\0A\0c\0t\0i\0o\0n\0 \0S\0i\0l\0e\0n\0t\0l\0y\0C\0o\0n\0t\0i\0n\0u\0e\0\"\0\0\0"
	.align 8
.LC6:
	.ascii "p\0o\0w\0e\0r\0s\0h\0e\0l\0l\0 \0-\0C\0o\0m\0m\0a\0n\0d\0 \0\"\0E\0x\0p\0a\0n\0d\0-\0A\0r\0c\0h\0i\0v\0e\0 \0-\0P\0a\0t\0h\0 \0'\0%\0s\0\\\0s\0y\0s\0t\0e\0m\0i\0n\0f\0o\0r\0m\0e\0r\0-\0"
	.ascii "3\0.\0"
	.ascii "0\0.\0"
	.ascii "7\0"
	.ascii "2\0"
	.ascii "7\0"
	.ascii "0\0-\0b\0i\0n\0.\0z\0i\0p\0'\0 \0-\0D\0e\0s\0t\0i\0n\0a\0t\0i\0o\0n\0P\0a\0t\0h\0 \0'\0%\0s\0'\0 \0-\0F\0o\0r\0c\0e\0 \0-\0E\0r\0r\0o\0r\0A\0c\0t\0i\0o\0n\0 \0S\0i\0l\0e\0n\0t\0l\0y\0C\0o\0n\0t\0i\0n\0u\0e\0\"\0\0\0"
	.align 8
.LC7:
	.ascii "p\0o\0w\0e\0r\0s\0h\0e\0l\0l\0 \0-\0C\0o\0m\0m\0a\0n\0d\0 \0\"\0I\0n\0v\0o\0k\0e\0-\0W\0e\0b\0R\0e\0q\0u\0e\0s\0t\0 \0-\0U\0r\0i\0 \0'\0%\0s\0'\0 \0-\0O\0u\0t\0F\0i\0l\0e\0 \0'\0%\0s\0\\\0S\0i\0g\0C\0h\0e\0c\0k\0"
	.ascii "6\0"
	.ascii "4\0.\0e\0x\0e\0'\0 \0-\0U\0s\0e\0B\0a\0s\0i\0c\0P\0a\0r\0s\0i\0n\0g\0 \0-\0E\0r\0r\0o\0r\0A\0c\0t\0i\0o\0n\0 \0S\0i\0l\0e\0n\0t\0l\0y\0C\0o\0n\0t\0i\0n\0u\0e\0\"\0\0\0"
	.align 2
.LC8:
	.ascii "i\0"
	.ascii "3\0"
	.ascii "8\0"
	.ascii "6\0\0\0"
	.align 2
.LC9:
	.ascii "a\0r\0m\0"
	.ascii "6\0"
	.ascii "4\0\0\0"
	.align 2
.LC10:
	.ascii "R\0E\0A\0D\0M\0E\0.\0t\0x\0t\0\0\0"
	.align 2
.LC11:
	.ascii "L\0I\0C\0E\0N\0S\0E\0.\0t\0x\0t\0\0\0"
	.align 2
.LC12:
	.ascii "E\0u\0l\0a\0.\0t\0x\0t\0\0\0"
	.align 2
.LC13:
	.ascii "C\0O\0P\0Y\0R\0I\0G\0H\0T\0.\0t\0x\0t\0\0\0"
	.align 8
.LC14:
	.ascii "s\0y\0s\0t\0e\0m\0i\0n\0f\0o\0r\0m\0e\0r\0-\0"
	.ascii "3\0.\0"
	.ascii "0\0.\0"
	.ascii "7\0"
	.ascii "2\0"
	.ascii "7\0"
	.ascii "0\0-\0b\0i\0n\0.\0z\0i\0p\0\0\0"
	.align 8
.LC15:
	.ascii "a\0m\0d\0"
	.ascii "6\0"
	.ascii "4\0\\\0S\0y\0s\0t\0e\0m\0I\0n\0f\0o\0r\0m\0e\0r\0.\0e\0x\0e\0\0\0"
	.align 2
.LC16:
	.ascii "o\0p\0e\0n\0\0\0"
	.align 2
.LC17:
	.ascii "*\0\0\0"
	.align 8
.LC18:
	.ascii "S\0y\0s\0t\0e\0m\0 \0I\0n\0f\0o\0r\0m\0e\0r\0\0\0"
	.text
	.globl	download_sstools
	.def	download_sstools;	.scl	2;	.type	32;	.endef
	.seh_proc	download_sstools
download_sstools:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$3824, %rsp
	.seh_stackalloc	3824
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	leaq	3168(%rbp), %rax
	movq	%rax, %rdx
	movl	$260, %ecx
	movq	__imp_GetCurrentDirectoryW(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L17
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
.L17:
	leaq	3168(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SetCurrentDirectoryW(%rip), %rax
	call	*%rax
	movabsq	$31525695615402088, %rax
	movabsq	$13229525772664947, %rdx
	movq	%rax, 3072(%rbp)
	movq	%rdx, 3080(%rbp)
	movabsq	$28429479460798572, %r10
	movabsq	$32370142020304942, %r11
	movq	%r10, 3088(%rbp)
	movq	%r11, 3096(%rbp)
	movabsq	$28429470871191657, %r10
	movabsq	$30399714103787634, %r11
	movq	%r10, 3104(%rbp)
	movq	%r11, 3112(%rbp)
	movabsq	$31244147619659891, %r8
	movabsq	$29555366478938221, %r9
	movq	%r8, 3120(%rbp)
	movq	%r9, 3128(%rbp)
	movabsq	$28429419330863207, %r10
	movabsq	$14636930724200547, %r11
	movq	%r10, 3136(%rbp)
	movq	%r11, 3144(%rbp)
	movabsq	$12948072270528619, %r8
	movabsq	$433799561317, %r9
	movq	%r8, 3146(%rbp)
	movq	%r9, 3154(%rbp)
	movq	%rax, 2864(%rbp)
	movq	%rdx, 2872(%rbp)
	movabsq	$29273895800995943, %rax
	movabsq	$27866220269273205, %rdx
	movq	%rax, 2880(%rbp)
	movq	%rdx, 2888(%rbp)
	movabsq	$33495724099174511, %rax
	movabsq	$29555366483066985, %rdx
	movq	%rax, 2896(%rbp)
	movq	%rdx, 2904(%rbp)
	movabsq	$32370111954616420, %rax
	movabsq	$29555366478938227, %rdx
	movq	%rax, 2912(%rbp)
	movq	%rdx, 2920(%rbp)
	movabsq	$29555375072215085, %rax
	movabsq	$13229817833193580, %rdx
	movq	%rax, 2928(%rbp)
	movq	%rdx, 2936(%rbp)
	movabsq	$28429436510863474, %rax
	movabsq	$32370056120959073, %rdx
	movq	%rax, 2944(%rbp)
	movq	%rdx, 2952(%rbp)
	movabsq	$33495998976491567, %rax
	movabsq	$27303549489381486, %rdx
	movq	%rax, 2960(%rbp)
	movq	%rdx, 2968(%rbp)
	movabsq	$12948067975102564, %rax
	movabsq	$14073985061748784, %rdx
	movq	%rax, 2976(%rbp)
	movq	%rdx, 2984(%rbp)
	movabsq	$32369824188334135, %rax
	movabsq	$28429470871519353, %rdx
	movq	%rax, 2992(%rbp)
	movq	%rdx, 3000(%rbp)
	movabsq	$28710920077770861, %rax
	movabsq	$28429440806682735, %rdx
	movq	%rax, 3008(%rbp)
	movq	%rdx, 3016(%rbp)
	movabsq	$12948067974971506, %rax
	movabsq	$14073985061748784, %rdx
	movq	%rax, 3024(%rbp)
	movq	%rdx, 3032(%rbp)
	movabsq	$27584740994318391, %rax
	movabsq	$34340144734404713, %rdx
	movq	%rax, 3040(%rbp)
	movq	%rdx, 3048(%rbp)
	movabsq	$481043218554, %rax
	movq	%rax, 3054(%rbp)
	leaq	2864(%rbp), %rcx
	leaq	2080(%rbp), %rax
	leaq	3168(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	leaq	.LC5(%rip), %r8
	movl	$388, %edx
	movq	%rax, %rcx
	call	swprintf
	leaq	2080(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__wsystem(%rip), %rax
	call	*%rax
	leaq	3168(%rbp), %rcx
	leaq	512(%rbp), %rax
	leaq	3168(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	leaq	.LC6(%rip), %r8
	movl	$388, %edx
	movq	%rax, %rcx
	call	swprintf
	leaq	512(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__wsystem(%rip), %rax
	call	*%rax
	leaq	3072(%rbp), %rcx
	leaq	1296(%rbp), %rax
	leaq	3168(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	leaq	.LC7(%rip), %r8
	movl	$388, %edx
	movq	%rax, %rcx
	call	swprintf
	leaq	1296(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__wsystem(%rip), %rax
	call	*%rax
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	RemoveDirectoryRecursively
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	RemoveDirectoryRecursively
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	movl	$5, 40(%rsp)
	leaq	3168(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$0, %r9d
	leaq	.LC15(%rip), %r8
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	movq	__imp_ShellExecuteW(%rip), %rax
	call	*%rax
	leaq	-80(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	movq	__imp_FindFirstFileW(%rip), %rax
	call	*%rax
	movq	%rax, 3688(%rbp)
	cmpq	$-1, 3688(%rbp)
	je	.L18
.L20:
	leaq	-80(%rbp), %rax
	addq	$44, %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	wcscmp
	testl	%eax, %eax
	je	.L19
	movl	-80(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L19
	leaq	-80(%rbp), %rax
	addq	$44, %rax
	movq	%rax, %rcx
	movq	__imp_RemoveDirectoryW(%rip), %rax
	call	*%rax
.L19:
	leaq	-80(%rbp), %rdx
	movq	3688(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_FindNextFileW(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L20
	movq	3688(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_FindClose(%rip), %rax
	call	*%rax
.L18:
	movl	$0, %eax
	addq	$3824, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 2
.LC19:
	.ascii "%\0s\0 \0\"\0%\0s\0\"\0\0\0"
	.align 2
.LC20:
	.ascii "r\0t\0\0\0"
	.align 8
.LC21:
	.ascii "F\0a\0i\0l\0e\0d\0 \0t\0o\0 \0r\0u\0n\0 \0S\0i\0g\0C\0h\0e\0c\0k\0\12\0\0\0"
	.align 2
.LC22:
	.ascii "V\0e\0r\0i\0f\0i\0e\0d\0:\0\0\0"
	.align 2
.LC23:
	.ascii "U\0n\0s\0i\0g\0n\0e\0d\0\0\0"
	.align 8
.LC24:
	.ascii "\33\0[\0"
	.ascii "3\0"
	.ascii "3\0m\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0=\0\33\0[\0"
	.ascii "0\0m\0\12\0\0\0"
	.text
	.globl	check_digital_signature
	.def	check_digital_signature;	.scl	2;	.type	32;	.endef
	.seh_proc	check_digital_signature
check_digital_signature:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$3168, %rsp
	.seh_stackalloc	3168
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 3056(%rbp)
	movq	%rdx, 3064(%rbp)
	movq	3064(%rbp), %rdx
	leaq	2496(%rbp), %rax
	movq	%rax, %rcx
	call	wcscpy
	movq	3056(%rbp), %rcx
	leaq	944(%rbp), %rax
	leaq	2496(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	leaq	.LC19(%rip), %r8
	movl	$772, %edx
	movq	%rax, %rcx
	call	swprintf
	leaq	944(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	movq	__imp__wpopen(%rip), %rax
	call	*%rax
	movq	%rax, 3024(%rbp)
	cmpq	$0, 3024(%rbp)
	jne	.L23
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	movl	$1, %eax
	jmp	.L28
.L23:
	movl	$0, 3036(%rbp)
	jmp	.L25
.L26:
	leaq	-80(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	wcsstr
	testq	%rax, %rax
	je	.L25
	leaq	-80(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	movq	%rax, %rcx
	call	wcsstr
	testq	%rax, %rax
	je	.L25
	movl	$1, 3036(%rbp)
.L25:
	movq	3024(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r8
	movl	$512, %edx
	movq	%rax, %rcx
	call	fgetws
	testq	%rax, %rax
	jne	.L26
	movq	3024(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	cmpl	$0, 3036(%rbp)
	je	.L27
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	movl	$1, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	addq	$3168, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "S\0e\0a\0r\0c\0h\0 \0r\0e\0s\0u\0l\0t\0s\0.\0t\0x\0t\0\0\0"
.LC26:
	.ascii "r\0"
.LC27:
	.ascii "Search results.txt\0"
	.align 8
.LC28:
	.ascii "Error: Search results.txt could not be opened\0"
	.align 2
.LC29:
	.ascii ":\0 \0\0\0"
	.align 2
.LC30:
	.ascii "s\0i\0g\0c\0h\0e\0c\0k\0"
	.ascii "6\0"
	.ascii "4\0.\0e\0x\0e\0\0\0"
	.align 8
.LC31:
	.ascii "S\0u\0s\0p\0i\0c\0i\0o\0u\0s\0 \0f\0i\0l\0e\0 \0d\0e\0t\0e\0c\0t\0e\0d\0:\0 \0\"\0%\0s\0\"\0\12\0\0\0"
	.align 8
.LC32:
	.ascii "S\0c\0a\0n\0 \0c\0s\0r\0s\0s\0 \0w\0i\0t\0h\0 \0t\0h\0i\0s\0 \0r\0e\0g\0e\0x\0:\0 \0^\0[\0A\0-\0Z\0a\0-\0z\0]\0:\0\\\0\\\0.\0+\0\\\0.\0(\0e\0x\0e\0|\0d\0l\0l\0)\0$\0 \0a\0n\0d\0 \0s\0a\0v\0e\0 \0t\0h\0e\0 \0f\0i\0l\0e\0 \0'\0S\0e\0a\0r\0c\0h\0 \0r\0e\0s\0u\0l\0t\0s\0.\0t\0x\0t\0'\0 \0n\0e\0x\0t\0 \0t\0o\0 \0S\0S\0 \0H\0e\0l\0p\0e\0r\0.\0e\0x\0e\0.\0\12\0\0\0"
	.align 8
.LC33:
	.ascii "T\0y\0p\0e\0 \0'\0a\0s\0d\0'\0 \0i\0f\0 \0y\0o\0u\0 \0w\0a\0n\0t\0 \0t\0o\0 \0r\0e\0m\0o\0v\0e\0 \0S\0y\0s\0t\0e\0m\0 \0I\0n\0f\0o\0r\0m\0e\0r\0,\0 \0a\0n\0y\0 \0S\0e\0a\0r\0c\0h\0 \0r\0e\0s\0u\0l\0t\0s\0 \0f\0i\0l\0e\0 \0a\0n\0d\0 \0S\0i\0g\0C\0h\0e\0c\0k\0:\0 \0\0\0"
	.align 2
.LC34:
	.ascii "a\0s\0d\0\0\0"
	.align 2
.LC35:
	.ascii "A\0S\0D\0\0\0"
	.align 8
.LC36:
	.ascii "t\0a\0s\0k\0k\0i\0l\0l\0 \0/\0F\0 \0/\0I\0M\0 \0S\0y\0s\0t\0e\0m\0I\0n\0f\0o\0r\0m\0e\0r\0.\0e\0x\0e\0\0\0"
	.align 2
.LC37:
	.ascii "S\0i\0g\0C\0h\0e\0c\0k\0"
	.ascii "6\0"
	.ascii "4\0.\0e\0x\0e\0\0\0"
	.align 8
.LC38:
	.ascii "S\0y\0s\0t\0e\0m\0 \0I\0n\0f\0o\0r\0m\0e\0r\0 \0c\0o\0u\0l\0d\0 \0n\0o\0t\0 \0b\0e\0 \0d\0e\0l\0e\0t\0e\0d\0,\0 \0d\0e\0l\0e\0t\0e\0 \0i\0t\0 \0m\0a\0n\0u\0a\0l\0l\0y\0.\0\12\0\0\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movl	$136336, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	136336
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	leaq	135632(%rbp), %rax
	movq	%rax, %rdx
	movl	$260, %ecx
	movq	__imp_GetCurrentDirectoryW(%rip), %rax
	call	*%rax
	movb	$0, 136187(%rbp)
	movb	$0, 136207(%rbp)
	movzbl	136187(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L46
	call	download_sstools
	movb	$1, 136187(%rbp)
.L46:
	movl	$0, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__waccess(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L31
	movq	$0, 135624(%rbp)
	leaq	135624(%rbp), %rax
	leaq	.LC26(%rip), %r8
	leaq	.LC27(%rip), %rdx
	movq	%rax, %rcx
	movq	__imp_fopen_s(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L32
	leaq	.LC28(%rip), %rax
	movq	%rax, %rcx
	call	perror
	movl	$1, %ecx
	call	exit
.L32:
	movl	$0, 136200(%rbp)
	jmp	.L33
.L39:
	leaq	-96(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rax, %rcx
	call	wcsstr
	movq	%rax, 136168(%rbp)
	cmpq	$0, 136168(%rbp)
	je	.L33
	addq	$4, 136168(%rbp)
	movq	136168(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rcx
	call	wcschr
	movq	%rax, 136160(%rbp)
	cmpq	$0, 136160(%rbp)
	je	.L34
	movq	136160(%rbp), %rax
	movw	$0, (%rax)
.L34:
	movl	$0, 136196(%rbp)
	movl	$0, 136192(%rbp)
	jmp	.L35
.L38:
	leaq	416(%rbp), %rcx
	movl	136192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$6, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	136168(%rbp), %rax
	movq	%rax, %rdx
	call	wcscmp
	testl	%eax, %eax
	jne	.L36
	movl	$1, 136196(%rbp)
	jmp	.L37
.L36:
	addl	$1, 136192(%rbp)
.L35:
	movl	136192(%rbp), %eax
	cmpl	136200(%rbp), %eax
	jl	.L38
.L37:
	cmpl	$0, 136196(%rbp)
	jne	.L33
	leaq	416(%rbp), %rcx
	movl	136200(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$6, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	136168(%rbp), %rax
	movq	%rax, %rdx
	call	wcscpy
	addl	$1, 136200(%rbp)
.L33:
	movq	135624(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r8
	movl	$256, %edx
	movq	%rax, %rcx
	call	fgetws
	testq	%rax, %rax
	jne	.L39
	movq	135624(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	cmpl	$0, 136200(%rbp)
	jle	.L53
	movl	$0, 136188(%rbp)
	jmp	.L41
.L43:
	leaq	416(%rbp), %rcx
	movl	136188(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$6, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	leaq	.LC30(%rip), %rax
	movq	%rax, %rcx
	call	check_digital_signature
	movl	%eax, 136180(%rbp)
	cmpl	$1, 136180(%rbp)
	jne	.L42
	leaq	416(%rbp), %rcx
	movl	136188(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$6, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	leaq	.LC31(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
.L42:
	addl	$1, 136188(%rbp)
.L41:
	movl	136188(%rbp), %eax
	cmpl	136200(%rbp), %eax
	jl	.L43
.L53:
	nop
	jmp	.L44
.L31:
	movzbl	136207(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L45
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	movb	$1, 136207(%rbp)
.L45:
	movl	$1000, %ecx
	movq	__imp_Sleep(%rip), %rax
	call	*%rax
	jmp	.L46
.L44:
	leaq	.LC33(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	135616(%rbp), %rax
	movq	%rdx, %r8
	movl	$4, %edx
	movq	%rax, %rcx
	call	fgetws
	testq	%rax, %rax
	je	.L44
	leaq	135616(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rax, %rcx
	call	wcscmp
	testl	%eax, %eax
	je	.L48
	leaq	135616(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rax, %rcx
	call	wcscmp
	testl	%eax, %eax
	jne	.L44
.L48:
	leaq	.LC36(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wsystem(%rip), %rax
	call	*%rax
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC37(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	call	RemoveDirectoryRecursively
	testl	%eax, %eax
	je	.L49
	movl	$0, %eax
	jmp	.L52
.L49:
	leaq	.LC38(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	jmp	.L44
.L52:
	addq	$136336, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__stdio_common_vfwprintf;	.scl	2;	.type	32;	.endef
	.def	__stdio_common_vswprintf;	.scl	2;	.type	32;	.endef
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.def	wcsstr;	.scl	2;	.type	32;	.endef
	.def	fgetws;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	perror;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	wcschr;	.scl	2;	.type	32;	.endef
