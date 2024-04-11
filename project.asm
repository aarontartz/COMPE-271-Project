# Author:	Aaron Tartz
# Description:	Mash-up of ultimate tic-tac-toe and sudoku

.data

welcome:	.asciiz "Welcome to Super Tic-Tac-Oku!\n\n"
instructions:	.asciiz "Player 1, enter number values as normal.\nPlayer 2, enter number values holding shift.\nEach row and column are numbered 0 - 8. Do not enter any other value.\n\n"
information:	.asciiz "Values that belong to Player 1 will appear normal.\nValues that belong to Player 2 will be surrounded in parentheses.\n\n"
haveFun:	.asciiz "Have fun!\n\n"
topBoard: 	.asciiz "+-----+-----+-----++-----+-----+-----++-----+-----+-----+\n"
middleBoard: 	.asciiz "|     |     |     ||     |     |     ||     |     |     |\n"
side1:		.asciiz "| "
side2: 		.asciiz "|  "
line: 		.asciiz "|"
singleSpace:	.asciiz " "
doubleSpace:	.asciiz "  "
newLine: 	.asciiz "\n"
one:		.asciiz "(1)"
two:		.asciiz "(2)"
three:		.asciiz "(3)"
four:		.asciiz "(4)"
five:		.asciiz "(5)"
six:		.asciiz "(6)"
seven:		.asciiz "(7)"
eight:		.asciiz "(8)"
nine:		.asciiz "(9)"
enterRow:	.asciiz "Enter a row: "
enterColumn:	.asciiz "\nEnter a column: "
enterValue:	.asciiz "\nEnter a value: "
player1Win:	.asciiz "\nPlayer 1 won!\n"
player2Win:	.asciiz "\nPlayer 2 won!\n"
tieGame:	.asciiz "\nTie game!\n"

.eqv WORD_SIZE 4

userBoard:
	.word ' ', ' ', ' ', '8', ' ', '!', ' ', ' ', ' '
	.word ' ', ' ', ' ', ' ', ' ', ' ', ' ', '4', ' '
	.word '%', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '
	.word ' ', ' ', ' ', ' ', '7', ' ', ' ', ' ', ' '
	.word ' ', ' ', ' ', ' ', ' ', ' ', '!', ' ', ' '
	.word ' ', '2', ' ', ' ', '#', ' ', ' ', ' ', ' '
	.word '6', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '%'
	.word ' ', ' ', '3', ' ', ' ', ' ', ' ', ' ', ' '
	.word ' ', ' ', ' ', ' ', ' ', ' ', '^', ' ', ' '
		
correctBoardPlayer1:
	.word '2', '3', '7', '8', '4', '1', '5', '6', '9'
        .word '1', '8', '6', '7', '9', '5', '2', '4', '3'
        .word '5', '9', '4', '3', '2', '6', '7', '1', '8'
        .word '3', '1', '5', '6', '7', '4', '8', '9', '2'
        .word '4', '6', '9', '5', '8', '2', '1', '3', '7'
        .word '7', '2', '8', '1', '3', '9', '4', '5', '6'
        .word '6', '4', '2', '9', '1', '8', '3', '7', '5'
        .word '8', '5', '3', '4', '6', '7', '9', '2', '1'
        .word '9', '7', '1', '2', '5', '3', '6', '8', '4'

correctBoardPlayer2:
	.word '@', '#', '&', '*', '$', '!', '%', '^', '('
        .word '!', '*', '^', '&', '(', '%', '&', '$', '#'
       	.word '%', '(', '$', '#', '@', '^', '&', '!', '*'
        .word '#', '!', '%', '^', '&', '$', '*', '(', '@'
       	.word '$', '^', '(', '%', '*', '@', '!', '#', '&'
       	.word '&', '@', '*', '!', '#', '(', '$', '%', '^'
        .word '^', '$', '@', '(', '!', '*', '#', '&', '%'
        .word '*', '%', '#', '$', '^', '&', '(', '@', '!'
        .word '(', '&', '!', '@', '%', '#', '^', '*', '$'
        
newUserBoard0:
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '

newUserBoard1:
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '

newUserBoard2:
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '

newUserBoard3:
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '

newUserBoard4:
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	
newUserBoard5:
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	
newUserBoard6:
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	
newUserBoard7:
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '

newUserBoard8:
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '
	.word ' ', ' ', ' '

newCorrectBoard1_0:
	.word '2', '3', '7'
	.word '1', '8', '6'
	.word '5', '9', '4'

