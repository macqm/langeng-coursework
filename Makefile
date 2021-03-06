all:
	antlr3 Lex.g
	antlr3 Syn.g
	javac TokenConv.java
	java TokenConv Syn.tokens Irt.java 
	antlr3 *.java

my:
	antlr3 Lex.g
	antlr3 Syn.g
	javac TokenConv.java
	java TokenConv Syn.tokens Irt.java 
	javac *.java
	java camle -cg testsk.le
	cat testsk.ass
	./assmule testsk.ass

test:
	antlr3 Lex.g
	antlr3 Syn.g
	javac TokenConv.java
	java TokenConv Syn.tokens Irt.java 
	javac *.java
	java camle -cg testsk.le
	cat testsk.ass
	./assmule testsk.ass

clean:
	rm -f *.class
	rm -f *.txt
	rm -f *.tokens
	rm -f *.ass
	rm -f Lex.java
	rm -f Syn.java
	rm -f treeOutput.png
