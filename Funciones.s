	.file	"Funciones.c"
	.text
	.p2align 4
	.globl	crear_usuario
	.type	crear_usuario, @function
crear_usuario:
.LFB51:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%esi, %ebx
	movq	%rdx, %rsi
	movl	$50, %edx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	leaq	4(%rsp), %rdi
	call	__strcpy_chk@PLT
	leaq	54(%rsp), %rdi
	movl	$50, %edx
	movq	%rbp, %rsi
	call	__strcpy_chk@PLT
	movq	96(%rsp), %rax
	movl	%ebx, (%rsp)
	movdqa	16(%rsp), %xmm1
	movdqa	(%rsp), %xmm0
	movdqa	32(%rsp), %xmm2
	movdqa	48(%rsp), %xmm3
	movq	%rax, 96(%r12)
	movdqa	64(%rsp), %xmm4
	movdqa	80(%rsp), %xmm5
	movups	%xmm0, (%r12)
	movups	%xmm1, 16(%r12)
	movups	%xmm2, 32(%r12)
	movups	%xmm3, 48(%r12)
	movups	%xmm4, 64(%r12)
	movups	%xmm5, 80(%r12)
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L5
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE51:
	.size	crear_usuario, .-crear_usuario
	.p2align 4
	.globl	add_usuario
	.type	add_usuario, @function
add_usuario:
.LFB52:
	.cfi_startproc
	cmpb	$0, 4(%rdi)
	jne	.L6
	movq	104(%rsp), %rax
	movdqu	8(%rsp), %xmm0
	movdqu	24(%rsp), %xmm1
	movdqu	40(%rsp), %xmm2
	movdqu	56(%rsp), %xmm3
	movdqu	72(%rsp), %xmm4
	movq	%rax, 96(%rdi)
	movdqu	88(%rsp), %xmm5
	movups	%xmm0, (%rdi)
	movups	%xmm1, 16(%rdi)
	movups	%xmm2, 32(%rdi)
	movups	%xmm3, 48(%rdi)
	movups	%xmm4, 64(%rdi)
	movups	%xmm5, 80(%rdi)
.L6:
	ret
	.cfi_endproc
.LFE52:
	.size	add_usuario, .-add_usuario
	.p2align 4
	.globl	actualizar_usuario
	.type	actualizar_usuario, @function
actualizar_usuario:
.LFB53:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%rsp), %eax
	movq	%rdi, %rbx
	movl	$50, %edx
	leaq	4(%rdi), %rdi
	movl	%eax, -4(%rdi)
	leaq	20(%rsp), %rsi
	call	__strcpy_chk@PLT
	leaq	70(%rsp), %rsi
	leaq	54(%rbx), %rdi
	call	strcpy@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE53:
	.size	actualizar_usuario, .-actualizar_usuario
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Ingrese el nuevo nombre del producto: "
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%s"
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"Ingrese la nueva categoria del producto: "
	.align 8
.LC3:
	.string	"Ingrese la nueva marca del producto: "
	.align 8
.LC4:
	.string	"Ingrese el nuevo codigo del producto: "
	.section	.rodata.str1.1
.LC5:
	.string	"%d"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Ingrese el nuevo precio de compra del producto: "
	.section	.rodata.str1.1
.LC7:
	.string	"%f"
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"Ingrese la nueva bodega del producto: "
	.align 8
.LC9:
	.string	"Ingrese la nueva cantidad del producto: "
	.align 8
.LC10:
	.string	"Producto actualizado exitosamente."
	.text
	.p2align 4
	.globl	actualizar_producto
	.type	actualizar_producto, @function
