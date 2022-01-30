opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 2 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\LCD 4 BIT.h"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\LCD 4 BIT.h"
	dw 0X3F3A ;#
	FNCALL	_main,_Lcd_Intialization
	FNCALL	_main,_Slave_I2C_Initialization
	FNCALL	_main,_Start
	FNCALL	_main,_Receive_I2C_Data
	FNCALL	_main,_Stop
	FNCALL	_main,_Lcd_Command
	FNCALL	_main,_Restart
	FNCALL	_main,_Receive
	FNCALL	_main,_lcd_bcd
	FNCALL	_lcd_bcd,___wmul
	FNCALL	_lcd_bcd,___awdiv
	FNCALL	_lcd_bcd,___awmod
	FNCALL	_lcd_bcd,_Lcd_Data
	FNCALL	_Lcd_Intialization,_Lcd_Command
	FNROOT	_main
	global	_PORTC
psect	text326,local,class=CODE,delta=2
global __ptext326
__ptext326:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_SSPIF
_SSPIF	set	99
	global	_SSPADD
_SSPADD	set	147
	global	_SSPCON2
_SSPCON2	set	145
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISD
_TRISD	set	136
	global	_ACKDT
_ACKDT	set	1165
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_SEN
_SEN	set	1160
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"I2C DS1307 INTERFACE.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd_Command
?_Lcd_Command:	; 0 bytes @ 0x0
	global	??_Lcd_Command
??_Lcd_Command:	; 0 bytes @ 0x0
	global	?_Lcd_Data
?_Lcd_Data:	; 0 bytes @ 0x0
	global	??_Lcd_Data
??_Lcd_Data:	; 0 bytes @ 0x0
	global	?_Lcd_Intialization
?_Lcd_Intialization:	; 0 bytes @ 0x0
	global	?_Start
?_Start:	; 0 bytes @ 0x0
	global	??_Start
??_Start:	; 0 bytes @ 0x0
	global	?_Receive_I2C_Data
?_Receive_I2C_Data:	; 0 bytes @ 0x0
	global	??_Receive_I2C_Data
??_Receive_I2C_Data:	; 0 bytes @ 0x0
	global	?_Restart
?_Restart:	; 0 bytes @ 0x0
	global	??_Restart
??_Restart:	; 0 bytes @ 0x0
	global	??_Receive
??_Receive:	; 0 bytes @ 0x0
	global	?_Stop
?_Stop:	; 0 bytes @ 0x0
	global	??_Stop
??_Stop:	; 0 bytes @ 0x0
	global	?_Slave_I2C_Initialization
?_Slave_I2C_Initialization:	; 0 bytes @ 0x0
	global	??_Slave_I2C_Initialization
??_Slave_I2C_Initialization:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Receive
?_Receive:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	Receive_I2C_Data@Data
Receive_I2C_Data@Data:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	Lcd_Command@cmd
Lcd_Command@cmd:	; 1 bytes @ 0x2
	global	Lcd_Data@Data
Lcd_Data@Data:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_Lcd_Intialization
??_Lcd_Intialization:	; 0 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?_lcd_bcd
?_lcd_bcd:	; 0 bytes @ 0x9
	global	lcd_bcd@m
lcd_bcd@m:	; 2 bytes @ 0x9
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	2
	global	main@r
main@r:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_lcd_bcd
??_lcd_bcd:	; 0 bytes @ 0x0
	ds	4
	global	lcd_bcd@d2
lcd_bcd@d2:	; 2 bytes @ 0x4
	ds	2
	global	lcd_bcd@temp
lcd_bcd@temp:	; 2 bytes @ 0x6
	ds	2
	global	lcd_bcd@d1