newCorrectBoard1_1:
	.word '8', '4', '1'
	.word '7', '9', '5'
	.word '3', '2', '6'

newCorrectBoard1_2:
	.word '5', '6', '9'
	.word '2', '4', '3'
	.word '7', '1', '8'

newCorrectBoard1_3:
	.word '3', '1', '5'
	.word '4', '6', '9'
	.word '7', '2', '8'

newCorrectBoard1_4:
	.word '6', '7', '4'
	.word '5', '8', '2'
	.word '1', '3', '9'
	
newCorrectBoard1_5:
	.word '8', '9', '2'
	.word '1', '3', '7'
	.word '4', '5', '6'
	
newCorrectBoard1_6:
	.word '6', '4', '2'
	.word '8', '5', '3'
	.word '9', '7', '1'
	
newCorrectBoard1_7:
	.word '9', '1', '8'
	.word '4', '6', '7'
	.word '2', '5', '3'

newCorrectBoard1_8:
	.word '3', '7', '5'
	.word '9', '2', '1'
	.word '6', '8', '4'
	
newCorrectBoard2_0:
	.word '@', '#', '&'
	.word '!', '*', '^'
	.word '%', '(', '$'

newCorrectBoard2_1:
	.word '*', '$', '!'
	.word '&', '(', '%'
	.word '3', '2', '6'

newCorrectBoard2_2:
	.word '%', '^', '('
	.word '@', '$', '#'
	.word '&', '!', '*'

newCorrectBoard2_3:
	.word '#', '!', '%'
	.word '$', '^', '('
	.word '&', '@', '*'

newCorrectBoard2_4:
	.word '^', '&', '$'
	.word '%', '*', '@'
	.word '!', '#', '('
	
newCorrectBoard2_5:
	.word '*', '(', '@'
	.word '!', '#', '&'
	.word '$', '%', '^'
	
newCorrectBoard2_6:
	.word '^', '$', '@'
	.word '*', '%', '#'
	.word '(', '&', '!'
	
newCorrectBoard2_7:
	.word '(', '!', '*'
	.word '$', '^', '&'
	.word '@', '%', '#'

newCorrectBoard2_8:
	.word '#', '&', '%'
	.word '(', '@', '!'
	.word '^', '*', '$'

numSquares:
	.word 0, 0, 0, 0, 0, 0, 0, 0, 0
	.word 0, 0, 0, 0, 0, 0, 0, 0, 0
	
.text
.globl main

main:
	li $v0, 4
	la $a0, welcome
	syscall
	la $a0, instructions
	syscall
	la $a0, information
	syscall
	la $a0, haveFun
	syscall
	while:
		jal checkComplete
		move $t0, $v0
		beq $t0, 0, ExitWhile
		beq $t0, 1, ExitWhile
		
		jal printBoard
	
		la $a0, enterRow
		li $v0, 4
		syscall
		li $v0, 5
		syscall
		move $t1, $v0	#$t1 = userRow
		
		la $a0, enterColumn
		li $v0, 4
		syscall
		li $v0, 5
		syscall
		move $t2, $v0	#$t2 = userCol
		
		la $a0, enterValue
		li $v0, 4
		syscall
		li $v0, 12
		syscall
		move $t3, $v0	#$t3 = userVal
		
		la $a0, newLine
		li $v0, 4
		syscall
		syscall
		
		# Setting up checkValidMove
		
		#making $t4 = correctBoardPlayer1[rowNum][colNum]
		la $t5, correctBoardPlayer1	#$t5 = base address
		mul $t4, $t1, 9		#$t4 = userRow * [colSize]
		add $t4, $t4, $t2	#$t4 = ^ + userCol
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t5	#$t4 = ^ + baseAdd
		lw $a1, ($t4)		#argument = correctBoardPlayer1[rowNum][colNum]
		
		#making $t4 = correctBoardPlayer2[rowNum][colNum]
		la $t5, correctBoardPlayer2	#$t5 = base address
		mul $t4, $t1, 9		#$t4 = userRow * [colSize]
		add $t4, $t4, $t2	#$t4 = ^ + userCol
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t5	#$t4 = ^ + baseAdd
		lw $a2, ($t4)		#argument = correctBoardPlayer2[rowNum][colNum]
		
		#making $t4 = userBoard[rowNum][colNum]
		la $t5, userBoard	#$t5 = base address
		mul $t4, $t1, 9		#$t4 = userRow * [colSize]
		add $t4, $t4, $t2	#$t4 = ^ + userCol
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t5	#$t4 = ^ + baseAdd
		lw $a0, ($t4)		#argument = userBoard[rowNum][colNum]
		
		move $a3, $t3		#argument = userVal
		jal checkValidMove
		
		move $t5, $v0		#$t5 = true/false
		bne $t5, 1, Exit	#if not valid move, exit
		sw $t3, ($t4)		#userBoard[rowNum][colNum] = valueNum
		jal checkSuperTicTacToe
		Exit:
		j while
	ExitWhile:
	jal printBoard
	
	jal checkComplete
	
	move $t5, $v0		#$t5 stores which player won
	
	bne $t5, 0, player2
	la $a0, player1Win	#announces player 1 won
	li $v0, 4
	syscall
	player2:
	bne $t5, 1, tie
	la $a0, player2Win	#announces player 2 won
	li $v0, 4
	syscall
	tie:
	bne $t5, -1, end
	la $a0, tieGame
	li $v0, 4
	syscall
	end:
	# END PROGRAM
	li $v0, 10
	syscall