actualizar_producto:
.LFB54:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movslq	%esi, %rsi
	leaq	.LC5(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC1(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$176, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	leaq	(%rsi,%rsi,4), %rax
	leaq	(%rsi,%rax,4), %rax
	leaq	.LC0(%rip), %rsi
	leaq	(%rdi,%rax,8), %rbx
	movl	$1, %edi
	movdqu	(%rbx), %xmm0
	movdqu	16(%rbx), %xmm1
	movq	160(%rbx), %rax
	movdqu	32(%rbx), %xmm2
	movdqu	48(%rbx), %xmm3
	movdqu	64(%rbx), %xmm4
	movaps	%xmm0, (%rsp)
	movdqu	80(%rbx), %xmm5
	movdqu	96(%rbx), %xmm6
	movaps	%xmm1, 16(%rsp)
	movdqu	112(%rbx), %xmm7
	movdqu	128(%rbx), %xmm0
	movq	%rax, 160(%rsp)
	xorl	%eax, %eax
	movdqu	144(%rbx), %xmm1
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm3, 48(%rsp)
	movaps	%xmm4, 64(%rsp)
	movaps	%xmm5, 80(%rsp)
	movaps	%xmm6, 96(%rsp)
	movaps	%xmm7, 112(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm1, 144(%rsp)
	call	__printf_chk@PLT
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	50(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	100(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	152(%rsp), %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	156(%rsp), %rsi
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	160(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%r12, %rdi
	xorl	%eax, %eax
	leaq	164(%rsp), %rsi
	call	__isoc99_scanf@PLT
	movdqa	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm3
	leaq	.LC10(%rip), %rdi
	movq	160(%rsp), %rax
	movdqa	32(%rsp), %xmm4
	movdqa	48(%rsp), %xmm5
	movdqa	64(%rsp), %xmm6
	movups	%xmm2, (%rbx)
	movdqa	80(%rsp), %xmm7
	movdqa	96(%rsp), %xmm0
	movups	%xmm3, 16(%rbx)
	movdqa	112(%rsp), %xmm1
	movq	%rax, 160(%rbx)
	movdqa	128(%rsp), %xmm2
	movups	%xmm4, 32(%rbx)
	movdqa	144(%rsp), %xmm3
	movups	%xmm5, 48(%rbx)
	movups	%xmm6, 64(%rbx)
	movups	%xmm7, 80(%rbx)
	movups	%xmm0, 96(%rbx)
	movups	%xmm1, 112(%rbx)
	movups	%xmm2, 128(%rbx)
	movups	%xmm3, 144(%rbx)
	call	puts@PLT
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L13
	addq	$176, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE54:
	.size	actualizar_producto, .-actualizar_producto
	.p2align 4
	.globl	registrarProducto
	.type	registrarProducto, @function
registrarProducto:
.LFB55:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdx, %r14
	movl	$50, %edx
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%r8d, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%r9d, %ebx
	subq	$192, %rsp
	.cfi_def_cfa_offset 240
	movss	%xmm0, 12(%rsp)
	leaq	16(%rsp), %rdi
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	xorl	%eax, %eax
	call	__strcpy_chk@PLT
	leaq	66(%rsp), %rdi
	movl	$50, %edx
	movq	%r14, %rsi
	call	__strcpy_chk@PLT
	leaq	116(%rsp), %rdi
	movl	$50, %edx
	movq	%r13, %rsi
	call	__strcpy_chk@PLT
	movl	240(%rsp), %eax
	movdqa	16(%rsp), %xmm1
	movb	%bpl, 176(%rsp)
	movdqa	32(%rsp), %xmm2
	movdqa	48(%rsp), %xmm3
	movl	%eax, 168(%rsp)
	movss	12(%rsp), %xmm0
	addl	%ebx, 180(%rsp)
	movq	176(%rsp), %rax
	movdqa	64(%rsp), %xmm4
	movdqa	80(%rsp), %xmm5
	movups	%xmm1, (%r12)
	movdqa	96(%rsp), %xmm6
	movdqa	112(%rsp), %xmm7
	movss	%xmm0, 172(%rsp)
	movdqa	128(%rsp), %xmm1
	movups	%xmm2, 16(%r12)
	movdqa	144(%rsp), %xmm2
	movups	%xmm3, 32(%r12)
	movdqa	160(%rsp), %xmm3
	movq	%rax, 160(%r12)
	movups	%xmm4, 48(%r12)
	movups	%xmm5, 64(%r12)
	movups	%xmm6, 80(%r12)
	movups	%xmm7, 96(%r12)
	movups	%xmm1, 112(%r12)
	movups	%xmm2, 128(%r12)
	movups	%xmm3, 144(%r12)
	movq	184(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L17
	addq	$192, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L17:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE55:
	.size	registrarProducto, .-registrarProducto
	.section	.rodata.str1.1
.LC11:
	.string	"Ingrese el nombre del local: "
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"Ingrese el nombre del vendedor: "
	.align 8
.LC13:
	.string	"Ingrese la fecha de la venta: "
	.align 8
.LC14:
	.string	"Ingrese el codigo del producto: "
	.align 8
.LC15:
	.string	"Ingrese el precio de venta del producto: "
	.align 8
.LC16:
	.string	"Ingrese la cantidad de productos vendidos: "
	.text
	.p2align 4
	.globl	crear_venta
	.type	crear_venta, @function
crear_venta:
.LFB56:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	movl	$1, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC1(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	leaq	.LC11(%rip), %rsi
	subq	$144, %rsp
	.cfi_def_cfa_offset 176
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbp, %rdi
	movq	%rsp, %rsi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbp, %rdi
	leaq	50(%rsp), %rsi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbp, %rdi
	leaq	100(%rsp), %rsi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC5(%rip), %rbp
	leaq	.LC14(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	leaq	152(%rbx), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	124(%rsp), %rsi
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	128(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movdqa	(%rsp), %xmm0
	movl	128(%rsp), %eax
	subl	%eax, 164(%rbx)
	movdqa	16(%rsp), %xmm1
	movdqa	32(%rsp), %xmm2
	movdqa	48(%rsp), %xmm3
	movl	%eax, 128(%r12)
	movdqa	64(%rsp), %xmm4
	movdqa	80(%rsp), %xmm5
	movups	%xmm0, (%r12)
	movdqa	96(%rsp), %xmm6
	movdqa	112(%rsp), %xmm7
	movups	%xmm1, 16(%r12)
	movups	%xmm2, 32(%r12)
	movups	%xmm3, 48(%r12)
	movups	%xmm4, 64(%r12)
	movups	%xmm5, 80(%r12)
	movups	%xmm6, 96(%r12)
	movups	%xmm7, 112(%r12)
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L21
	addq	$144, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L21:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE56:
	.size	crear_venta, .-crear_venta
	.p2align 4
	.globl	fijar_tipo_usuario
	.type	fijar_tipo_usuario, @function
fijar_tipo_usuario:
.LFB57:
	.cfi_startproc
	cmpl	$1, %esi
	je	.L26
	cmpl	$2, %esi
	je	.L27
	cmpl	$3, %esi
	je	.L28
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	movl	$1, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	movl	$0, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	movl	$2, (%rdi)
	ret
	.cfi_endproc
.LFE57:
	.size	fijar_tipo_usuario, .-fijar_tipo_usuario
	.section	.rodata.str1.1
.LC17:
	.string	"%d. %s \n"
	.text
	.p2align 4
	.globl	mostrar_usuarios
	.type	mostrar_usuarios, @function
mostrar_usuarios:
.LFB58:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC17(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	4(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L30:
	movq	%rbp, %rcx
	movl	%ebx, %edx
	movq	%r12, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addl	$1, %ebx
	addq	$104, %rbp
	call	__printf_chk@PLT
	cmpl	$10, %ebx
	jne	.L30
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE58:
	.size	mostrar_usuarios, .-mostrar_usuarios
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"Ingrese el nombre del producto: "
	.align 8
.LC19:
	.string	"Ingrese la categoria del producto: "
	.align 8
.LC20:
	.string	"Ingrese la marca del producto: "
	.align 8
.LC21:
	.string	"Ingrese el c\303\263digo del producto: "
	.align 8
.LC22:
	.string	"Ingrese el precio de compra del producto: "
	.align 8
.LC23:
	.string	"Ingrese la cantidad del producto: "
	.align 8
.LC24:
	.string	"Ingrese la bodega del producto: "
	.text
	.p2align 4
	.globl	crear_producto
	.type	crear_producto, @function
crear_producto:
.LFB59:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	.LC18(%rip), %rsi
	leaq	.LC5(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	movl	$1, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	leaq	.LC1(%rip), %rbp
	subq	$176, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	50(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC20(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	100(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	152(%rsp), %rsi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	156(%rsp), %rsi
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC23(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	164(%rsp), %rsi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC24(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	160(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movdqa	(%rsp), %xmm0
	movdqa	16(%rsp), %xmm1
	movq	160(%rsp), %rax
	movdqa	32(%rsp), %xmm2
	movdqa	48(%rsp), %xmm3
	movdqa	64(%rsp), %xmm4
	movups	%xmm0, (%r12)
	movdqa	80(%rsp), %xmm5
	movdqa	96(%rsp), %xmm6
	movups	%xmm1, 16(%r12)
	movdqa	112(%rsp), %xmm7
	movups	%xmm2, 32(%r12)
	movdqa	128(%rsp), %xmm0
	movdqa	144(%rsp), %xmm1
	movq	%rax, 160(%r12)
	movups	%xmm3, 48(%r12)
	movups	%xmm4, 64(%r12)
	movups	%xmm5, 80(%r12)
	movups	%xmm6, 96(%r12)
	movups	%xmm7, 112(%r12)
	movups	%xmm0, 128(%r12)
	movups	%xmm1, 144(%r12)
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L36
	addq	$176, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%r12, %rax
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L36:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE59:
	.size	crear_producto, .-crear_producto
	.p2align 4
	.globl	add_product
	.type	add_product, @function
add_product:
.LFB60:
	.cfi_startproc
	leaq	8400(%rdi), %rax
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L38:
	addq	$168, %rdi
	cmpq	%rax, %rdi
	je	.L42
.L40:
	cmpb	$0, (%rdi)
	jne	.L38
	movdqu	8(%rsp), %xmm0
	movdqu	24(%rsp), %xmm1
	movdqu	40(%rsp), %xmm2
	movdqu	56(%rsp), %xmm3
	movdqu	72(%rsp), %xmm4
	movdqu	88(%rsp), %xmm5
	movups	%xmm0, (%rdi)
	movdqu	104(%rsp), %xmm6
	movdqu	120(%rsp), %xmm7
	movups	%xmm1, 16(%rdi)
	movdqu	136(%rsp), %xmm0
	movq	168(%rsp), %rax
	movups	%xmm2, 32(%rdi)
	movdqu	152(%rsp), %xmm1
	movups	%xmm3, 48(%rdi)
	movq	%rax, 160(%rdi)
	movups	%xmm4, 64(%rdi)
	movups	%xmm5, 80(%rdi)
	movups	%xmm6, 96(%rdi)
	movups	%xmm7, 112(%rdi)
	movups	%xmm0, 128(%rdi)
	movups	%xmm1, 144(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	ret
	.cfi_endproc
.LFE60:
	.size	add_product, .-add_product
	.section	.rodata.str1.1
.LC25:
	.string	"%d. Producto: %s \n"
.LC26:
	.string	"Selecione el producto: "
	.text
	.p2align 4
	.globl	seleccionar_producto
	.type	seleccionar_producto, @function
seleccionar_producto:
.LFB61:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	.LC25(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L44:
	movq	%rbp, %rcx
	movl	%ebx, %edx
	movq	%r12, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addl	$1, %ebx
	addq	$168, %rbp
	call	__printf_chk@PLT
	cmpl	$50, %ebx
	jne	.L44
	leaq	.LC26(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	4(%rsp), %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movslq	4(%rsp), %rax
	leaq	(%rax,%rax,4), %rdx
	leaq	(%rax,%rdx,4), %rax
	leaq	0(%r13,%rax,8), %rax
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L48
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L48:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE61:
	.size	seleccionar_producto, .-seleccionar_producto
	.p2align 4
	.globl	registrarVenta
	.type	registrarVenta, @function
registrarVenta:
.LFB62:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdx, %r14
	movl	$50, %edx
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%r8d, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%r9d, %ebx
	subq	$160, %rsp
	.cfi_def_cfa_offset 208
	movss	%xmm0, 12(%rsp)
	leaq	16(%rsp), %rdi
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	call	__strcpy_chk@PLT
	leaq	66(%rsp), %rdi
	movl	$50, %edx
	movq	%r14, %rsi
	call	__strcpy_chk@PLT
	leaq	116(%rsp), %rdi
	movl	$20, %edx
	movq	%r13, %rsi
	call	__strcpy_chk@PLT
	movdqa	16(%rsp), %xmm1
	movss	12(%rsp), %xmm0
	movl	%ebp, 136(%rsp)
	movdqa	32(%rsp), %xmm2
	movdqa	48(%rsp), %xmm3
	movl	%ebx, 144(%rsp)
	movdqa	64(%rsp), %xmm4
	movdqa	80(%rsp), %xmm5
	movups	%xmm1, (%r12)
	movdqa	96(%rsp), %xmm6
	movdqa	112(%rsp), %xmm7
	movss	%xmm0, 140(%rsp)
	movdqa	128(%rsp), %xmm1
	movl	%ebx, 128(%r12)
	movups	%xmm2, 16(%r12)
	movups	%xmm3, 32(%r12)
	movups	%xmm4, 48(%r12)
	movups	%xmm5, 64(%r12)
	movups	%xmm6, 80(%r12)
	movups	%xmm7, 96(%r12)
	movups	%xmm1, 112(%r12)
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L52
	addq	$160, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L52:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE62:
	.size	registrarVenta, .-registrarVenta
	.section	.rodata.str1.1
.LC27:
	.string	"r"
.LC28:
	.string	"usuarios.txt"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"Error al abrir el archivo de usuarios."
	.text
	.p2align 4
	.globl	leer_usuarios
	.type	leer_usuarios, @function
leer_usuarios:
.LFB63:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC27(%rip), %rsi
	movq	%rdi, %r12
	leaq	.LC28(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	fopen@PLT
	testq	%rax, %rax
	je	.L56
	movq	%r12, %rdi
	movq	%rax, %rcx
	movl	$10, %edx
	movl	$104, %esi
	movq	%rax, %rbp
	call	fread@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fclose@PLT
.L56:
	.cfi_restore_state
	popq	%rax
	.cfi_def_cfa_offset 24
	leaq	.LC29(%rip), %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
	.cfi_endproc
.LFE63:
	.size	leer_usuarios, .-leer_usuarios
	.section	.rodata.str1.1
.LC30:
	.string	"w"
	.text
	.p2align 4
	.globl	escribir_usuarios
	.type	escribir_usuarios, @function
escribir_usuarios:
.LFB64:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC30(%rip), %rsi
	movq	%rdi, %r12
	leaq	.LC28(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	fopen@PLT
	testq	%rax, %rax
	je	.L60
	movq	%r12, %rdi
	movq	%rax, %rcx
	movl	$10, %edx
	movl	$104, %esi
	movq	%rax, %rbp
	call	fwrite@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fclose@PLT
.L60:
	.cfi_restore_state
	popq	%rax
	.cfi_def_cfa_offset 24
	leaq	.LC29(%rip), %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
	.cfi_endproc
.LFE64:
	.size	escribir_usuarios, .-escribir_usuarios
	.section	.rodata.str1.1
.LC31:
	.string	"productos.txt"
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"Error al abrir el archivo de productos."
	.text
	.p2align 4
	.globl	leer_productos
	.type	leer_productos, @function
leer_productos:
.LFB65:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC27(%rip), %rsi
	movq	%rdi, %r12
	leaq	.LC31(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	fopen@PLT
	testq	%rax, %rax
	je	.L64
	movq	%r12, %rdi
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$168, %esi
	movq	%rax, %rbp
	call	fread@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fclose@PLT
.L64:
	.cfi_restore_state
	popq	%rax
	.cfi_def_cfa_offset 24
	leaq	.LC32(%rip), %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
	.cfi_endproc
.LFE65:
	.size	leer_productos, .-leer_productos
	.p2align 4
	.globl	escribir_productos
	.type	escribir_productos, @function
escribir_productos:
.LFB66:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC30(%rip), %rsi
	movq	%rdi, %r12
	leaq	.LC31(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	fopen@PLT
	testq	%rax, %rax
	je	.L68
	movq	%r12, %rdi
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$168, %esi
	movq	%rax, %rbp
	call	fwrite@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fclose@PLT
.L68:
	.cfi_restore_state
	popq	%rax
	.cfi_def_cfa_offset 24
	leaq	.LC32(%rip), %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
	.cfi_endproc
.LFE66:
	.size	escribir_productos, .-escribir_productos
	.section	.rodata.str1.1
.LC33:
	.string	"ventas.txt"
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"Error al abrir el archivo de ventas."
	.text
	.p2align 4
	.globl	leer_ventas
	.type	leer_ventas, @function
leer_ventas:
.LFB67:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC27(%rip), %rsi
	movq	%rdi, %r12
	leaq	.LC33(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	fopen@PLT
	testq	%rax, %rax
	je	.L72
	movq	%r12, %rdi
	movq	%rax, %rcx
	movl	$100, %edx
	movl	$132, %esi
	movq	%rax, %rbp
	call	fread@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fclose@PLT
.L72:
	.cfi_restore_state
	popq	%rax
	.cfi_def_cfa_offset 24
	leaq	.LC34(%rip), %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
	.cfi_endproc
.LFE67:
	.size	leer_ventas, .-leer_ventas
	.p2align 4
	.globl	escribir_ventas
	.type	escribir_ventas, @function
escribir_ventas:
.LFB68:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC30(%rip), %rsi
	movq	%rdi, %r12
	leaq	.LC33(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	fopen@PLT
	testq	%rax, %rax
	je	.L76
	movq	%r12, %rdi
	movq	%rax, %rcx
	movl	$100, %edx
	movl	$132, %esi
	movq	%rax, %rbp
	call	fwrite@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fclose@PLT
.L76:
	.cfi_restore_state
	popq	%rax
	.cfi_def_cfa_offset 24
	leaq	.LC34(%rip), %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
	.cfi_endproc
.LFE68:
	.size	escribir_ventas, .-escribir_ventas
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
