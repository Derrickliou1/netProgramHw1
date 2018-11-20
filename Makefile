include ../Make.defines

all:	fork select

fork:	hw1_fork.o sigchldwaitpid.o
		${CC} ${CFLAGS} -o $@ hw1_fork.o sigchldwaitpid.o ${LIBS}

select:	hw1_select.o
		${CC} ${CFLAGS} -o $@ hw1_select.o ${LIBS}

clean:
		rm -f fork select ${CLEANFILES}
