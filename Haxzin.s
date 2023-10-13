	.file	"main.c"
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
	.globl	DownloadFile
	.def	DownloadFile;	.scl	2;	.type	32;	.endef
	.seh_proc	DownloadFile
DownloadFile:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$0, %ecx
	call	URLDownloadToFileW
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "h\0t\0t\0p\0s\0:\0/\0/\0g\0i\0t\0h\0u\0b\0.\0c\0o\0m\0/\0w\0i\0n\0s\0i\0d\0e\0r\0s\0s\0/\0s\0i\0-\0b\0u\0i\0l\0d\0s\0/\0r\0e\0l\0e\0a\0s\0e\0s\0/\0d\0o\0w\0n\0l\0o\0a\0d\0/\0"
	.ascii "3\0.\0"
	.ascii "0\0.\0"
	.ascii "7\0"
	.ascii "2\0"
	.ascii "7\0"
	.ascii "0\0/\0s\0y\0s\0t\0e\0m\0i\0n\0f\0o\0r\0m\0e\0r\0-\0"
	.ascii "3\0.\0"
	.ascii "0\0.\0"
	.ascii "7\0"
	.ascii "2\0"
	.ascii "7\0"
	.ascii "0\0-\0b\0i\0n\0.\0z\0i\0p\0\0\0"
	.align 8
.LC5:
	.ascii "h\0t\0t\0p\0s\0:\0/\0/\0d\0l\0.\0a\0v\0e\0n\0g\0e\0.\0a\0c\0\0\0"
	.align 8
.LC6:
	.ascii "h\0t\0t\0p\0s\0:\0/\0/\0d\0o\0w\0n\0l\0o\0a\0d\0.\0s\0y\0s\0i\0n\0t\0e\0r\0n\0a\0l\0s\0.\0c\0o\0m\0/\0f\0i\0l\0e\0s\0/\0S\0i\0g\0c\0h\0e\0c\0k\0.\0z\0i\0p\0\0\0"
	.align 8
.LC7:
	.ascii "s\0y\0s\0t\0e\0m\0i\0n\0f\0o\0r\0m\0e\0r\0-\0"
	.ascii "3\0.\0"
	.ascii "0\0.\0"
	.ascii "7\0"
	.ascii "2\0"
	.ascii "7\0"
	.ascii "0\0-\0b\0i\0n\0.\0z\0i\0p\0\0\0"
	.align 2
.LC8:
	.ascii "A\0v\0e\0n\0g\0e\0.\0e\0x\0e\0\0\0"
	.align 2
.LC9:
	.ascii "S\0i\0g\0c\0h\0e\0c\0k\0.\0z\0i\0p\0\0\0"
	.align 8
.LC10:
	.ascii "p\0o\0w\0e\0r\0s\0h\0e\0l\0l\0 \0-\0C\0o\0m\0m\0a\0n\0d\0 \0\"\0I\0n\0v\0o\0k\0e\0-\0W\0e\0b\0R\0e\0q\0u\0e\0s\0t\0 \0-\0U\0r\0i\0 \0'\0%\0s\0'\0 \0-\0O\0u\0t\0F\0i\0l\0e\0 \0'\0%\0s\0\\\0S\0i\0g\0C\0h\0e\0c\0k\0.\0z\0i\0p\0'\0 \0-\0U\0s\0e\0B\0a\0s\0i\0c\0P\0a\0r\0s\0i\0n\0g\0\"\0\0\0"
	.align 8
.LC11:
	.ascii "p\0o\0w\0e\0r\0s\0h\0e\0l\0l\0 \0-\0C\0o\0m\0m\0a\0n\0d\0 \0\"\0E\0x\0p\0a\0n\0d\0-\0A\0r\0c\0h\0i\0v\0e\0 \0-\0P\0a\0t\0h\0 \0'\0%\0s\0\\\0S\0i\0g\0C\0h\0e\0c\0k\0.\0z\0i\0p\0'\0 \0-\0D\0e\0s\0t\0i\0n\0a\0t\0i\0o\0n\0P\0a\0t\0h\0 \0'\0%\0s\0'\0 \0-\0F\0o\0r\0c\0e\0\"\0\0\0"