lcd_bcd@d1:	; 2 bytes @ 0x8
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     10      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_bcd
;;   _lcd_bcd->___awdiv
;;   _Lcd_Intialization->_Lcd_Command
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_lcd_bcd
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0    1231
;;                                             11 COMMON     3     3      0
;;                  _Lcd_Intialization
;;           _Slave_I2C_Initialization
;;                              _Start
;;                   _Receive_I2C_Data
;;                               _Stop
;;                        _Lcd_Command
;;                            _Restart
;;                            _Receive
;;                            _lcd_bcd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_bcd                                             12    10      2    1110
;;                                              9 COMMON     2     0      2
;;                                              0 BANK0     10    10      0
;;                             ___wmul
;;                            ___awdiv
;;                            ___awmod
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Intialization                                    0     0      0      30
;;                        _Lcd_Command
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_Data                                             3     3      0      44
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Command                                          3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (1) _Slave_I2C_Initialization                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Stop                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Receive                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Restart                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Receive_I2C_Data                                     1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _Start                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd_Intialization
;;     _Lcd_Command
;;   _Slave_I2C_Initialization
;;   _Start
;;   _Receive_I2C_Data
;;   _Stop
;;   _Lcd_Command
;;   _Restart
;;   _Receive
;;   _lcd_bcd
;;     ___wmul
;;     ___awdiv
;;     ___awmod
;;     _Lcd_Data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      A       A       5       12.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 84 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        short 
;;  r               1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Intialization
;;		_Slave_I2C_Initialization
;;		_Start
;;		_Receive_I2C_Data
;;		_Stop
;;		_Lcd_Command
;;		_Restart
;;		_Receive
;;		_lcd_bcd
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
	line	84
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	87
	
l3023:	
;I2C DS1307 INTERFACE.c: 85: short int i;
;I2C DS1307 INTERFACE.c: 86: char r;
;I2C DS1307 INTERFACE.c: 87: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	88
;I2C DS1307 INTERFACE.c: 88: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	90
	
l3025:	
;I2C DS1307 INTERFACE.c: 90: Lcd_Intialization();
	fcall	_Lcd_Intialization
	line	92
	
l3027:	
;I2C DS1307 INTERFACE.c: 92: Slave_I2C_Initialization();
	fcall	_Slave_I2C_Initialization
	line	93
	
l3029:	
;I2C DS1307 INTERFACE.c: 93: Start();
	fcall	_Start
	line	94
	
l3031:	
;I2C DS1307 INTERFACE.c: 94: Receive_I2C_Data(0XD0);
	movlw	(0D0h)
	fcall	_Receive_I2C_Data
	line	95
	
l3033:	
;I2C DS1307 INTERFACE.c: 95: Receive_I2C_Data(0X00);
	movlw	(0)
	fcall	_Receive_I2C_Data
	line	96
	
l3035:	
;I2C DS1307 INTERFACE.c: 96: Receive_I2C_Data(0X11);
	movlw	(011h)
	fcall	_Receive_I2C_Data
	line	97
	
l3037:	
;I2C DS1307 INTERFACE.c: 97: Stop();
	fcall	_Stop
	line	99
	
l3039:	
;I2C DS1307 INTERFACE.c: 99: Start();
	fcall	_Start
	line	100
	
l3041:	
;I2C DS1307 INTERFACE.c: 100: Receive_I2C_Data(0XD0);
	movlw	(0D0h)
	fcall	_Receive_I2C_Data
	line	101
	
l3043:	
;I2C DS1307 INTERFACE.c: 101: Receive_I2C_Data(0X01);
	movlw	(01h)
	fcall	_Receive_I2C_Data
	line	102
	
l3045:	
;I2C DS1307 INTERFACE.c: 102: Receive_I2C_Data(0X16);
	movlw	(016h)
	fcall	_Receive_I2C_Data
	line	103
	
l3047:	
;I2C DS1307 INTERFACE.c: 103: Stop();
	fcall	_Stop
	line	105
	
l3049:	
;I2C DS1307 INTERFACE.c: 105: Start();
	fcall	_Start
	line	106
	
l3051:	
;I2C DS1307 INTERFACE.c: 106: Receive_I2C_Data(0XD0);
	movlw	(0D0h)
	fcall	_Receive_I2C_Data
	line	107
	
l3053:	
;I2C DS1307 INTERFACE.c: 107: Receive_I2C_Data(0X02);
	movlw	(02h)
	fcall	_Receive_I2C_Data
	line	108
	
l3055:	
;I2C DS1307 INTERFACE.c: 108: Receive_I2C_Data(0X16);
	movlw	(016h)
	fcall	_Receive_I2C_Data
	line	109
	
l3057:	
;I2C DS1307 INTERFACE.c: 109: Stop();
	fcall	_Stop
	goto	l3059
	line	111
;I2C DS1307 INTERFACE.c: 111: while(1)
	
l741:	
	line	113
	
