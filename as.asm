TITLE Exe style skeleton


 INCLUDE C:\TASM\lib.MAC ; macro library


.486

STCK		SEGMENT PARA STACK 'stack' use16
		DB	64 DUP ('my_stack')	; reserve 256 bytes for stack
STCK		ENDS


DATA1             SEGMENT PARA PUBLIC 'DATA' use16

											;1st maze

a1    DB 1,1,1,1,1,1,1,1,1,1,1
	  DB 1,9,0,0,0,0,1,0,0,0,1
	  DB 1,1,0,0,1,0,1,0,1,0,1
	  DB 1,0,0,1,1,0,1,0,1,0,1
	  DB 1,0,0,0,1,0,0,0,1,0,1
	  DB 1,0,0,0,1,1,1,1,1,0,1
	  DB 1,1,1,0,1,1,0,0,1,0,1
	  DB 1,1,0,0,0,0,0,1,1,0,1
	  DB 1,0,0,0,0,0,0,1,0,0,1
	  DB 1,1,1,1,1,1,0,1,0,1,1
	  DB 1,1,1,1,1,1,0,1,0,1,1
	  DB 1,1,1,1,1,0,0,1,0,0,1
	  DB 1,1,1,1,1,1,1,1,1,2,1
level_width_1 db 11						;width of the maze
level_width_dw_1 dw 11					;make it easier to move value to 16 bit registers
level_height_1 db 13					;height of the maze
level_height_dw_1 dw 13 				;make it easier to move value to 16 bit registers
player_x_1 db 1 						;x coordinate of the player starting from 0
player_y_1 db 1							;y coordinate of the player starting from 0
  
a2    DB 1,1,1,1,1,1,1,1,1,1,1,1,1
	  DB 1,9,1,0,0,0,0,0,1,0,0,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,1,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,0,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,1,1,0,0,0,1,0,1
	  DB 1,0,1,0,1,1,1,1,1,1,1,0,1
	  DB 1,0,0,0,0,0,1,0,1,1,1,0,1
	  DB 1,0,0,1,1,1,1,0,0,0,0,0,1
	  DB 1,0,0,0,0,0,0,1,0,1,1,0,1
	  DB 1,0,1,1,1,1,0,1,0,1,1,0,1
	  DB 1,0,0,0,0,0,0,1,0,0,1,1,1
	  DB 1,1,1,1,1,1,1,1,1,2,1,1,1
level_width_2 db 13						;width of the maze
level_width_dw_2 dw 13					;make it easier to move value to 16 bit registers
level_height_2 db 13					;height of the maze
level_height_dw_2 dw 13 				;make it easier to move value to 16 bit registers 
player_x_2 db 1 						;x coordinate of the player starting from 0
player_y_2 db 1							;y coordinate of the player starting from 0


a3    DB 1,1,1,1,1,1,1,1,1,1,1
	  DB 1,9,1,0,0,0,1,0,0,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,1,0,1,0,1,0,1,0,1
	  DB 1,0,0,0,1,0,0,0,1,0,1
	  DB 1,1,1,1,1,1,1,1,1,2,1
level_width_3 db 11						;width of the maze
level_width_dw_3 dw 11					;make it easier to move value to 16 bit registers
level_height_3 db 16					;height of the maze
level_height_dw_3 dw 16 				;make it easier to move value to 16 bit registers 
player_x_3 db 1 						;x coordinate of the player starting from 0
player_y_3 db 1				


a4    DB 1,1,1,1,1,1,1,1,1,1,1
	  DB 1,9,0,0,0,0,0,1,1,1,1
	  DB 1,1,0,0,1,0,1,1,1,1,1
	  DB 1,0,0,1,1,0,1,1,1,1,1
	  DB 1,0,0,0,0,0,0,0,0,0,1
	  DB 1,0,0,0,1,1,1,1,1,0,1
	  DB 1,1,1,0,1,1,1,1,1,0,1
	  DB 1,1,0,0,0,0,0,1,1,0,1
	  DB 1,0,0,0,0,0,0,1,0,0,1
	  DB 1,1,1,1,1,1,1,1,0,1,1
	  DB 1,1,1,1,1,1,1,1,0,1,1
	  DB 1,1,1,1,1,1,1,0,0,0,1
	  DB 1,1,1,1,1,1,1,1,1,0,1
	  DB 1,1,1,1,1,1,1,0,0,0,1
	  DB 1,1,1,1,1,1,1,0,1,1,1
	  DB 1,1,1,1,1,1,1,0,0,0,1
	  DB 1,1,1,1,1,1,1,1,1,0,1
	  DB 1,1,1,1,1,1,1,1,1,2,1
level_width_4 db 11						;width of the maze
level_width_dw_4 dw 11					;make it easier to move value to 16 bit registers
level_height_4 db 18					;height of the maze
level_height_dw_4 dw 18 				;make it easier to move value to 16 bit registers 
player_x_4 db 1 						;x coordinate of the player starting from 0
player_y_4 db 1				



