#*
#****************************************************************
#*	Makefile para a chamada ao sistema "rmdir"		*
#****************************************************************
#*
DIR	= sys
PGM	= rmdir
MAN	= sys

.virtual	cp cmp man modif gar

$PGM.o:		$PGM.s
		as -o $PGM.o -l $PGM.l $PGM.s
		size $PGM.o
		ls -l $PGM.o
		nm $PGM.o

t:		../t.c $PGM.o
		cc -o t ../t.c $PGM.o

cp:		$PGM.o
		mklib -crv $DIR/$PGM.o
		chmod -v u=rw,a+r /lib/libc/$DIR/$PGM.o

cmp:
		-cmpobj $PGM.o /lib/libc/$DIR

man:		../man.r
		sroff ../man.r >$mandir/$MAN/$PGM
		man -s $PGM

modif:		../modif.r
		sroff ../modif.r >$mandir/modif/$MAN/$PGM
		modif $PGM

gar:
		cd ..; gar -ovs0 $PGM
		cd ..; gar -icv0
