// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@mult
M=0 //answer for multiplication problem
@R1
D=M
@num
M=D //amount of times to be multiplied 

(LOOP)
@num
D=M //checks if the count equals 0 meaning we can leave the loop
@END
D;JEQ
@R0
D=M
@mult
M=M+D //adds the number being multiplied to the full sum
@num
M=M-1 //takes one waya from count so you can know when to stop
@LOOP
0;JMP

(INFINITE)
@INFINITE
0;JMP

(END)
@mult
D=M
@R2
M=D //Puts solution into R2