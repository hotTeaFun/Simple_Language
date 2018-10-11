all: Simple

Simple: Simple.tab.o lex.yy.o
	gcc -o Simple Simple.tab.o lex.yy.o -lm

Simple.tab.o: Simple.tab.c 
	gcc -c Simple.tab.c
lex.yy.c: Simple.lex 
	flex Simple.lex
lex.yy.o: lex.yy.c 
	gcc -c lex.yy.c
Simple.tab.c: Simple.y 
	bison -d Simple.y
clean:
	rm *.o *.c Simple Simple.tab.h
 
