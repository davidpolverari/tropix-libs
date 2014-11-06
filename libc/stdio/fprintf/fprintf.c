/*
 ****************************************************************
 *								*
 *			fprintf.c				*
 *								*
 *	Converte e formata a saida				*
 *								*
 *	Vers�o	1.0.0, de 14.11.86				*
 *		3.0.0, de 09.07.95				*
 *								*
 *	M�dulo: fprintf						*
 *		libc/stdio					*
 *		Categoria B					*
 *								*
 *	TROPIX: Sistema Operacional Tempo-Real Multiprocessado	*
 *		Copyright � 2000 NCE/UFRJ - tecle "man licen�a"	*
 * 								*
 ****************************************************************
 */

#include <stdarg.h>
#include <stdio.h>

/*
 ******	Prot�tipos de fun��es ***********************************
 */
int	_doprnt (const char *, const int *, FILE *);

/*
 ****************************************************************
 *	Inicio da Rotina "fprintf"				*
 ****************************************************************
 */
int
fprintf (FILE *fp, const char *fmt, ...)
{
	return (_doprnt (fmt, va_first (fmt), fp));

}	/* end fprintf */
