# Takes in two integers. If the value in $t0 is not equal to the value in $t3, then we jump to add five to the value in $t0

.data
    valOne: .word 15  # value from address [5000]
    valTwo: .word 10  # value for $t3

.text
.globl main

main:
    la $t0, valOne		# Load address of valOne into $t0
    lw $t0, 0($t0)		# Load value of valOne from its memory address to $t0
    la $t3, valTwo		# Load address of valTwo into $t3
    lw $t3, 0($t3)		# Load value of valTwo from its memory address to $t3

	beq $t0, $t3, exit    # exit if $t0 equals $t3, jump to "exit"
	jal addFive           # branch if $t0 does not equal $t3, call subroutine "addFive" to add 5 to value
	
exit:
	li $v0, 10         # $v0 = 10, syscall code for exit
    syscall

# subroutine
addFive:
    addi $t0, $t0, 5   # Adds immediate 5 to $t0
    jr $ra             # Return to caller
