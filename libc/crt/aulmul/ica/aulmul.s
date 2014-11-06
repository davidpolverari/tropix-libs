|*
|****************************************************************
|*								*
|*			aulmul.s				*
|*								*
|*	Multiplica��o de inteiros longos sem sinal		*
|*								*
|*	Vers�o	1.0.0, de 01.12.86				*
|*		2.3.0, de 24.04.88				*
|*								*
|*	Rotina:	ulmul						*
|*								*
|*	M�dulo: crt						*
|*		Categoria D					*
|*								*
|*	TROPIX: Sistema Operacional Tempo-Real Multiprocessado	*
|*		Copyright � 2000 NCE/UFRJ - tecle "man licen�a"	*
|* 								*
|****************************************************************
|*

|*
|*	ulong
|*	ulmul (&a, b)
|*	ulong	a, b;
|*
	.global	aulmul
aulmul:
	movl	4(sp),a0
	movw	(a0),d0		|* se a(alta) e
	orw	8(sp),d0	|* b(alta) s�o nulos
	jne	1$

	movw	2(a0),d0	|* multiplica��o curta
	mulu	10(sp),d0
	movl	d0,(a0)
	rts

1$:
	moveml	#<d2,d3>,-(sp)		

	movl	(a0),d2		|* carrega a
	movl	16(sp),d3	|* carrega b

	movw	d2,d0
	mulu	d3,d0		|* b(baixo) * a(baixo)
	movw	d2,d1
	swap	d2
	mulu	d3,d2		|* b(baixo) * a(alto) 
	swap	d3
	mulu	d3,d1		|* b(alto) * a(baixo)
	addl	d2,d1		|* soma partes altas
	swap	d1
	clrw	d1		|* joga fora 16 bits
	addl	d1,d0		|* soma parte baixa

	movl	d0,(a0)
	moveml	(sp)+,#<d2,d3>
	rts
