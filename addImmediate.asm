
.text
main:
    addi $t0, $zero, 5    # immediate value of 5 to $t0    
    addi $t1, $zero, 15   # immediate value of 15 to $t1
    addi $t7, $zero, 2    # immediate divisor for easy division

    add $t5, $t1, $t0      # add the two values and store in another register

    div $t2, $t5, $t7      # divide the result by $t7 which holds the value 2(divisor) and load it in $t2

    move $t5, $t2          # move the result back into $t5 

    mul $t3, $t5, 3        # multiply the result by 3 and store it in $t3
	
                           # final result is in $t3 register which has a value of 30. 

    move $a0, $t3          # move $t3 value to $a0 for printing
	li $v0, 1              # set the service code (1) for printing an integer to $a0 (argument register)
    syscall
	
    li $v0, 10             # exit the program with service code (10) for 'exit'
    syscall
