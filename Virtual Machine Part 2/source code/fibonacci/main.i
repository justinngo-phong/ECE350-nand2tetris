// main.vm
(main)
@i
M=0
@0
D=A
@n
M=D
(main_WHILE_LOOP)
@n
D=M
@i
D=D-M
@main_END_WHILE_LOOP
D;JEQ
@SP
A=M
M=0
@i
M=M+1
@SP
M=M+1
@main_WHILE_LOOP
0;JMP
(main_END_WHILE_LOOP)
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
@fibonacci_label_2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci
0;JMP
(fibonacci_label_2)
// Copy LCL to temp register R14 (FRAME)
@LCL
D=M
@R14
M=D
// Store return address in temp register R15 (RET)
@R14
D=M
@5
A=D-A
D=M
@R15
M=D
// Pop result from the working stack and move it to beginning of ARG segment
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
M=M-1
A=M
D=M
@THAT
M=D
@R14
M=M-1
A=M
D=M
@THIS
M=D
@R14
M=M-1
A=M
D=M
@ARG
M=D
@R14
M=M-1
A=M
D=M
@LCL
M=D
@R15
A=M
0;JMP