l3059:	
;I2C DS1307 INTERFACE.c: 112: {
;I2C DS1307 INTERFACE.c: 113: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	115
	
l3061:	
;I2C DS1307 INTERFACE.c: 115: Start();
	fcall	_Start
	line	116
	
l3063:	
;I2C DS1307 INTERFACE.c: 116: Receive_I2C_Data(0XD0);
	movlw	(0D0h)
	fcall	_Receive_I2C_Data
	line	117
	
l3065:	
;I2C DS1307 INTERFACE.c: 117: Receive_I2C_Data(0X01);
	movlw	(01h)
	fcall	_Receive_I2C_Data
	line	118
	
l3067:	
;I2C DS1307 INTERFACE.c: 118: Restart();
	fcall	_Restart
	line	119
	
l3069:	
;I2C DS1307 INTERFACE.c: 119: Receive_I2C_Data(0XD1);
	movlw	(0D1h)
	fcall	_Receive_I2C_Data
	line	120
	
l3071:	
;I2C DS1307 INTERFACE.c: 120: r = Receive();
	fcall	_Receive
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@r)
	line	121
	
l3073:	
;I2C DS1307 INTERFACE.c: 121: lcd_bcd(r);
	movf	(main@r),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcd_bcd+1)
	fcall	_lcd_bcd
	line	122
	
l3075:	
;I2C DS1307 INTERFACE.c: 122: Stop();
	fcall	_Stop
	line	124
	
l3077:	
;I2C DS1307 INTERFACE.c: 124: Start();
	fcall	_Start
	line	125
	
l3079:	
;I2C DS1307 INTERFACE.c: 125: Receive_I2C_Data(0XD0);
	movlw	(0D0h)
	fcall	_Receive_I2C_Data
	line	126
	
l3081:	
;I2C DS1307 INTERFACE.c: 126: Receive_I2C_Data(0X00);
	movlw	(0)
	fcall	_Receive_I2C_Data
	line	127
	
l3083:	
;I2C DS1307 INTERFACE.c: 127: Restart();
	fcall	_Restart
	line	128
	
l3085:	
;I2C DS1307 INTERFACE.c: 128: Receive_I2C_Data(0XD1);
	movlw	(0D1h)
	fcall	_Receive_I2C_Data
	line	129
	
l3087:	
;I2C DS1307 INTERFACE.c: 129: r = Receive();
	fcall	_Receive
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@r)
	line	130
	
l3089:	
;I2C DS1307 INTERFACE.c: 130: lcd_bcd(r);
	movf	(main@r),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcd_bcd+1)
	fcall	_lcd_bcd
	line	131
	
l3091:	
;I2C DS1307 INTERFACE.c: 131: Stop();
	fcall	_Stop
	goto	l3059
	line	132
	
l742:	
	line	111
	goto	l3059
	
l743:	
	line	133
	
l744:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_bcd
psect	text327,local,class=CODE,delta=2
global __ptext327
__ptext327:

;; *************** function _lcd_bcd *****************
;; Defined at:
;;		line 72 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
;; Parameters:    Size  Location     Type
;;  m               2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  d1              2    8[BANK0 ] int 
;;  temp            2    6[BANK0 ] int 
;;  d2              2    4[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         2      10       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;;		___awdiv
;;		___awmod
;;		_Lcd_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text327
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
	line	72
	global	__size_of_lcd_bcd
	__size_of_lcd_bcd	equ	__end_of_lcd_bcd-_lcd_bcd
	
_lcd_bcd:	
	opt	stack 6
; Regs used in _lcd_bcd: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	74
	
l2993:	
;I2C DS1307 INTERFACE.c: 73: int d1,d2,temp;
;I2C DS1307 INTERFACE.c: 74: temp=m;
	movf	(lcd_bcd@m+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_bcd@temp+1)
	addwf	(lcd_bcd@temp+1)
	movf	(lcd_bcd@m),w
	clrf	(lcd_bcd@temp)
	addwf	(lcd_bcd@temp)

	line	75
	
l2995:	
;I2C DS1307 INTERFACE.c: 75: m=(((temp & 0xf0)>>4)*10)+(temp & 0x0f);
	movlw	low(0Fh)
	andwf	(lcd_bcd@temp),w
	movwf	(??_lcd_bcd+0)+0
	movlw	high(0Fh)
	andwf	(lcd_bcd@temp+1),w
	movwf	1+(??_lcd_bcd+0)+0
	movf	(lcd_bcd@temp+1),w
	movwf	(??_lcd_bcd+2)+0+1
	movf	(lcd_bcd@temp),w
	movwf	(??_lcd_bcd+2)+0
	movlw	04h
	movwf	btemp+1
u2665:
	rlf	(??_lcd_bcd+2)+1,w
	rrf	(??_lcd_bcd+2)+1,f
	rrf	(??_lcd_bcd+2)+0,f
	decfsz	btemp+1,f
	goto	u2665
	movlw	low(0Fh)
	andwf	0+(??_lcd_bcd+2)+0,w
	movwf	(?___wmul)
	movlw	high(0Fh)
	andwf	1+(??_lcd_bcd+2)+0,w
	movwf	1+(?___wmul)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_lcd_bcd+0)+0,w
	addwf	(0+(?___wmul)),w
	movwf	(lcd_bcd@m)
	movf	1+(??_lcd_bcd+0)+0,w
	skipnc
	incf	1+(??_lcd_bcd+0)+0,w
	addwf	(1+(?___wmul)),w
	movwf	1+(lcd_bcd@m)
	line	76
	
