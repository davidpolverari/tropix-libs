#*
#****************************************************************
#*	Makefile para a chamada ao sistema "mutimes"		*
#****************************************************************
#*
LIBC	= /lib/libc
CC	= cc
DIR	= sys
PGM	= mutimes
MAN	= sys

.virtual	cp cmp man prman modif gar

$PGM.o:		$PGM.s
		as -o $PGM.o -l $PGM.l $PGM.s
		size $PGM.o
		ls -l $PGM.o
		nm $PGM.o

t:		../t.c $PGM.o
		$CC -o t ../t.c $PGM.o

cp:		$PGM.o
		mklib -rv $LIBC $DIR/$PGM.o
		chmod -v u=rw,a+r $LIBC/$DIR/$PGM.o

cmp:
		-cmpobj $PGM.o $LIBC/$DIR

man:
		@echo Veja ../times

modif:
		@echo Veja ../times

prman:
		@echo Veja ../times

gar:
		cd ..; gar -ovs0 $PGM
		cd ..; gar -icv0