checkSuperTicTacToe:
	addi $sp, $sp, -4        # save return adress
	sw $ra, 0($sp)
	
	li $t0, 0	#$t0 = rowCounter = 0	
	rowForLoop:
		beq $t0, 9, ExitRowLoop
		li $t1, 0	#$t1 = colCounter = 0
		colForLoop:
			beq $t1, 9, ExitColLoop
			
			bgt $t0, 2, checkNext1
			bgt $t1, 2, checkNext1
			
			la $t2, userBoard
			mul $t3, $t0, 9		#$t3 = rowCounter * [colSize]
			add $t3, $t3, $t1	#$t3 = ^ + colCounter
			mul $t3, $t3, WORD_SIZE	#$t3 = ^ * WORD_SIZE
			add $t3, $t3, $t2	#$t3 = ^ + baseAdd
			lw $t4, ($t3)		#$t4 = userBoard[rowNum][colNum]
			
			la $t2, newUserBoard0
			mul $t5, $t0, 3		#$t5 = rowCounter * [colSize]
			add $t5, $t5, $t1	#$t5 = ^ + colCounter
			mul $t5, $t5, WORD_SIZE	#$t5 = ^ * WORD_SIZE
			add $t5, $t5, $t2	#$t5 = ^ + baseAdd
			#lw $t6, ($t5)		#$t6 = newUserBoard[rowNum][colNum]
			
			sw $t4, ($t5)		#store new value in newUserBoard
			
			addi $t1, $t1, 1	#++colCounter
			j colForLoop		
			
			checkNext1:
			bgt $t0, 2, checkNext2
			blt $t1, 3, checkNext2
			bgt $t1, 5, checkNext2
			
			la $t2, userBoard
			mul $t3, $t0, 9		#$t3 = rowCounter * [colSize]
			add $t3, $t3, $t1	#$t3 = ^ + colCounter
			mul $t3, $t3, WORD_SIZE	#$t3 = ^ * WORD_SIZE
			add $t3, $t3, $t2	#$t3 = ^ + baseAdd
			lw $t4, ($t3)		#$t4 = userBoard[rowNum][colNum]
			
			la $t2, newUserBoard1
			mul $t5, $t0, 3		#$t5 = rowCounter * [colSize]
			add $t5, $t5, $t1	#$t5 = ^ + colCounter
			addi $t5, $t5, -3
			mul $t5, $t5, WORD_SIZE	#$t5 = ^ * WORD_SIZE
			add $t5, $t5, $t2	#$t5 = ^ + baseAdd
			#lw $t6, ($t5)		#$t6 = newUserBoard[rowNum][colNum]
			
			sw $t4, ($t5)		#store new value in newUserBoard
			addi $t1, $t1, 1	#++colCounter
			j colForLoop	
			
			checkNext2:
			bgt $t0, 2, checkNext3
			blt $t1, 6, checkNext3
			
			la $t2, userBoard
			mul $t3, $t0, 9		#$t3 = rowCounter * [colSize]
			add $t3, $t3, $t1	#$t3 = ^ + colCounter
			mul $t3, $t3, WORD_SIZE	#$t3 = ^ * WORD_SIZE
			add $t3, $t3, $t2	#$t3 = ^ + baseAdd
			lw $t4, ($t3)		#$t4 = userBoard[rowNum][colNum]
			
			la $t2, newUserBoard2
			mul $t5, $t0, 3		#$t5 = rowCounter * [colSize]
			add $t5, $t5, $t1	#$t5 = ^ + colCounter
			addi $t5, $t5, -6
			mul $t5, $t5, WORD_SIZE	#$t5 = ^ * WORD_SIZE
			add $t5, $t5, $t2	#$t5 = ^ + baseAdd
			#lw $t6, ($t5)		#$t6 = newUserBoard[rowNum][colNum]
			
			sw $t4, ($t5)		#store new value in newUserBoard
			addi $t1, $t1, 1	#++colCounter
			j colForLoop	
			
			checkNext3:
			blt $t0, 3, checkNext4
			bgt $t0, 5, checkNext4
			bgt $t1, 2, checkNext4
			
			la $t2, userBoard
			mul $t3, $t0, 9		#$t3 = rowCounter * [colSize]
			add $t3, $t3, $t1	#$t3 = ^ + colCounter
			mul $t3, $t3, WORD_SIZE	#$t3 = ^ * WORD_SIZE
			add $t3, $t3, $t2	#$t3 = ^ + baseAdd
			lw $t4, ($t3)		#$t4 = userBoard[rowNum][colNum]
			
			la $t2, newUserBoard3
			addi $t7, $t0, -3
			mul $t5, $t7, 3		#$t5 = rowCounter * [colSize]
			add $t5, $t5, $t1	#$t5 = ^ + colCounter
			mul $t5, $t5, WORD_SIZE	#$t5 = ^ * WORD_SIZE
			add $t5, $t5, $t2	#$t5 = ^ + baseAdd
			#lw $t6, ($t5)		#$t6 = newUserBoard[rowNum][colNum]
			
			sw $t4, ($t5)		#store new value in newUserBoard
			addi $t1, $t1, 1	#++colCounter
			j colForLoop	
			
			checkNext4:
			blt $t0, 3, checkNext5
			bgt $t0, 5, checkNext5
			blt $t1, 3, checkNext5
			bgt $t1, 5, checkNext5
			
			la $t2, userBoard
			mul $t3, $t0, 9		#$t3 = rowCounter * [colSize]
			add $t3, $t3, $t1	#$t3 = ^ + colCounter
			mul $t3, $t3, WORD_SIZE	#$t3 = ^ * WORD_SIZE
			add $t3, $t3, $t2	#$t3 = ^ + baseAdd
			lw $t4, ($t3)		#$t4 = userBoard[rowNum][colNum]
			
			la $t2, newUserBoard4
			addi $t7, $t0, -3
			mul $t5, $t7, 3		#$t5 = rowCounter * [colSize]
			add $t5, $t5, $t1	#$t5 = ^ + colCounter
			addi $t5, $t5, -3
			mul $t5, $t5, WORD_SIZE	#$t5 = ^ * WORD_SIZE
			add $t5, $t5, $t2	#$t5 = ^ + baseAdd
			#lw $t6, ($t5)		#$t6 = newUserBoard[rowNum][colNum]
			
			sw $t4, ($t5)		#store new value in newUserBoard
			addi $t1, $t1, 1	#++colCounter
			j colForLoop	
			
			checkNext5:
			blt $t0, 3, checkNext6
			bgt $t0, 5, checkNext6
			blt $t1, 6, checkNext6
			
			la $t2, userBoard
			mul $t3, $t0, 9		#$t3 = rowCounter * [colSize]
			add $t3, $t3, $t1	#$t3 = ^ + colCounter
			mul $t3, $t3, WORD_SIZE	#$t3 = ^ * WORD_SIZE
			add $t3, $t3, $t2	#$t3 = ^ + baseAdd
			lw $t4, ($t3)		#$t4 = userBoard[rowNum][colNum]
			
			la $t2, newUserBoard5
			addi $t7, $t0, -3
			mul $t5, $t7, 3		#$t5 = rowCounter * [colSize]
			add $t5, $t5, $t1	#$t5 = ^ + colCounter
			addi $t5, $t5, -6
			mul $t5, $t5, WORD_SIZE	#$t5 = ^ * WORD_SIZE
			add $t5, $t5, $t2	#$t5 = ^ + baseAdd
			#lw $t6, ($t5)		#$t6 = newUserBoard[rowNum][colNum]
			
			sw $t4, ($t5)		#store new value in newUserBoard
			addi $t1, $t1, 1	#++colCounter
			j colForLoop	
			
			checkNext6:
			blt $t0, 6, checkNext7
			bgt $t1, 2, checkNext7
			
			la $t2, userBoard
			mul $t3, $t0, 9		#$t3 = rowCounter * [colSize]
			add $t3, $t3, $t1	#$t3 = ^ + colCounter
			mul $t3, $t3, WORD_SIZE	#$t3 = ^ * WORD_SIZE
			add $t3, $t3, $t2	#$t3 = ^ + baseAdd
			lw $t4, ($t3)		#$t4 = userBoard[rowNum][colNum]
			
			la $t2, newUserBoard6
			addi $t7, $t0, -6
			mul $t5, $t7, 3		#$t5 = rowCounter * [colSize]
			add $t5, $t5, $t1	#$t5 = ^ + colCounter
			mul $t5, $t5, WORD_SIZE	#$t5 = ^ * WORD_SIZE
			add $t5, $t5, $t2	#$t5 = ^ + baseAdd
			#lw $t6, ($t5)		#$t6 = newUserBoard[rowNum][colNum]
			
			sw $t4, ($t5)		#store new value in newUserBoard
			addi $t1, $t1, 1	#++colCounter
			j colForLoop	
			
			checkNext7:
			blt $t0, 6, checkNext8
			blt $t1, 3, checkNext8
			bgt $t1, 5, checkNext8
			
			la $t2, userBoard
			mul $t3, $t0, 9		#$t3 = rowCounter * [colSize]
			add $t3, $t3, $t1	#$t3 = ^ + colCounter
			mul $t3, $t3, WORD_SIZE	#$t3 = ^ * WORD_SIZE
			add $t3, $t3, $t2	#$t3 = ^ + baseAdd
			lw $t4, ($t3)		#$t4 = userBoard[rowNum][colNum]
			
			la $t2, newUserBoard7
			addi $t7, $t0, -6
			mul $t5, $t7, 3		#$t5 = rowCounter * [colSize]
			add $t5, $t5, $t1	#$t5 = ^ + colCounter
			addi $t5, $t5, -3
			mul $t5, $t5, WORD_SIZE	#$t5 = ^ * WORD_SIZE
			add $t5, $t5, $t2	#$t5 = ^ + baseAdd
			#lw $t6, ($t5)		#$t6 = newUserBoard[rowNum][colNum]
			
			sw $t4, ($t5)		#store new value in newUserBoard
			addi $t1, $t1, 1	#++colCounter
			j colForLoop	
			
			checkNext8:
			la $t2, userBoard
			mul $t3, $t0, 9		#$t3 = rowCounter * [colSize]
			add $t3, $t3, $t1	#$t3 = ^ + colCounter
			mul $t3, $t3, WORD_SIZE	#$t3 = ^ * WORD_SIZE
			add $t3, $t3, $t2	#$t3 = ^ + baseAdd
			lw $t4, ($t3)		#$t4 = userBoard[rowNum][colNum]
			
			la $t2, newUserBoard8
			addi $t7, $t0, -6
			mul $t5, $t7, 3		#$t5 = rowCounter * [colSize]
			add $t5, $t5, $t1	#$t5 = ^ + colCounter
			addi $t5, $t5, -6
			mul $t5, $t5, WORD_SIZE	#$t5 = ^ * WORD_SIZE
			add $t5, $t5, $t2	#$t5 = ^ + baseAdd
			#lw $t6, ($t5)		#$t6 = newUserBoard[rowNum][colNum]
			
			sw $t4, ($t5)		#store new value in newUserBoard
			addi $t1, $t1, 1	#++colCounter
			j colForLoop
			
		ExitColLoop:
		addi $t0, $t0, 1
		j rowForLoop
	ExitRowLoop:
	
	li $t0, 0	#$t0 = gridNum = 0
	li $s0, 0	#$s0 = 0, allows for storing value 0
	li $s1, 1	#$s1 = 1, allows for storing value 1
	li $s2, 2	#$s2 = 2, allows for storing value 2
	gridForLoop:
		beq $t0, 0, setGrid0
		beq $t0, 1, setGrid1
		beq $t0, 2, setGrid2
		beq $t0, 3, setGrid3
		beq $t0, 4, setGrid4
		beq $t0, 5, setGrid5
		beq $t0, 6, setGrid6
		beq $t0, 7, setGrid7
		beq $t0, 8, setGrid8
		beq $t0, 9, ExitGridLoop
		
		setGrid0:
		la $t1, newUserBoard0
		la $t2, newCorrectBoard1_0
		la $t3, newCorrectBoard2_0
		j startBranch
		
		setGrid1:
		la $t1, newUserBoard1
		la $t2, newCorrectBoard1_1
		la $t3, newCorrectBoard2_1
		j startBranch
		
		setGrid2:
		la $t1, newUserBoard2
		la $t2, newCorrectBoard1_2
		la $t3, newCorrectBoard2_2
		j startBranch
		
		setGrid3:
		la $t1, newUserBoard3
		la $t2, newCorrectBoard1_3
		la $t3, newCorrectBoard2_3
		j startBranch
		
		setGrid4:
		la $t1, newUserBoard4
		la $t2, newCorrectBoard1_4
		la $t3, newCorrectBoard2_4
		j startBranch
		
		setGrid5:
		la $t1, newUserBoard5
		la $t2, newCorrectBoard1_5
		la $t3, newCorrectBoard2_5
		j startBranch
		
		setGrid6:
		la $t1, newUserBoard6
		la $t2, newCorrectBoard1_6
		la $t3, newCorrectBoard2_6
		j startBranch
		
		setGrid7:
		la $t1, newUserBoard7
		la $t2, newCorrectBoard1_7
		la $t3, newCorrectBoard2_7
		j startBranch
		
		setGrid8:
		la $t1, newUserBoard8
		la $t2, newCorrectBoard1_8
		la $t3, newCorrectBoard2_8
		j startBranch
		
		startBranch:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf1
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf1
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf1
		
		la $t9, numSquares
		mul $t4, $s0, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		
		j gridForLoop
		
		elseIf1:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf2
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf2
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf2

		la $t9, numSquares
		mul $t4, $s1, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
	
		j gridForLoop
		
		elseIf2:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf3
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf3
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf3
		
		la $t9, numSquares
		mul $t4, $s0, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
	
		j gridForLoop
		
		elseIf3:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf4
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf4
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf4
		
		la $t9, numSquares
		mul $t4, $s1, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		
		j gridForLoop
		
		elseIf4:
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf5
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf5
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf5
		
		la $t9, numSquares
		mul $t4, $s0, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf5:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf6
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf6
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf6
		
		la $t9, numSquares
		mul $t4, $s1, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf6:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf7
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf7
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf7
		
		la $t9, numSquares
		mul $t4, $s0, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf7:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf8
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf8
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf8
		
		la $t9, numSquares
		mul $t4, $s1, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf8:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf9
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf9
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf9
		
		la $t9, numSquares
		mul $t4, $s0, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf9:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf10
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf10
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf10
		
		la $t9, numSquares
		mul $t4, $s1, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf10:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf11
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf11
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf11
		
		la $t9, numSquares
		mul $t4, $s0, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf11:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf12
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf12
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf12
		
		la $t9, numSquares
		mul $t4, $s1, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf12:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf13
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf13
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf13
		
		la $t9, numSquares
		mul $t4, $s0, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf13:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf14
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf14
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf14
		
		la $t9, numSquares
		mul $t4, $s1, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf14:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf15
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf15
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t2 = newCorrectBoard1 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t2	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, elseIf15
		
		la $t9, numSquares
		mul $t4, $s0, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		elseIf15:
		#$t1 = newUserBoard baseAdd
		mul $t4, $s2, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 0	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s2, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 0	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, else16
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s1, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 1	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s1, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 1	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, else16
		
		#$t1 = newUserBoard baseAdd
		mul $t4, $s0, 3		#$t4 = rowNum * [colSize]
		addi $t4, $t4, 2	#$4 = ^ + colNum
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t1	#$t4 = ^ + baseAdd
		lw $t5, ($t4)		#$t5 = newUserBoard[rowNum][colNum]
		
		#$t3 = newCorrectBoard2 baseAdd
		mul $t6, $s0, 3		#$t6 = rowNum * [colSize]
		addi $t6, $t6, 2	#$t6 = ^ + colNum
		mul $t6, $t6, WORD_SIZE	#$t6 = ^ * WORD_SIZE
		add $t6, $t6, $t3	#$t6 = ^ + baseAdd
		lw $t7, ($t6)		#$t7 = newCorrectBoard1[rowNum][colNum]
		
		bne $t5, $t7, else16
		
		la $t9, numSquares
		mul $t4, $s1, 9		#$t4 = rowNum * [colSize]
		add $t4, $t4, $t0	#$4 = ^ + colNum ($t0)
		mul $t4, $t4, WORD_SIZE	#$t4 = ^ * WORD_SIZE
		add $t4, $t4, $t9	#$t4 = ^ + baseAdd
		sw $s1, ($t4)		#$numSquares[rowNum][colNum] = $s1 = 1
		
		addi $t0, $t0, 1
		j gridForLoop
		
		else16:
		addi $t0, $t0, 1
		j gridForLoop
		
	ExitGridLoop:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