l2997:	
;I2C DS1307 INTERFACE.c: 76: d1=m/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(lcd_bcd@m+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(lcd_bcd@m),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_bcd@d1+1)
	addwf	(lcd_bcd@d1+1)
	movf	(0+(?___awdiv)),w
	clrf	(lcd_bcd@d1)
	addwf	(lcd_bcd@d1)

	line	77
	
l2999:	
;I2C DS1307 INTERFACE.c: 77: d2=m%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(lcd_bcd@m+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(lcd_bcd@m),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_bcd@d2+1)
	addwf	(lcd_bcd@d2+1)
	movf	(0+(?___awmod)),w
	clrf	(lcd_bcd@d2)
	addwf	(lcd_bcd@d2)

	line	78
	
l3001:	
;I2C DS1307 INTERFACE.c: 78: if(d1==0 || d1==1 || d1==2 || d1==3 || d1==4 || d1==5 || d1==6 || d1==7 || d1==8 || d1==9 )
	movf	(lcd_bcd@d1+1),w
	iorwf	(lcd_bcd@d1),w
	skipnz
	goto	u2671
	goto	u2670
u2671:
	goto	l3021
u2670:
	
l3003:	
	movlw	01h
	xorwf	(lcd_bcd@d1),w
	iorwf	(lcd_bcd@d1+1),w
	skipnz
	goto	u2681
	goto	u2680
u2681:
	goto	l3021
u2680:
	
l3005:	
	movlw	02h
	xorwf	(lcd_bcd@d1),w
	iorwf	(lcd_bcd@d1+1),w
	skipnz
	goto	u2691
	goto	u2690
u2691:
	goto	l3021
u2690:
	
l3007:	
	movlw	03h
	xorwf	(lcd_bcd@d1),w
	iorwf	(lcd_bcd@d1+1),w
	skipnz
	goto	u2701
	goto	u2700
u2701:
	goto	l3021
u2700:
	
l3009:	
	movlw	04h
	xorwf	(lcd_bcd@d1),w
	iorwf	(lcd_bcd@d1+1),w
	skipnz
	goto	u2711
	goto	u2710
u2711:
	goto	l3021
u2710:
	
l3011:	
	movlw	05h
	xorwf	(lcd_bcd@d1),w
	iorwf	(lcd_bcd@d1+1),w
	skipnz
	goto	u2721
	goto	u2720
u2721:
	goto	l3021
u2720:
	
l3013:	
	movlw	06h
	xorwf	(lcd_bcd@d1),w
	iorwf	(lcd_bcd@d1+1),w
	skipnz
	goto	u2731
	goto	u2730
u2731:
	goto	l3021
u2730:
	
l3015:	
	movlw	07h
	xorwf	(lcd_bcd@d1),w
	iorwf	(lcd_bcd@d1+1),w
	skipnz
	goto	u2741
	goto	u2740
u2741:
	goto	l3021
u2740:
	
l3017:	
	movlw	08h
	xorwf	(lcd_bcd@d1),w
	iorwf	(lcd_bcd@d1+1),w
	skipnz
	goto	u2751
	goto	u2750
u2751:
	goto	l3021
u2750:
	
l3019:	
	movlw	09h
	xorwf	(lcd_bcd@d1),w
	iorwf	(lcd_bcd@d1+1),w
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l735
u2760:
	goto	l3021
	
l737:	
	line	79
	
