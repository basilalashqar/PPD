ADDI R7, R0, 0xFF			# R7 = 0xFF
ADD R2, R0, R7			# R2 = 0xFF
ADDI R7, R7, -1 			# R7 = 0xFE
SLT R6, R7, R2 			# R6 = 1
SLTU R5, R7, R2			# R5 = 1
XOR R6, R5, R6			# R6 = 0
SUB R7, R2, R7			# R7= 1
NOR R3, R0, R2			# R3 = 0
OR R7, R0, R3			# R7 = 0
ORI R6, R6, 1			# R6 = 1
AND R7, R5, R6			# R7 =  1
SLL R6, R6, R7			# R6 = 2
SRL R6, R6, R7  			# R6 = 1
LUI 0xFF, R1 			# R1 = 0x1FE0
SUB R2, R2, R1			# R2 = 0xE01F
SRA R2, R2, R7			# R2 = 0xF00F
ROR R2, R2, R7			# R2 = 0xF807
SLTI R3, R6, 2			# R3 = 1
SLTIU R3, R6, 0			# R3 = 0
XORI R3, R3, 1		     	# R3 = 1
ORI R3, R0, 0xD			# R3 = 0xD
ANDI R6, R6, 1			# R6 REMAINS 1
NORI R1, R0, 0			# R1 = 0xFFFF
SLLI R1, R1, 2			# R1 = 0xFFFC
SRLI R1, R1, 1			# R1 = 0x7FFE
SLLI R1, R1, 1			# R1 = 0xFFFC
SRAI R1, R1, 1			# R1 = 0xFFFE
RORI R1, R1, 1			# R1 = 0x7FFF
LW R2, 5, R1			# R2 = 0
SW R2, 5, R1			# Nothing
ORI R1, R0, 0
ORI R2, R0, 3
ORI R3, R0, 4
ORI R4, R0, 6
ORI R5, R0, 8
LOOP:
ADDI R1, R1, 1
BEQ R1, R6, LOOP
BLT R1, R3, LOOP
BGE R4, R1, LOOP
BNE R1, R5, LOOP
