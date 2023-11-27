	.file	"main.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\nTipos de usuario:"
.LC1:
	.string	"1 Administrador"
.LC2:
	.string	"2 Bodeguero"
.LC3:
	.string	"3 Vendedor"
.LC4:
	.string	"4 Salir"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"\nSeleccione el tipo de usuario: "
	.section	.rodata.str1.1
.LC6:
	.string	"%d"
.LC7:
	.string	"Que desea realizar?"
.LC8:
	.string	"1.Crear usuario"
.LC9:
	.string	"2.Actualizar usuario"
.LC10:
	.string	"\nSeleccione una opcion: "
.LC11:
	.string	"\nIngrese nombre: "
.LC12:
	.string	"%s"
.LC13:
	.string	"\nIngrese contrase\303\261a: "
.LC14:
	.string	"\nUsuario creado exitosamente."
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"\nIngrese el indice del usuario a modificar: "
	.section	.rodata.str1.1
.LC16:
	.string	"1.Crear producto"
.LC17:
	.string	"2.Actualizar producto"
.LC19:
	.string	"Ingrese el local de venta: "
.LC20:
	.string	"Ingrese el vendedor: "
.LC21:
	.string	"Ingrese la fecha de venta: "
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"Ingrese el c\303\263digo del producto vendido: "
	.align 8
.LC23:
	.string	"Ingrese el precio de venta del producto: "
	.section	.rodata.str1.1
.LC24:
	.string	"%f"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"Ingrese la cantidad vendida del producto: "
	.align 8
.LC26:
	.string	"Venta registrada exitosamente."
	.align 8