l3021:	
;I2C DS1307 INTERFACE.c: 79: Lcd_Data(d1+48);
	movf	(lcd_bcd@d1),w
	addlw	030h
	fcall	_Lcd_Data
	
l735:	
	line	80
;I2C DS1307 INTERFACE.c: 80: Lcd_Data(d2+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_bcd@d2),w
	addlw	030h
	fcall	_Lcd_Data
	line	81
	
l738:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_bcd
	__end_of_lcd_bcd:
;; =============== function _lcd_bcd ends ============

	signat	_lcd_bcd,4216
	global	_Lcd_Intialization
psect	text328,local,class=CODE,delta=2
global __ptext328
__ptext328:

;; *************** function _Lcd_Intialization *****************
;; Defined at:
;;		line 49 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\LCD 4 BIT.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text328
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\LCD 4 BIT.h"
	line	49
	global	__size_of_Lcd_Intialization
	__size_of_Lcd_Intialization	equ	__end_of_Lcd_Intialization-_Lcd_Intialization
	
_Lcd_Intialization:	
	opt	stack 6
; Regs used in _Lcd_Intialization: [wreg+status,2+status,0+pclath+cstack]
	line	50
	
l2771:	
;LCD 4 BIT.h: 50: Lcd_Command(0x02);
	movlw	(02h)
	fcall	_Lcd_Command
	line	51
;LCD 4 BIT.h: 51: Lcd_Command(0x28);
	movlw	(028h)
	fcall	_Lcd_Command
	line	52
;LCD 4 BIT.h: 52: Lcd_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd_Command
	line	53
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Intialization
	__end_of_Lcd_Intialization:
;; =============== function _Lcd_Intialization ends ============

	signat	_Lcd_Intialization,88
	global	_Lcd_Data
psect	text329,local,class=CODE,delta=2
global __ptext329
__ptext329:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 26 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\LCD 4 BIT.h"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_bcd
;;		_Lcd_String
;; This function uses a non-reentrant model
;;
psect	text329
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\LCD 4 BIT.h"
	line	26
	global	__size_of_Lcd_Data
	__size_of_Lcd_Data	equ	__end_of_Lcd_Data-_Lcd_Data
	
_Lcd_Data:	
	opt	stack 6
; Regs used in _Lcd_Data: [wreg+status,2+status,0]
;Lcd_Data@Data stored from wreg
	movwf	(Lcd_Data@Data)
	line	27
	
