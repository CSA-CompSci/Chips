(KBDCHECK)
@16384
D=A
@arr
M=D //arr=16384=start of screen register

@8192
D=A
@n
M=D // n=8192=amount of registers used for screen

@i
M=0 //1=0=start loop for filling in screen

@KBD
D=M //reads Keyboard
@BLACKEN
D;JGT //Goes to Black pointer if a key is pressed
@WHITEN
D;JEQ //Goes to white pointer if no key is pressed

(BLACKEN)
@i
D=M
@n
D=D-M
@KBDCHECK //checks if the amount of registers the program has written to is equal to 8192
D;JEQ //if it is then it goes back to checking the keyboard

@arr
D=M
@i
A=D+M
M=-1 //makes register 16384+i=-1=Black

@i
M=M+1 //adds one to i

@BLACKEN
0;JMP //goes back to the beginning

(WHITEN)
@i
D=M
@n
D=D-M
@KBDCHECK //checks if the amount of registers the program has written to is equal to 8192
D;JEQ //if it is then it goes back to checking the keyboard

@arr
D=M
@i
A=D+M //makes register 16384+i=0=White
M=0

@i
M=M+1 //adds one to i

@WHITEN
0;JMP //back to beginning