.LC12:
	.ascii "sigcheck64.exe\0"
	.align 8
.LC13:
	.ascii "p\0o\0w\0e\0r\0s\0h\0e\0l\0l\0 \0-\0C\0o\0m\0m\0a\0n\0d\0 \0\"\0I\0n\0v\0o\0k\0e\0-\0W\0e\0b\0R\0e\0q\0u\0e\0s\0t\0 \0-\0U\0r\0i\0 \0'\0%\0s\0'\0 \0-\0O\0u\0t\0F\0i\0l\0e\0 \0'\0%\0s\0\\\0s\0y\0s\0t\0e\0m\0i\0n\0f\0o\0r\0m\0e\0r\0-\0"
	.ascii "3\0.\0"
	.ascii "0\0.\0"
	.ascii "7\0"
	.ascii "2\0"
	.ascii "7\0"
	.ascii "0\0-\0b\0i\0n\0.\0z\0i\0p\0'\0 \0-\0U\0s\0e\0B\0a\0s\0i\0c\0P\0a\0r\0s\0i\0n\0g\0\"\0\0\0"
	.align 8
.LC14:
	.ascii "p\0o\0w\0e\0r\0s\0h\0e\0l\0l\0 \0-\0C\0o\0m\0m\0a\0n\0d\0 \0\"\0E\0x\0p\0a\0n\0d\0-\0A\0r\0c\0h\0i\0v\0e\0 \0-\0P\0a\0t\0h\0 \0'\0%\0s\0\\\0s\0y\0s\0t\0e\0m\0i\0n\0f\0o\0r\0m\0e\0r\0-\0"
	.ascii "3\0.\0"
	.ascii "0\0.\0"
	.ascii "7\0"
	.ascii "2\0"
	.ascii "7\0"
	.ascii "0\0-\0b\0i\0n\0.\0z\0i\0p\0'\0 \0-\0D\0e\0s\0t\0i\0n\0a\0t\0i\0o\0n\0P\0a\0t\0h\0 \0'\0%\0s\0'\0 \0-\0F\0o\0r\0c\0e\0\"\0\0\0"
	.align 8
.LC15:
	.ascii "p\0o\0w\0e\0r\0s\0h\0e\0l\0l\0 \0-\0C\0o\0m\0m\0a\0n\0d\0 \0\"\0I\0n\0v\0o\0k\0e\0-\0W\0e\0b\0R\0e\0q\0u\0e\0s\0t\0 \0-\0U\0r\0i\0 \0'\0%\0s\0'\0 \0-\0O\0u\0t\0F\0i\0l\0e\0 \0'\0%\0s\0\\\0A\0v\0e\0n\0g\0e\0.\0e\0x\0e\0'\0\0\0"
	.align 2
.LC16:
	.ascii "o\0p\0e\0n\0\0\0"
	.align 8
.LC17:
	.ascii "S\0y\0s\0t\0e\0m\0 \0I\0n\0f\0o\0r\0m\0e\0r\0\0\0"
	.align 2
.LC18:
	.ascii "a\0m\0d\0"
	.ascii "6\0"
	.ascii "4\0\0\0"
	.align 8
.LC19:
	.ascii "S\0y\0s\0t\0e\0m\0 \0I\0n\0f\0o\0r\0m\0e\0r\0\\\0S\0y\0s\0t\0e\0m\0I\0n\0f\0o\0r\0m\0e\0r\0.\0e\0x\0e\0\0\0"
	.align 2
.LC20:
	.ascii "R\0E\0A\0D\0M\0E\0.\0t\0x\0t\0\0\0"
	.align 2
.LC21:
	.ascii "L\0I\0C\0E\0N\0S\0E\0.\0t\0x\0t\0\0\0"
	.align 2