l2973:	
;LCD 4 BIT.h: 27: PORTD = (Data & 0XF0);
	movf	(Lcd_Data@Data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	28
	
l2975:	
;LCD 4 BIT.h: 28: RD2 = 1;
	bsf	(66/8),(66)&7
	line	29
	
l2977:	
;LCD 4 BIT.h: 29: RD3 = 1;
	bsf	(67/8),(67)&7
	line	30
	
l2979:	
;LCD 4 BIT.h: 30: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2777:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2777
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2777
	clrwdt
opt asmopt_on

	line	31
	
l2981:	
;LCD 4 BIT.h: 31: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	33
	
l2983:	
;LCD 4 BIT.h: 33: PORTD = ((Data<<4) & 0xF0);
	movf	(Lcd_Data@Data),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u2655:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u2655
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	34
	
l2985:	
;LCD 4 BIT.h: 34: RD2 = 1;
	bsf	(66/8),(66)&7
	line	35
	
l2987:	
;LCD 4 BIT.h: 35: RD3 = 1;
	bsf	(67/8),(67)&7
	line	36
	
l2989:	
;LCD 4 BIT.h: 36: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2787:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2787
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2787
	clrwdt
opt asmopt_on

	line	37
	
l2991:	
;LCD 4 BIT.h: 37: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	38
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
;; =============== function _Lcd_Data ends ============

	signat	_Lcd_Data,4216
	global	_Lcd_Command
psect	text330,local,class=CODE,delta=2
global __ptext330
__ptext330:

;; *************** function _Lcd_Command *****************
;; Defined at:
;;		line 11 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\LCD 4 BIT.h"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Intialization
;;		_main
;; This function uses a non-reentrant model
;;
psect	text330
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\LCD 4 BIT.h"
	line	11
	global	__size_of_Lcd_Command
	__size_of_Lcd_Command	equ	__end_of_Lcd_Command-_Lcd_Command
	
_Lcd_Command:	
	opt	stack 7
; Regs used in _Lcd_Command: [wreg+status,2+status,0]
;Lcd_Command@cmd stored from wreg
	movwf	(Lcd_Command@cmd)
	line	12
	
l2731:	
;LCD 4 BIT.h: 12: PORTD = (cmd & 0XF0);
	movf	(Lcd_Command@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	13
	
l2733:	
;LCD 4 BIT.h: 13: RD2 = 0;
	bcf	(66/8),(66)&7
	line	14
	
l2735:	
;LCD 4 BIT.h: 14: RD3 = 1;
	bsf	(67/8),(67)&7
	line	15
	
l2737:	
;LCD 4 BIT.h: 15: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2797:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2797
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2797
	clrwdt
opt asmopt_on

	line	16
	
l2739:	
;LCD 4 BIT.h: 16: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	18
	
l2741:	
;LCD 4 BIT.h: 18: PORTD = ((cmd<<4) & 0xF0);
	movf	(Lcd_Command@cmd),w
	movwf	(??_Lcd_Command+0)+0
	movlw	(04h)-1
u2285:
	clrc
	rlf	(??_Lcd_Command+0)+0,f
	addlw	-1
	skipz
	goto	u2285
	clrc
	rlf	(??_Lcd_Command+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	19
	
l2743:	
;LCD 4 BIT.h: 19: RD2 = 0;
	bcf	(66/8),(66)&7
	line	20
	
l2745:	
;LCD 4 BIT.h: 20: RD3 = 1;
	bsf	(67/8),(67)&7
	line	21
	
l2747:	
;LCD 4 BIT.h: 21: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2807:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2807
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2807
	clrwdt
opt asmopt_on

	line	22
	
l2749:	
;LCD 4 BIT.h: 22: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	23
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Command
	__end_of_Lcd_Command:
;; =============== function _Lcd_Command ends ============

	signat	_Lcd_Command,4216
	global	___awmod
psect	text331,local,class=CODE,delta=2
global __ptext331
__ptext331:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_bcd
;; This function uses a non-reentrant model
;;
psect	text331
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2939:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2561
	goto	u2560
u2561:
	goto	l2943
u2560:
	line	10
	
l2941:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2943
	line	12
	
l1635:	
	line	13
	
l2943:	
	btfss	(___awmod@divisor+1),7
	goto	u2571
	goto	u2570
u2571:
	goto	l2947
u2570:
	line	14
	
l2945:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2947
	
l1636:	
	line	15
	
l2947:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2581
	goto	u2580
u2581:
	goto	l2965
u2580:
	line	16
	
l2949:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2955
	
l1639:	
	line	18
	
l2951:	
	movlw	01h
	
u2595:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2595
	line	19
	
l2953:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2955
	line	20
	
l1638:	
	line	17
	
l2955:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l2951
u2600:
	goto	l2957
	
l1640:	
	goto	l2957
	line	21
	
l1641:	
	line	22
	
l2957:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2615
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2615:
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2961
u2610:
	line	23
	
l2959:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2961
	
l1642:	
	line	24
	
l2961:	
	movlw	01h
	
u2625:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2625
	line	25
	
l2963:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2957
u2630:
	goto	l2965
	
l1643:	
	goto	l2965
	line	26
	
l1637:	
	line	27
	
l2965:	
	movf	(___awmod@sign),w
	skipz
	goto	u2640
	goto	l2969
u2640:
	line	28
	
l2967:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2969
	
l1644:	
	line	29
	
l2969:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1645
	
l2971:	
	line	30
	
l1645:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text332,local,class=CODE,delta=2
global __ptext332
__ptext332:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_bcd
;; This function uses a non-reentrant model
;;
psect	text332
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2899:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2461
	goto	u2460
u2461:
	goto	l2903
u2460:
	line	11
	
l2901:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2903
	line	13
	
l1567:	
	line	14
	
l2903:	
	btfss	(___awdiv@dividend+1),7
	goto	u2471
	goto	u2470
u2471:
	goto	l2909
u2470:
	line	15
	
l2905:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2907:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2909
	line	17
	
l1568:	
	line	18
	
l2909:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2911:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2481
	goto	u2480
u2481:
	goto	l2931
u2480:
	line	20
	
l2913:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2919
	
l1571:	
	line	22
	
l2915:	
	movlw	01h
	
u2495:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2495
	line	23
	
l2917:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2919
	line	24
	
l1570:	
	line	21
	
l2919:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l2915
u2500:
	goto	l2921
	
l1572:	
	goto	l2921
	line	25
	
l1573:	
	line	26
	
l2921:	
	movlw	01h
	
u2515:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2515
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2525
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2525:
	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l2927
u2520:
	line	28
	
l2923:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2925:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2927
	line	30
	
l1574:	
	line	31
	
l2927:	
	movlw	01h
	
u2535:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2535
	line	32
	
l2929:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l2921
u2540:
	goto	l2931
	
l1575:	
	goto	l2931
	line	33
	
l1569:	
	line	34
	
l2931:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2550
	goto	l2935
u2550:
	line	35
	
l2933:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2935
	
l1576:	
	line	36
	
l2935:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1577
	
l2937:	
	line	37
	
l1577:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text333,local,class=CODE,delta=2
global __ptext333
__ptext333:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_bcd
;; This function uses a non-reentrant model
;;
psect	text333
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2887:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2889
	line	6
	
l1427:	
	line	7
	
l2889:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l1428
u2420:
	line	8
	
l2891:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1428:	
	line	9
	movlw	01h
	
u2435:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2435
	line	10
	
l2893:	
	movlw	01h
	
u2445:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2445
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2889
u2450:
	goto	l2895
	
l1429:	
	line	12
	
l2895:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1430
	
l2897:	
	line	13
	
l1430:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_Slave_I2C_Initialization
psect	text334,local,class=CODE,delta=2
global __ptext334
__ptext334:

;; *************** function _Slave_I2C_Initialization *****************
;; Defined at:
;;		line 55 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text334
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
	line	55
	global	__size_of_Slave_I2C_Initialization
	__size_of_Slave_I2C_Initialization	equ	__end_of_Slave_I2C_Initialization-_Slave_I2C_Initialization
	
_Slave_I2C_Initialization:	
	opt	stack 7
; Regs used in _Slave_I2C_Initialization: [wreg+status,2]
	line	56
	
l1855:	
;I2C DS1307 INTERFACE.c: 56: TRISC3=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	57
;I2C DS1307 INTERFACE.c: 57: TRISC4=1;
	bsf	(1084/8)^080h,(1084)&7
	line	58
	
l1857:	
;I2C DS1307 INTERFACE.c: 58: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	60
	
l1859:	
;I2C DS1307 INTERFACE.c: 60: SSPCON=0X28;
	movlw	(028h)
	movwf	(20)	;volatile
	line	61
	
l1861:	
;I2C DS1307 INTERFACE.c: 61: SSPCON2=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	62
;I2C DS1307 INTERFACE.c: 62: SSPSTAT=0X80;
	movlw	(080h)
	movwf	(148)^080h	;volatile
	line	63
;I2C DS1307 INTERFACE.c: 63: SSPADD=0X24;
	movlw	(024h)
	movwf	(147)^080h	;volatile
	line	68
	
l1863:	
;I2C DS1307 INTERFACE.c: 68: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	69
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_Slave_I2C_Initialization
	__end_of_Slave_I2C_Initialization:
;; =============== function _Slave_I2C_Initialization ends ============

	signat	_Slave_I2C_Initialization,88
	global	_Stop
psect	text335,local,class=CODE,delta=2
global __ptext335
__ptext335:

;; *************** function _Stop *****************
;; Defined at:
;;		line 48 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text335
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
	line	48
	global	__size_of_Stop
	__size_of_Stop	equ	__end_of_Stop-_Stop
	
_Stop:	
	opt	stack 7
; Regs used in _Stop: []
	line	49
	
l1853:	
;I2C DS1307 INTERFACE.c: 49: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	50
;I2C DS1307 INTERFACE.c: 50: while(SSPIF == 0);
	goto	l726
	
l727:	
	
l726:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u61
	goto	u60
u61:
	goto	l726
u60:
	
l728:	
	line	51
;I2C DS1307 INTERFACE.c: 51: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	52
	
l729:	
	return
	opt stack 0
GLOBAL	__end_of_Stop
	__end_of_Stop:
;; =============== function _Stop ends ============

	signat	_Stop,88
	global	_Receive
psect	text336,local,class=CODE,delta=2
global __ptext336
__ptext336:

;; *************** function _Receive *****************
;; Defined at:
;;		line 35 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text336
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
	line	35
	global	__size_of_Receive
	__size_of_Receive	equ	__end_of_Receive-_Receive
	
_Receive:	
	opt	stack 7
; Regs used in _Receive: [wreg]
	line	37
	
l1847:	
;I2C DS1307 INTERFACE.c: 37: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	38
;I2C DS1307 INTERFACE.c: 38: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	39
;I2C DS1307 INTERFACE.c: 39: while(!SSPIF);
	goto	l720
	
l721:	
	
l720:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u51
	goto	u50
u51:
	goto	l720
u50:
	
l722:	
	line	42
;I2C DS1307 INTERFACE.c: 42: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	43
;I2C DS1307 INTERFACE.c: 43: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	44
	
l1849:	
;I2C DS1307 INTERFACE.c: 44: return SSPBUF;
	movf	(19),w	;volatile
	goto	l723
	
l1851:	
	line	45
	
l723:	
	return
	opt stack 0
GLOBAL	__end_of_Receive
	__end_of_Receive:
;; =============== function _Receive ends ============

	signat	_Receive,89
	global	_Restart
psect	text337,local,class=CODE,delta=2
global __ptext337
__ptext337:

;; *************** function _Restart *****************
;; Defined at:
;;		line 28 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text337
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
	line	28
	global	__size_of_Restart
	__size_of_Restart	equ	__end_of_Restart-_Restart
	
_Restart:	
	opt	stack 7
; Regs used in _Restart: []
	line	29
	
l1845:	
;I2C DS1307 INTERFACE.c: 29: RSEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	30
;I2C DS1307 INTERFACE.c: 30: while(!SSPIF);
	goto	l714
	
l715:	
	
l714:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u41
	goto	u40
u41:
	goto	l714
u40:
	
l716:	
	line	31
;I2C DS1307 INTERFACE.c: 31: SSPIF=0;
	bcf	(99/8),(99)&7
	line	32
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_Restart
	__end_of_Restart:
;; =============== function _Restart ends ============

	signat	_Restart,88
	global	_Receive_I2C_Data
psect	text338,local,class=CODE,delta=2
global __ptext338
__ptext338:

;; *************** function _Receive_I2C_Data *****************
;; Defined at:
;;		line 21 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text338
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
	line	21
	global	__size_of_Receive_I2C_Data
	__size_of_Receive_I2C_Data	equ	__end_of_Receive_I2C_Data-_Receive_I2C_Data
	
_Receive_I2C_Data:	
	opt	stack 7
; Regs used in _Receive_I2C_Data: [wreg]
;Receive_I2C_Data@Data stored from wreg
	movwf	(Receive_I2C_Data@Data)
	line	22
	
l1843:	
;I2C DS1307 INTERFACE.c: 22: SSPBUF = Data;
	movf	(Receive_I2C_Data@Data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	23
;I2C DS1307 INTERFACE.c: 23: while(SSPIF ==0);
	goto	l708
	
l709:	
	
l708:	
	btfss	(99/8),(99)&7
	goto	u31
	goto	u30
u31:
	goto	l708
u30:
	
l710:	
	line	24
;I2C DS1307 INTERFACE.c: 24: SSPIF=0;
	bcf	(99/8),(99)&7
	line	25
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_Receive_I2C_Data
	__end_of_Receive_I2C_Data:
;; =============== function _Receive_I2C_Data ends ============

	signat	_Receive_I2C_Data,4216
	global	_Start
psect	text339,local,class=CODE,delta=2
global __ptext339
__ptext339:

;; *************** function _Start *****************
;; Defined at:
;;		line 14 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text339
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\01-PIC16F877A\34-I2C DS1307 INTERFACE\CODE\I2C DS1307 INTERFACE.c"
	line	14
	global	__size_of_Start
	__size_of_Start	equ	__end_of_Start-_Start
	
_Start:	
	opt	stack 7
; Regs used in _Start: []
	line	15
	
l1841:	
;I2C DS1307 INTERFACE.c: 15: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	16
;I2C DS1307 INTERFACE.c: 16: while(!SSPIF);
	goto	l702
	
l703:	
	
l702:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u21
	goto	u20
u21:
	goto	l702
u20:
	
l704:	
	line	17
;I2C DS1307 INTERFACE.c: 17: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	18
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_Start
	__end_of_Start:
;; =============== function _Start ends ============

	signat	_Start,88
psect	text340,local,class=CODE,delta=2
global __ptext340
__ptext340:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
