// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

@SCREEN
D=A
@chunk
M=D


(LOOP)
@KBD
D=M

//Jump if no input
@NOINPUT
D;JEQ

//Fill screen otherwise

//If M[chunk] = 245756 (end of screen)
//set M[chunk] = 24575 and go back to loop


@chunk
D=M
@24576
D=D-A
@EOSREACHED
D;JEQ

@chunk
A=M
M=-1
@chunk
M=M+1
@LOOP
0;JEQ

(EOSREACHED)
@24575
D=A
@chunk
M=D
@LOOP
0;JEQ


(NOINPUT)
//FILL IN, UNFILL SCREEN

@chunk
D=M
@SCREEN
D=D-A
@SOSREACHED
D;JLT

@chunk
A=M
M=0
@chunk
M=M-1
@LOOP
0;JEQ

(SOSREACHED)
@SCREEN
D=A
@chunk
M=D
@LOOP
0;JEQ