.LC22:
	.ascii "E\0u\0l\0a\0.\0t\0x\0t\0\0\0"
	.align 2
.LC23:
	.ascii "C\0O\0P\0Y\0R\0I\0G\0H\0T\0.\0t\0x\0t\0\0\0"
	.align 2
.LC24:
	.ascii "s\0i\0g\0c\0h\0e\0c\0k\0.\0e\0x\0e\0\0\0"
	.align 8
.LC25:
	.ascii "s\0i\0g\0c\0h\0e\0c\0k\0"
	.ascii "6\0"
	.ascii "4\0a\0.\0e\0x\0e\0\0\0"
	.align 2
.LC26:
	.ascii "S\0i\0g\0C\0h\0e\0c\0k\0.\0z\0i\0p\0\0\0"
	.align 2
.LC27:
	.ascii "a\0r\0m\0"
	.ascii "6\0"
	.ascii "4\0\0\0"
	.align 2
.LC28:
	.ascii "i\0"
	.ascii "3\0"
	.ascii "8\0"
	.ascii "6\0\0\0"
	.text
	.globl	download_sstools
	.def	download_sstools;	.scl	2;	.type	32;	.endef
	.seh_proc	download_sstools
download_sstools:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$2256, %rsp
	.seh_stackalloc	2256
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movl	$0, 2116(%rbp)
	leaq	1568(%rbp), %rax
	movl	$260, %r8d
	movq	%rax, %rdx
	movl	$0, %ecx
	movq	__imp_GetModuleFileNameW(%rip), %rax
	call	*%rax
	leaq	1568(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_PathRemoveFileSpecW(%rip), %rax
	call	*%rax
	leaq	.LC4(%rip), %rax
	movq	%rax, 2104(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, 2096(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, 2088(%rbp)
	movq	2104(%rbp), %rax
	movq	%rax, 1520(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, 1528(%rbp)
	movq	2096(%rbp), %rax
	movq	%rax, 1536(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, 1544(%rbp)
	movq	2088(%rbp), %rax
	movq	%rax, 1552(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, 1560(%rbp)
	movl	$0, 2124(%rbp)
	jmp	.L19
.L20:
	leaq	1520(%rbp), %rax
	movl	2124(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movq	%rax, %r9
	leaq	DownloadFile(%rip), %r8
	movl	$0, %edx
	movl	$0, %ecx
	movq	__imp_CreateThread(%rip), %rax
	call	*%rax
	movl	2124(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, 1488(%rbp,%rdx,8)
	addl	$1, 2124(%rbp)
.L19:
	movl	2124(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L20
	leaq	1488(%rbp), %rax
	movl	$-1, %r9d
	movl	$1, %r8d
	movq	%rax, %rdx
	movl	$3, %ecx
	movq	__imp_WaitForMultipleObjects(%rip), %rax
	call	*%rax
	movl	$0, 2120(%rbp)
	jmp	.L21
.L22:
	movl	2120(%rbp), %eax
	cltq
	movq	1488(%rbp,%rax,8), %rax
	movq	%rax, %rcx
	movq	__imp_CloseHandle(%rip), %rax
	call	*%rax
	addl	$1, 2120(%rbp)
.L21:
	movl	2120(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L22
	movq	2088(%rbp), %rcx
	leaq	704(%rbp), %rax
	leaq	1568(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	leaq	.LC10(%rip), %r8
	movl	$388, %edx
	movq	%rax, %rcx
	call	swprintf
	leaq	1568(%rbp), %rcx
	leaq	704(%rbp), %rax
	leaq	1568(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	leaq	.LC11(%rip), %r8
	movl	$388, %edx
	movq	%rax, %rcx
	call	swprintf
	movl	$2, %edx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	movq	__imp_SetFileAttributesA(%rip), %rax
	call	*%rax
	movq	2104(%rbp), %rcx
	leaq	704(%rbp), %rax
	leaq	1568(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	leaq	.LC13(%rip), %r8
	movl	$388, %edx
	movq	%rax, %rcx
	call	swprintf
	leaq	704(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__wsystem(%rip), %rax
	call	*%rax
	movl	%eax, 2116(%rbp)
	leaq	1568(%rbp), %rcx
	leaq	-80(%rbp), %rax
	leaq	1568(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	leaq	.LC14(%rip), %r8
	movl	$388, %edx
	movq	%rax, %rcx
	call	swprintf
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__wsystem(%rip), %rax
	call	*%rax
	movl	%eax, 2116(%rbp)
	movq	2096(%rbp), %rcx
	leaq	704(%rbp), %rax
	leaq	1568(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	leaq	.LC15(%rip), %r8
	movl	$388, %edx
	movq	%rax, %rcx
	call	swprintf
	leaq	704(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__wsystem(%rip), %rax
	call	*%rax
	movl	%eax, 2116(%rbp)
	movl	$5, 40(%rsp)
	leaq	1568(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$0, %r9d
	leaq	.LC8(%rip), %r8
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	movq	__imp_ShellExecuteW(%rip), %rax
	call	*%rax
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	movq	__imp_MoveFileW(%rip), %rax
	call	*%rax
	movl	$5, 40(%rsp)
	leaq	1568(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$0, %r9d
	leaq	.LC19(%rip), %r8
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	movq	__imp_ShellExecuteW(%rip), %rax
	call	*%rax
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC23(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC26(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC27(%rip), %rax
	movq	%rax, %rcx
	call	RemoveDirectoryRecursively
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	call	RemoveDirectoryRecursively
	leaq	.LC28(%rip), %rax
	movq	%rax, %rcx
	call	RemoveDirectoryRecursively
	movl	$0, %eax
	addq	$2256, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 2
.LC29:
	.ascii "%\0s\0 \0\"\0%\0s\0\"\0\0\0"
	.align 2
.LC30:
	.ascii "r\0t\0\0\0"
	.align 8
.LC31:
	.ascii "F\0a\0i\0l\0e\0d\0 \0t\0o\0 \0r\0u\0n\0 \0S\0i\0g\0C\0h\0e\0c\0k\0\12\0\0\0"
	.align 2
.LC32:
	.ascii "V\0e\0r\0i\0f\0i\0e\0d\0:\0\0\0"
	.align 2
.LC33:
	.ascii "U\0n\0s\0i\0g\0n\0e\0d\0\0\0"
	.align 8
.LC34:
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
	leaq	.LC29(%rip), %r8
	movl	$772, %edx
	movq	%rax, %rcx
	call	swprintf
	leaq	944(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	movq	__imp__wpopen(%rip), %rax
	call	*%rax
	movq	%rax, 3024(%rbp)
	cmpq	$0, 3024(%rbp)
	jne	.L25
	leaq	.LC31(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	movl	$1, %eax
	jmp	.L30
.L25:
	movl	$0, 3036(%rbp)
	jmp	.L27
.L28:
	leaq	-80(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	wcsstr
	testq	%rax, %rax
	je	.L27
	leaq	-80(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	call	wcsstr
	testq	%rax, %rax
	je	.L27
	movl	$1, 3036(%rbp)
.L27:
	movq	3024(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r8
	movl	$512, %edx
	movq	%rax, %rcx
	call	fgetws
	testq	%rax, %rax
	jne	.L28
	movq	3024(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	cmpl	$0, 3036(%rbp)
	je	.L29
	leaq	.LC34(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	movl	$1, %eax
	jmp	.L30
.L29:
	movl	$0, %eax
.L30:
	addq	$3168, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC35:
	.ascii "E\0r\0r\0o\0r\0:\0 \0G\0e\0t\0C\0u\0r\0r\0e\0n\0t\0D\0i\0r\0e\0c\0t\0o\0r\0y\0W\0\12\0\0\0"
	.align 8
.LC36:
	.ascii "S\0e\0a\0r\0c\0h\0 \0r\0e\0s\0u\0l\0t\0s\0.\0t\0x\0t\0\0\0"
.LC37:
	.ascii "r\0"
.LC38:
	.ascii "Search results.txt\0"
.LC39:
	.ascii "Error: fopen_s\0"
	.align 2
.LC40:
	.ascii ":\0 \0\0\0"
	.align 2
.LC41:
	.ascii "s\0i\0g\0c\0h\0e\0c\0k\0"
	.ascii "6\0"
	.ascii "4\0.\0e\0x\0e\0\0\0"
	.align 8
.LC42:
	.ascii "S\0u\0s\0p\0i\0c\0i\0o\0u\0s\0 \0f\0i\0l\0e\0 \0d\0e\0t\0e\0c\0t\0e\0d\0:\0 \0\"\0%\0s\0\"\0\12\0\0\0"
	.align 2
.LC43:
	.ascii "S\0i\0g\0C\0h\0e\0c\0k\0"
	.ascii "6\0"
	.ascii "4\0.\0e\0x\0e\0\0\0"
	.align 8
.LC44:
	.ascii "E\0s\0c\0a\0n\0e\0a\0 \0c\0s\0r\0s\0s\0 \0c\0o\0n\0 \0e\0s\0t\0e\0 \0r\0e\0g\0e\0x\0:\0 \0^\0[\0A\0-\0Z\0a\0-\0z\0]\0:\0\\\0\\\0.\0+\0\\\0.\0(\0e\0x\0e\0|\0d\0l\0l\0)\0$\0 \0y\0 \0g\0u\0a\0r\0d\0a\0 \0e\0l\0 \0a\0r\0c\0h\0i\0v\0o\0 \0'\0S\0e\0a\0r\0c\0h\0 \0r\0e\0s\0u\0l\0t\0s\0.\0t\0x\0t\0'\0 \0a\0l\0 \0l\0a\0d\0o\0 \0d\0e\0 \0S\0S\0 \0H\0e\0l\0p\0e\0r\0.\0e\0x\0e\0\12\0\0\0"
	.align 8
.LC45:
	.ascii "E\0s\0c\0r\0i\0b\0e\0 \0'\0a\0s\0d\0'\0 \0s\0i\0 \0d\0e\0s\0e\0a\0s\0 \0e\0l\0i\0m\0i\0n\0a\0r\0 \0S\0y\0s\0t\0e\0m\0 \0I\0n\0f\0o\0r\0m\0e\0r\0 \0y\0 \0a\0u\0t\0o\0d\0e\0s\0t\0r\0u\0i\0r\0 \0S\0S\0 \0H\0e\0l\0p\0e\0r\0:\0 \0\0\0"
	.align 2
.LC46:
	.ascii "a\0s\0d\0\0\0"
	.align 8
.LC47:
	.ascii "t\0a\0s\0k\0k\0i\0l\0l\0 \0/\0F\0 \0/\0I\0M\0 \0S\0y\0s\0t\0e\0m\0I\0n\0f\0o\0r\0m\0e\0r\0.\0e\0x\0e\0\0\0"
	.align 8
.LC48:
	.ascii "N\0o\0 \0s\0e\0 \0p\0u\0d\0o\0 \0b\0o\0r\0r\0a\0r\0 \0S\0y\0s\0t\0e\0m\0 \0I\0n\0f\0o\0r\0m\0e\0r\0,\0 \0e\0l\0i\0m\0i\0n\0a\0l\0o\0 \0m\0a\0n\0u\0a\0l\0m\0e\0n\0t\0e\0.\0\12\0\0\0"
	.align 2
.LC49:
	.ascii "S\0S\0H\0e\0l\0p\0e\0r\0.\0e\0x\0e\0\0\0"
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
	leaq	135632(%rbp), %rax
	movq	%rax, %rdx
	movl	$260, %ecx
	movq	__imp_GetCurrentDirectoryW(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L32
	leaq	.LC35(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	movl	$1, %ecx
	call	exit
.L32:
	movzbl	136187(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L49
	call	download_sstools
	movb	$1, 136187(%rbp)
.L49:
	movl	$0, %edx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__waccess(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L34
	movq	$0, 135624(%rbp)
	leaq	135624(%rbp), %rax
	leaq	.LC37(%rip), %r8
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	movq	__imp_fopen_s(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L35
	leaq	.LC39(%rip), %rax
	movq	%rax, %rcx
	call	perror
	movl	$1, %ecx
	call	exit
.L35:
	movl	$0, 136200(%rbp)
	jmp	.L36
.L42:
	leaq	-96(%rbp), %rax
	leaq	.LC40(%rip), %rdx
	movq	%rax, %rcx
	call	wcsstr
	movq	%rax, 136168(%rbp)
	cmpq	$0, 136168(%rbp)
	je	.L36
	addq	$4, 136168(%rbp)
	movq	136168(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rcx
	call	wcschr
	movq	%rax, 136160(%rbp)
	cmpq	$0, 136160(%rbp)
	je	.L37
	movq	136160(%rbp), %rax
	movw	$0, (%rax)
.L37:
	movl	$0, 136196(%rbp)
	movl	$0, 136192(%rbp)
	jmp	.L38
.L41:
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
	jne	.L39
	movl	$1, 136196(%rbp)
	jmp	.L40
.L39:
	addl	$1, 136192(%rbp)
.L38:
	movl	136192(%rbp), %eax
	cmpl	136200(%rbp), %eax
	jl	.L41
.L40:
	cmpl	$0, 136196(%rbp)
	jne	.L36
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
.L36:
	movq	135624(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r8
	movl	$256, %edx
	movq	%rax, %rcx
	call	fgetws
	testq	%rax, %rax
	jne	.L42
	movq	135624(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	cmpl	$0, 136200(%rbp)
	jle	.L56
	movl	$0, 136188(%rbp)
	jmp	.L44
.L46:
	leaq	416(%rbp), %rcx
	movl	136188(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$6, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	leaq	.LC41(%rip), %rax
	movq	%rax, %rcx
	call	check_digital_signature
	movl	%eax, 136180(%rbp)
	cmpl	$1, 136180(%rbp)
	jne	.L45
	leaq	416(%rbp), %rcx
	movl	136188(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$6, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	leaq	.LC42(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	leaq	.LC34(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
.L45:
	addl	$1, 136188(%rbp)
.L44:
	movl	136188(%rbp), %eax
	cmpl	136200(%rbp), %eax
	jl	.L46
.L56:
	nop
	leaq	.LC36(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	leaq	.LC43(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	jmp	.L47
.L34:
	movzbl	136207(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L48
	leaq	.LC44(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	movb	$1, 136207(%rbp)
.L48:
	movl	$1000, %ecx
	movq	__imp_Sleep(%rip), %rax
	call	*%rax
	jmp	.L49
.L47:
	leaq	.LC45(%rip), %rax
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
	je	.L47
	leaq	135616(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	movq	__imp__wcsicmp(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L47
	leaq	.LC47(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wsystem(%rip), %rax
	call	*%rax
	movl	%eax, 136176(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	call	RemoveDirectoryRecursively
	testl	%eax, %eax
	jne	.L57
	leaq	.LC48(%rip), %rax
	movq	%rax, %rcx
	call	wprintf
	leaq	.LC49(%rip), %rax
	movq	%rax, %rcx
	movq	__imp__wremove(%rip), %rax
	call	*%rax
	jmp	.L47
.L57:
	nop
	movl	$0, %eax
	addq	$136336, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__stdio_common_vfwprintf;	.scl	2;	.type	32;	.endef
	.def	__stdio_common_vswprintf;	.scl	2;	.type	32;	.endef
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.def	URLDownloadToFileW;	.scl	2;	.type	32;	.endef
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.def	wcsstr;	.scl	2;	.type	32;	.endef
	.def	fgetws;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	perror;	.scl	2;	.type	32;	.endef
	.def	wcschr;	.scl	2;	.type	32;	.endef
