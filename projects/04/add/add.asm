// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// adds 1+...+100

// Put your code here.
@i
M=1
@sum
M=0
(LOOP)
	@i
	D=M
	@100
	D=D-A
	@END
	D;JGT
	@i
	D=M
	@sum
	M=D+M
	@i
	M=M+1
	@LOOP
	0;JMP

(END)
	@END
	0;JMP