a5    DB 1,1,1,1,1,1,1,1,1,1,1
	  DB 1,9,0,0,0,0,0,1,1,1,1
	  DB 1,1,0,0,1,0,1,1,1,1,1
	  DB 1,0,0,1,1,0,1,1,1,1,1
	  DB 1,0,0,0,0,0,0,0,0,1,1
	  DB 1,0,0,0,1,1,1,1,1,0,1
	  DB 1,1,1,0,1,1,1,1,1,0,1
	  DB 1,1,0,0,0,0,0,1,1,0,1
	  DB 1,0,0,0,0,0,0,0,0,0,1
	  DB 1,1,1,1,1,1,1,1,0,1,1
	  DB 1,0,0,0,0,0,0,0,0,1,1
	  DB 1,0,1,1,1,1,1,1,1,1,1
	  DB 1,0,0,0,0,0,0,0,0,0,1
	  DB 1,1,1,1,1,1,1,1,1,2,1
level_width_5 db 11						;width of the maze
level_width_dw_5 dw 11					;make it easier to move value to 16 bit registers
level_height_5 db 14					;height of the maze
level_height_dw_5 dw 14 				;make it easier to move value to 16 bit registers 
player_x_5 db 1 						;x coordinate of the player starting from 0
player_y_5 db 1				

;***************************************************************************************************************
										;during the game, we don't want to loose the original matrixes which represent		
base db  200 DUP(?)						;the mazes, so before every level we store these matrixes in a baze matrixes
										;and work with that
	 
level_width_base db ?					;the currently stored matrix's width
level_width_dw_base dw ?				;make it easier to move value to 16 bit registers
level_height_base db ?					;the currently stored matrix's height
level_height_dw_base dw ? 				;make it easier to move value to 16 bit registers
player_x_base db ? 						;x coordinate of the player starting from 0
player_y_base db ?						;y coordinate of the player starting from 0			

;****************************************************************************************************************************



index_row DB 0					    ;in the MACRO 'PRINT_GAME' it will store the current row number
index DB 0							;in the MACRO 'PRINT_GAME' it will store the cursor's X coordinate(column number)

game_won db 0						;boolean - check if maze was finished


mess1 db 'Congratulations!','$'
len_mess1 db ($-mess1)/2
mess2 db 'PRESS ENTER TO START THE GAME!','$'
len_mess2 db ($-mess2)/2
mess3 db 'DO YOU WANT TO RESTART(Y/N)?','$'
len_mess3 db ($-mess3)/2
mess4 db 'SCORE:******','$'
len_mess4 db ($-mess4)/2
mess5 db 'HIGHSCORE:******','$'
len_mess5 db ($-mess5)/2
mess6 db 'PRESS ESC TO END THE GAME!','$'
len_mess6 db ($-mess6)/2
mess7 db 'TIME: ','$'
len_mess7 db ($-mess7)/2
mess8 db 'USE BUTTONS W,A,S,D to move the player(@)!','$'
len_mess8 db ($-mess8)/2
mess9 db 'THE GOAL IS TO FIND THE EXIT','$'
len_mess9 db ($-mess9)/2
mess10 db 'AS FAST AS POSSIBLE!','$'
len_mess10 db ($-mess10)/2
void_message db '','$'
null db 0

SCORE DB 6 dup(9)
HIGHSCORE DB 6 dup(0)
TIME DB 6 dup(0)
			


DATA1			ENDS

COD1			SEGMENT PARA PUBLIC 'CODE' use16

MAIN			PROC	FAR				; main proc MUST be FAR

			ASSUME	CS:COD1,DS:DATA1,SS:STCK

			PUSH	DS		;save DS on stack for OS return
			XOR	AX,AX		;
			PUSH	AX		;put 0 on stack for OS return
			MOV	AX,DATA1
			MOV	DS,AX		;load data Segement register
			;CODE
			;CODE
;CODE
;CODE
;CODE
START_GAME:
	initialise_start_game


	CLEAR_SCREEN
	WAIT_FOR_ENTER
	CLEAR_SCREEN


	initialise_data a1,level_width_1,level_width_dw_1,level_height_1,level_height_dw_1,player_x_1,player_y_1
	MAZE1:
		PRINT_BASE
		CMP game_won,1
	JNE MAZE1

	mov game_won,0
    
	initialise_data a2,level_width_2,level_width_dw_2,level_height_2,level_height_dw_2,player_x_2,player_y_2
	
	MAZE2:
		PRINT_BASE
		CMP game_won,1
	JNE MAZE2

	mov game_won,0
	initialise_data a3,level_width_3,level_width_dw_3,level_height_3,level_height_dw_3,player_x_3,player_y_3
	
	MAZE3:
		PRINT_BASE
		CMP game_won,1
	JNE MAZE3

	mov game_won,0
	initialise_data a4,level_width_4,level_width_dw_4,level_height_4,level_height_dw_4,player_x_4,player_y_4
	
	MAZE4:
		PRINT_BASE
		CMP game_won,1
	JNE MAZE4

	mov game_won,0
	initialise_data a5,level_width_5,level_width_dw_5,level_height_5,level_height_dw_5,player_x_5,player_y_5
	
	MAZE5:
		PRINT_BASE
		CMP game_won,1
	JNE MAZE5

	mov game_won,0


GAME_END:
	CALCULATE_SCORE
	CALCULATE_HIGHSCORE
	PRINT_CORNER  mess1,len_mess1,mess4,len_mess4,mess5,len_mess5,mess3,len_mess3,void_message,null
	WAIT_USER
GAME_LEAVE:
;end of program
;end of program
;end of program
;end of program
; end of program
MOV AH, 4CH	; exit program
	INT 21H
RET			; return to OS

MAIN			ENDP

COD1			ENDS
			END	MAIN