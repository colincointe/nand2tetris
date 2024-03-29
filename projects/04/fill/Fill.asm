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

(BEGINNING)
@24576
D=M
@ELSE
D;JEQ
//IF KEY PRESSED
@16384
D=A
@i
M=D
(LOOPIF)
@32767
D=A
@i
A=M
M=D
M=M+D
M=M+1
@i
M=M+1
@24576
D=A
@i
D=D-M
@LOOPIF
D;JNE
@BEGINNING
0;JMP
(ELSE)
//IF KEY NOT PRESSED
@16384
D=A
@i
M=D
(LOOPELSE)
@i
A=M
M=0
@i
M=M+1
@24576
D=A
@i
D=D-M
@LOOPELSE
D;JNE
@BEGINNING
0;JMP