checkComplete:
	addi $sp, $sp, -4        # save return adress
	sw $ra, 0($sp)
	
	la $t0, numSquares	#$t0 = base address
	li $t5, 0
	li $t6, 1
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 0	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		#$t2 = numSquares[0][0]
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 1	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		#$t3 = [0][1]
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 2	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		#$t4 = [0][2]
	
	bne $t2, 1, next1
	bne $t3, 1, next1
	bne $t4, 1, next1
	
	j return0
	
	next1:
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 0	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 1	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 2	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next2
	bne $t3, 1, next2
	bne $t4, 1, next2
	j return1
	
	next2:
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 3	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 4	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 5	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next3
	bne $t3, 1, next3
	bne $t4, 1, next3
	j return0
	
	next3:
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 3	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 4	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 5	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next4
	bne $t3, 1, next4
	bne $t4, 1, next4
	j return1
	
	next4:
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 6	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 7	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 8	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next5
	bne $t3, 1, next5
	bne $t4, 1, next5
	j return0
	
	next5:
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 6	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		#$t2 = userBoard[rowNum][colNum]
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 7	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		#$t3 = userBoard[rowNum][colNum]
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 8	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		#$t4 = userBoard[rowNum][colNum]
	
	bne $t2, 1, next6
	bne $t3, 1, next6
	bne $t4, 1, next6
	j return1
	
	next6:
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 0	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 3	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 6	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next7
	bne $t3, 1, next7
	bne $t4, 1, next7
	j return0
	
	next7:
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 0	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 3	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 6	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next8
	bne $t3, 1, next8
	bne $t4, 1, next8
	j return1
	
	next8:
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 1	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 4	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 7	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next9
	bne $t3, 1, next9
	bne $t4, 1, next9
	j return0
	
	next9: 
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 1	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 4	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 7	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next10
	bne $t3, 1, next10
	bne $t4, 1, next10
	j return1
	
	next10: 
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 2	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 5	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 8	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next11
	bne $t3, 1, next11
	bne $t4, 1, next11
	j return0
	
	next11: 
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 2	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 5	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 8	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next12
	bne $t3, 1, next12
	bne $t4, 1, next12
	j return1
	
	next12: 
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 0	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 4	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 8	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next13
	bne $t3, 1, next13
	bne $t4, 1, next13
	j return0
	
	next13: 
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 0	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 4	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 8	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next14
	bne $t3, 1, next14
	bne $t4, 1, next14
	j return1
	
	next14: 
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 6	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 4	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t5, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 2	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next15
	bne $t3, 1, next15
	bne $t4, 1, next15
	j return0
	
	next15: 
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 6	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t2, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 4	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t3, ($t1)		
	
	mul $t1, $t6, 9		#$t1 = rowNum * [colSize]
	addi $t1, $t1, 2	#$t1 = ^ + colNum
	mul $t1, $t1, WORD_SIZE	#$t1 = ^ * WORD_SIZE
	add $t1, $t1, $t0	#$t1 = ^ + baseAdd
	lw $t4, ($t1)		
	
	bne $t2, 1, next16
	bne $t3, 1, next16
	bne $t4, 1, next16
	j return1
	
	next16:
	j returnNeg1
	
	returnNeg1:
	li $v0, -1	#return -1
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
	return0:
	li $v0, 0	#return 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
	return1:
	li $v0, 1	#return 1
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

