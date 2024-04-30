all:
	bison -dt yacc.y
	flex 1.l
	gcc -o parser lex.yy.c yacc.tab.c -ll
	./parser $(MAKEFILE)

.PHONY: all