.LC27:
	.string	"No se pueden registrar m\303\241s ventas, l\303\255mite alcanzado."
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB51:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	.LC0(%rip), %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	.LC1(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	.LC2(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$776, %rsp
	.cfi_def_cfa_offset 832
	movq	%fs:40, %rax
	movq	%rax, 760(%rsp)
	xorl	%eax, %eax
.L2:
	movl	188(%rsp), %eax
	leaq	.LC3(%rip), %rbx
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L3:
	cmpl	$2, %eax
	je	.L17
.L6:
	cmpl	$3, %eax
	je	.L18
.L9:
	cmpl	$4, %eax
	je	.L19
	movq	%r14, %rdi
	leaq	.LC6(%rip), %rbp
	call	puts@PLT
	movq	%r13, %rdi
	call	puts@PLT
	movq	%r12, %rdi
	call	puts@PLT
	movq	%rbx, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	188(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	188(%rsp), %esi
	leaq	192(%rsp), %rdi
	call	fijar_tipo_usuario@PLT
	movl	188(%rsp), %eax
	cmpl	$1, %eax
	jne	.L3
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	200(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	192(%rsp), %eax
	movl	%eax, 208(%rsp)
	movl	200(%rsp), %eax
	cmpl	$1, %eax
	je	.L20
.L4:
	cmpl	$2, %eax
	je	.L21
.L5:
	movl	188(%rsp), %eax
	cmpl	$2, %eax
	jne	.L6
.L17:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	204(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	204(%rsp), %eax
	cmpl	$1, %eax
	je	.L22
.L7:
	cmpl	$2, %eax
	je	.L23
.L8:
	movl	188(%rsp), %eax
	cmpl	$3, %eax
	jne	.L9
.L18:
	movq	numVentas@GOTPCREL(%rip), %rbx
	movl	$0, 196(%rsp)
	movl	$0, 200(%rsp)
	movl	$0x00000000, 204(%rsp)
	cmpl	$99, (%rbx)
	jg	.L10
	leaq	.LC19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC12(%rip), %r15
	leaq	640(%rsp), %r10
	xorl	%eax, %eax
	movq	%r10, %rsi
	movq	%r15, %rdi
	movq	%r10, 24(%rsp)
	call	__isoc99_scanf@PLT
	leaq	.LC20(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	704(%rsp), %rdx
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	%rdx, %rsi
	movq	%rdx, 16(%rsp)
	call	__isoc99_scanf@PLT
	leaq	.LC21(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	608(%rsp), %rcx
	movq	%r15, %rdi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	movq	%rcx, 8(%rsp)
	call	__isoc99_scanf@PLT
	leaq	.LC22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	196(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC23(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	204(%rsp), %rsi
	leaq	.LC24(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC25(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	200(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movslq	(%rbx), %r15
	movq	ventas@GOTPCREL(%rip), %rbp
	movss	204(%rsp), %xmm0
	movl	200(%rsp), %r9d
	imulq	$132, %r15, %r15
	movq	8(%rsp), %rcx
	movq	16(%rsp), %rdx
	movl	196(%rsp), %r8d
	movq	24(%rsp), %rsi
	leaq	0(%rbp,%r15), %rdi
	leaq	32(%rsp), %r15
	movq	%rdi, (%rsp)
	movq	%r15, %rdi
	call	registrarVenta@PLT
	movq	(%rsp), %rdi
	movq	%r15, %rsi
	movslq	196(%rsp), %rax
	movl	$33, %ecx
	movq	productos@GOTPCREL(%rip), %r15
	rep movsl
	movslq	(%rbx), %rsi
	imulq	$168, %rax, %rax
	leaq	.LC26(%rip), %rdi
	movq	%rsi, %rdx
	imulq	$132, %rsi, %rsi
	addq	%r15, %rax
	addl	$1, %edx
	movl	164(%rax), %ecx
	movl	%edx, (%rbx)
	subl	128(%rbp,%rsi), %ecx
	movl	%ecx, 164(%rax)
	call	puts@PLT
	movq	%rbp, %rdi
	call	escribir_ventas@PLT
	movq	%r15, %rdi
	call	escribir_productos@PLT
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L19:
	movq	760(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L24
	addq	$776, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	.cfi_restore_state
	movq	usuarios@GOTPCREL(%rip), %rdi
	leaq	.LC12(%rip), %r15
	call	mostrar_usuarios@PLT
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	204(%rsp), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	324(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	374(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movslq	204(%rsp), %rax
	movq	usuarios@GOTPCREL(%rip), %rcx
	movdqa	320(%rsp), %xmm1
	movdqa	336(%rsp), %xmm2
	movdqa	352(%rsp), %xmm3
	leaq	(%rax,%rax,2), %rdx
	movdqa	368(%rsp), %xmm4
	movdqa	384(%rsp), %xmm5
	leaq	(%rax,%rdx,4), %rax
	movdqa	400(%rsp), %xmm6
	movq	416(%rsp), %rdx
	leaq	(%rcx,%rax,8), %rax
	movups	%xmm1, (%rax)
	movq	%rdx, 96(%rax)
	movups	%xmm2, 16(%rax)
	movups	%xmm3, 32(%rax)
	movups	%xmm4, 48(%rax)
	movups	%xmm5, 64(%rax)
	movups	%xmm6, 80(%rax)
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L20:
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	leaq	.LC12(%rip), %r15
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	212(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	262(%rsp), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 840
	movq	usuarios@GOTPCREL(%rip), %rdi
	pushq	312(%rsp)
	.cfi_def_cfa_offset 848
	pushq	312(%rsp)
	.cfi_def_cfa_offset 856
	pushq	312(%rsp)
	.cfi_def_cfa_offset 864
	pushq	312(%rsp)
	.cfi_def_cfa_offset 872
	pushq	312(%rsp)
	.cfi_def_cfa_offset 880
	pushq	312(%rsp)
	.cfi_def_cfa_offset 888
	pushq	312(%rsp)
	.cfi_def_cfa_offset 896
	pushq	312(%rsp)
	.cfi_def_cfa_offset 904
	pushq	312(%rsp)
	.cfi_def_cfa_offset 912
	pushq	312(%rsp)
	.cfi_def_cfa_offset 920
	pushq	312(%rsp)
	.cfi_def_cfa_offset 928
	pushq	312(%rsp)
	.cfi_def_cfa_offset 936
	pushq	312(%rsp)
	.cfi_def_cfa_offset 944
	call	add_usuario@PLT
	addq	$112, %rsp
	.cfi_def_cfa_offset 832
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	200(%rsp), %eax
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L23:
	movq	productos@GOTPCREL(%rip), %r15
	movq	%r15, %rdi
	call	seleccionar_producto@PLT
	movq	%r15, %rdi
	movl	%eax, %esi
	call	actualizar_producto@PLT
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L22:
	leaq	432(%rsp), %rdi
	xorl	%eax, %eax
	call	crear_producto@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 840
	pushq	600(%rsp)
	.cfi_def_cfa_offset 848
	pushq	600(%rsp)
	.cfi_def_cfa_offset 856
	pushq	600(%rsp)
	.cfi_def_cfa_offset 864
	pushq	600(%rsp)
	.cfi_def_cfa_offset 872
	pushq	600(%rsp)
	.cfi_def_cfa_offset 880
	pushq	600(%rsp)
	.cfi_def_cfa_offset 888
	pushq	600(%rsp)
	.cfi_def_cfa_offset 896
	pushq	600(%rsp)
	.cfi_def_cfa_offset 904
	pushq	600(%rsp)
	.cfi_def_cfa_offset 912
	pushq	600(%rsp)
	.cfi_def_cfa_offset 920
	pushq	600(%rsp)
	.cfi_def_cfa_offset 928
	pushq	600(%rsp)
	.cfi_def_cfa_offset 936
	pushq	600(%rsp)
	.cfi_def_cfa_offset 944
	pushq	600(%rsp)
	.cfi_def_cfa_offset 952
	pushq	600(%rsp)
	.cfi_def_cfa_offset 960
	pushq	600(%rsp)
	.cfi_def_cfa_offset 968
	pushq	600(%rsp)
	.cfi_def_cfa_offset 976
	movq	productos@GOTPCREL(%rip), %rdi
	pushq	600(%rsp)
	.cfi_def_cfa_offset 984
	pushq	600(%rsp)
	.cfi_def_cfa_offset 992
	pushq	600(%rsp)
	.cfi_def_cfa_offset 1000
	pushq	600(%rsp)
	.cfi_def_cfa_offset 1008
	call	add_product@PLT
	movl	380(%rsp), %eax
	addq	$176, %rsp
	.cfi_def_cfa_offset 832
	jmp	.L7
.L10:
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	jmp	.L2
.L24:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE51:
	.size	main, .-main
	.globl	numVentas
	.bss
	.align 4
	.type	numVentas, @object
	.size	numVentas, 4
numVentas:
	.zero	4
	.globl	numUsuarios
	.align 4
	.type	numUsuarios, @object
	.size	numUsuarios, 4
numUsuarios:
	.zero	4
	.globl	numProductos
	.align 4
	.type	numProductos, @object
	.size	numProductos, 4
numProductos:
	.zero	4
	.globl	usuarios
	.align 32
	.type	usuarios, @object
	.size	usuarios, 1040
usuarios:
	.zero	1040
	.globl	ventas
	.align 32
	.type	ventas, @object
	.size	ventas, 13200
ventas:
	.zero	13200
	.globl	productos
	.align 32
	.type	productos, @object
	.size	productos, 8400
productos:
	.zero	8400
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