printBoard:
	addi $sp, $sp, -4        # save return adress
	sw $ra, 0($sp)
	
	li $t0, 0	#$t0 = rowCounter = 0	
	li $t6, 0	#$t6 = i
	forLoop1:
		beq $t6, 3, Exit1
		li $t7, 0	#$t7 = j
		forLoop2:
			beq $t7, 3, Exit2
			li $t5, 0	#$t5 = columnCounter
			#^ $t5 might be taken?
			beq $t7, 0, Cont2	#if j = 0, skip
			la $a0, newLine
			li $v0, 4
			syscall
			la $a0, middleBoard
			li $v0, 4
			syscall
		Cont2:
			la $a0, topBoard
			li $v0, 4
			syscall
			la $a0, middleBoard
			li $v0, 4
			syscall
			li $t8, 0	#$t8 = k
			forLoop3:
				beq $t8, 3, Exit3
				li $t9, 0	#$t9 = l
				forLoop4:
					beq $t9, 3, Exit4
					
					#set userBoard[rowCounter][colCounter]
					la $t1, userBoard	#$t1 = base address
					mul $t2, $t0, 9		#$t2 = userRow * [colSize]
					add $t2, $t2, $t5	#$t2 = ^ + userCol
					mul $t2, $t2, WORD_SIZE	#$t2 = ^ * WORD_SIZE
					add $t2, $t2, $t1	#$t2 = ^ + baseAdd
					
					lw $a1, ($t2)
					beq $a1, '!', print1
					beq $a1, '@', print2
					beq $a1, '#', print3
					beq $a1, '$', print4
					beq $a1, '%', print5
					beq $a1, '^', print6
					beq $a1, '&', print7
					beq $a1, '*', print8
					beq $a1, '(', print9
					
					la $a0, side2
					li $v0, 4
					syscall
					lw $a0, ($t2)		#$a0 = userBoard[rowNum][colNum]
					li $v0, 11
					syscall
					la $a0, doubleSpace
					li $v0, 4
					syscall
					
					j elsePrint
					
					print1:
					la $a0, side1
					li $v0, 4
					syscall
					la $a0, one
					li $v0, 4
					syscall
					la $a0, singleSpace
					li $v0, 4
					syscall
					j elsePrint
					
					print2:
					la $a0, side1
					li $v0, 4
					syscall
					la $a0, two
					li $v0, 4
					syscall
					la $a0, singleSpace
					li $v0, 4
					syscall
					j elsePrint
					
					print3:
					la $a0, side1
					li $v0, 4
					syscall
					la $a0, three
					li $v0, 4
					syscall
					la $a0, singleSpace
					li $v0, 4
					syscall
					j elsePrint
					
					print4:
					la $a0, side1
					li $v0, 4
					syscall
					la $a0, four
					li $v0, 4
					syscall
					la $a0, singleSpace
					li $v0, 4
					syscall
					j elsePrint
					
					print5:
					la $a0, side1
					li $v0, 4
					syscall
					la $a0, five
					li $v0, 4
					syscall
					la $a0, singleSpace
					li $v0, 4
					syscall
					j elsePrint
					
					print6:
					la $a0, side1
					li $v0, 4
					syscall
					la $a0, six
					li $v0, 4
					syscall
					la $a0, singleSpace
					li $v0, 4
					syscall
					j elsePrint
					
					print7:
					la $a0, side1
					li $v0, 4
					syscall
					la $a0, seven
					li $v0, 4
					syscall
					la $a0, singleSpace
					li $v0, 4
					syscall
					j elsePrint
					
					print8:
					la $a0, side1
					li $v0, 4
					syscall
					la $a0, eight
					li $v0, 4
					syscall
					la $a0, singleSpace
					li $v0, 4
					syscall
					j elsePrint
					
					print9:
					la $a0, side1
					li $v0, 4
					syscall
					la $a0, nine
					li $v0, 4
					syscall
					la $a0, singleSpace
					li $v0, 4
					syscall
					j elsePrint
					
					elsePrint:
					addi $t5, $t5, 1	#++colCounter
					addi $t9, $t9, 1	#++l
					j forLoop4
				Exit4:
				la $a0, line
				li $v0, 4
				syscall
				addi $t8, $t8, 1	#++k
		
				j forLoop3
			Exit3:
			addi $t0, $t0, 1	#++rowCounter
			addi $t7, $t7, 1		#++j
			j forLoop2
		Exit2:
		la $a0, newLine
		li $v0, 4
		syscall
		la $a0, middleBoard
		li $v0, 4
		syscall
		la $a0, topBoard
		li $v0, 4
		syscall
		addi $t6, $t6, 1
		j forLoop1
	Exit1:
	la $a0, newLine
	li $v0, 4
	syscall
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
checkValidMove:
	addi $sp, $sp, -4        # save return adress
	sw $ra, 0($sp)
	
	li $t5, ' '
	bne $a0, $t5, Else	#if currentBoardVal == ' '
	beq $a3, $a1, Then	#if userVal == correctVal1
	bne $a3, $a2, Else	#OR if userVal == correctVal2
	
	Then:
	li $v0, 1		#return true
	j After
	
	Else:
	li $v0, 0		#return false

	After:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
