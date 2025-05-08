;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module main2
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _display_date
	.globl _display_ph_value
	.globl _adc_read
	.globl _rtc_get_date
	.globl _bcd_to_decimal
	.globl _i2c_read
	.globl _i2c_write
	.globl _i2c_stop
	.globl _i2c_start
	.globl _lcd_print
	.globl _lcd_init
	.globl _lcd_data
	.globl _lcd_cmd
	.globl _delay
	.globl _MOTOR
	.globl _SCL
	.globl _SDA
	.globl _LED_POOR
	.globl _LED_NEUTRAL
	.globl _LED_GOOD
	.globl _OE
	.globl _ALE
	.globl _EOC
	.globl _START
	.globl _EN
	.globl _RS
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _rtc_get_date_PARM_3
	.globl _rtc_get_date_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RS	=	0x00b0
_EN	=	0x00b1
_START	=	0x00a0
_EOC	=	0x00a1
_ALE	=	0x00a2
_OE	=	0x00a3
_LED_GOOD	=	0x00b2
_LED_NEUTRAL	=	0x00b3
_LED_POOR	=	0x00b5
_SDA	=	0x0096
_SCL	=	0x0097
_MOTOR	=	0x00b6
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_rtc_get_date_PARM_2:
	.ds 3
_rtc_get_date_PARM_3:
	.ds 3
_display_date_day_10000_38:
	.ds 1
_display_date_month_10000_38:
	.ds 1
_display_date_year_10000_38:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_i2c_write_sloc0_1_0:
	.ds 1
_i2c_read_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
; restartable atomic support routines
	.ds	5
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms            Allocated to registers r6 r7 
;i             Allocated to registers r4 r5 
;j             Allocated to registers r2 r3 
;------------------------------------------------------------
;	main2.c:27: void delay(unsigned int ms) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6, dpl
	mov	r7, dph
;	main2.c:29: for (i = 0; i < ms; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	main2.c:30: for (j = 0; j < 1275; j++);
	mov	r2,#0xfb
	mov	r3,#0x04
00105$:
	dec	r2
	cjne	r2,#0xff,00138$
	dec	r3
00138$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	main2.c:29: for (i = 0; i < ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main2.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_cmd'
;------------------------------------------------------------
;cmd           Allocated to registers r7 
;------------------------------------------------------------
;	main2.c:34: void lcd_cmd(unsigned char cmd) {
;	-----------------------------------------
;	 function lcd_cmd
;	-----------------------------------------
_lcd_cmd:
	mov	r7, dpl
;	main2.c:35: RS = 0;
;	assignBit
	clr	_RS
;	main2.c:36: P0 = cmd;
	mov	_P0,r7
;	main2.c:37: EN = 1; delay(1); EN = 0; delay(2);
;	assignBit
	setb	_EN
	mov	dptr,#0x0001
	lcall	_delay
;	assignBit
	clr	_EN
	mov	dptr,#0x0002
;	main2.c:38: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_data'
;------------------------------------------------------------
;data          Allocated to registers r7 
;------------------------------------------------------------
;	main2.c:40: void lcd_data(unsigned char data) {
;	-----------------------------------------
;	 function lcd_data
;	-----------------------------------------
_lcd_data:
	mov	r7, dpl
;	main2.c:41: RS = 1;
;	assignBit
	setb	_RS
;	main2.c:42: P0 = data;
	mov	_P0,r7
;	main2.c:43: EN = 1; delay(1); EN = 0; delay(2);
;	assignBit
	setb	_EN
	mov	dptr,#0x0001
	lcall	_delay
;	assignBit
	clr	_EN
	mov	dptr,#0x0002
;	main2.c:44: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_init'
;------------------------------------------------------------
;	main2.c:46: void lcd_init(void) {
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
_lcd_init:
;	main2.c:47: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	main2.c:48: lcd_cmd(0x38);
	mov	dpl, #0x38
	lcall	_lcd_cmd
;	main2.c:49: lcd_cmd(0x0C);
	mov	dpl, #0x0c
	lcall	_lcd_cmd
;	main2.c:50: lcd_cmd(0x06);
	mov	dpl, #0x06
	lcall	_lcd_cmd
;	main2.c:51: lcd_cmd(0x01);
	mov	dpl, #0x01
	lcall	_lcd_cmd
;	main2.c:52: delay(2);
	mov	dptr,#0x0002
;	main2.c:53: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_print'
;------------------------------------------------------------
;str           Allocated to registers 
;------------------------------------------------------------
;	main2.c:55: void lcd_print(char *str) {
;	-----------------------------------------
;	 function lcd_print
;	-----------------------------------------
_lcd_print:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main2.c:56: while (*str) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	main2.c:57: lcd_data(*str++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00120$
	inc	r6
00120$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_data
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	main2.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	main2.c:62: void i2c_start() {
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	main2.c:63: SDA = 1; SCL = 1; delay(1);
;	assignBit
	setb	_SDA
;	assignBit
	setb	_SCL
	mov	dptr,#0x0001
	lcall	_delay
;	main2.c:64: SDA = 0; delay(1); SCL = 0;
;	assignBit
	clr	_SDA
	mov	dptr,#0x0001
	lcall	_delay
;	assignBit
	clr	_SCL
;	main2.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	main2.c:67: void i2c_stop() {
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	main2.c:68: SDA = 0; SCL = 1; delay(1);
;	assignBit
	clr	_SDA
;	assignBit
	setb	_SCL
	mov	dptr,#0x0001
	lcall	_delay
;	main2.c:69: SDA = 1; delay(1);
;	assignBit
	setb	_SDA
	mov	dptr,#0x0001
;	main2.c:70: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;dat           Allocated to registers r7 
;i             Allocated to registers r6 
;ack           Allocated to registers 
;------------------------------------------------------------
;	main2.c:72: unsigned char i2c_write(unsigned char dat) {
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7, dpl
;	main2.c:74: for (i = 0; i < 8; i++) {
	mov	r6,#0x00
00102$:
;	main2.c:75: SDA = (dat & 0x80) ? 1 : 0;
	mov	ar5,r7
	anl	ar5,#0x80
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_SDA,c
;	main2.c:76: SCL = 1; delay(1);
;	assignBit
	setb	_SCL
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay
;	main2.c:77: SCL = 0; delay(1);
;	assignBit
	clr	_SCL
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar6
	pop	ar7
;	main2.c:78: dat <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	main2.c:74: for (i = 0; i < 8; i++) {
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00102$
;	main2.c:80: SDA = 1; SCL = 1; delay(1);
;	assignBit
	setb	_SDA
;	assignBit
	setb	_SCL
	mov	dptr,#0x0001
	lcall	_delay
;	main2.c:81: unsigned char ack = !SDA;
	mov	c,_SDA
	cpl	c
	mov  _i2c_write_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	main2.c:82: SCL = 0;
;	assignBit
	clr	_SCL
;	main2.c:83: return ack;
;	main2.c:84: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;ack           Allocated to registers r7 
;i             Allocated to registers r5 
;dat           Allocated to registers r6 
;------------------------------------------------------------
;	main2.c:86: unsigned char i2c_read(unsigned char ack) {
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	mov	r7, dpl
;	main2.c:87: unsigned char i, dat = 0;
	mov	r6,#0x00
;	main2.c:88: SDA = 1;
;	assignBit
	setb	_SDA
;	main2.c:89: for (i = 0; i < 8; i++) {
	mov	r5,#0x00
00102$:
;	main2.c:90: SCL = 1;
;	assignBit
	setb	_SCL
;	main2.c:91: dat = (dat << 1) | SDA;
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	c,_SDA
	clr	a
	rlc	a
	orl	a,r4
	mov	r6,a
;	main2.c:92: SCL = 0;
;	assignBit
	clr	_SCL
;	main2.c:89: for (i = 0; i < 8; i++) {
	inc	r5
	cjne	r5,#0x08,00119$
00119$:
	jc	00102$
;	main2.c:94: SDA = !ack;
	mov	a,r7
	cjne	a,#0x01,00121$
00121$:
	mov  _i2c_read_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_SDA,c
;	main2.c:95: SCL = 1; delay(1);
;	assignBit
	setb	_SCL
	mov	dptr,#0x0001
	push	ar6
	lcall	_delay
	pop	ar6
;	main2.c:96: SCL = 0;
;	assignBit
	clr	_SCL
;	main2.c:97: SDA = 1;
;	assignBit
	setb	_SDA
;	main2.c:98: return dat;
	mov	dpl, r6
;	main2.c:99: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bcd_to_decimal'
;------------------------------------------------------------
;bcd           Allocated to registers r7 
;------------------------------------------------------------
;	main2.c:102: unsigned char bcd_to_decimal(unsigned char bcd) {
;	-----------------------------------------
;	 function bcd_to_decimal
;	-----------------------------------------
_bcd_to_decimal:
;	main2.c:103: return ((bcd >> 4) * 10) + (bcd & 0x0F);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	b,#0x0a
	mul	ab
	mov	r6,a
	mov	a,#0x0f
	anl	a,r7
	add	a, r6
	mov	dpl,a
;	main2.c:104: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtc_get_date'
;------------------------------------------------------------
;month         Allocated with name '_rtc_get_date_PARM_2'
;year          Allocated with name '_rtc_get_date_PARM_3'
;day           Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main2.c:107: void rtc_get_date(unsigned char *day, unsigned char *month, unsigned char *year) {
;	-----------------------------------------
;	 function rtc_get_date
;	-----------------------------------------
_rtc_get_date:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main2.c:108: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	main2.c:109: i2c_write(0xD0);      // DS1307 write address
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main2.c:110: i2c_write(0x04);      // Point to date register
	mov	dpl, #0x04
	lcall	_i2c_write
;	main2.c:111: i2c_stop();
	lcall	_i2c_stop
;	main2.c:113: i2c_start();
	lcall	_i2c_start
;	main2.c:114: i2c_write(0xD1);      // DS1307 read address
	mov	dpl, #0xd1
	lcall	_i2c_write
;	main2.c:115: *day = bcd_to_decimal(i2c_read(1));
	mov	dpl, #0x01
	lcall	_i2c_read
	lcall	_bcd_to_decimal
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main2.c:116: *month = bcd_to_decimal(i2c_read(1));
	mov	r5,_rtc_get_date_PARM_2
	mov	r6,(_rtc_get_date_PARM_2 + 1)
	mov	r7,(_rtc_get_date_PARM_2 + 2)
	mov	dpl, #0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd_to_decimal
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main2.c:117: *year = bcd_to_decimal(i2c_read(0));
	mov	r5,_rtc_get_date_PARM_3
	mov	r6,(_rtc_get_date_PARM_3 + 1)
	mov	r7,(_rtc_get_date_PARM_3 + 2)
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd_to_decimal
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main2.c:118: i2c_stop();
;	main2.c:119: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'adc_read'
;------------------------------------------------------------
;adc_value     Allocated to registers 
;------------------------------------------------------------
;	main2.c:122: unsigned char adc_read(void) {
;	-----------------------------------------
;	 function adc_read
;	-----------------------------------------
_adc_read:
;	main2.c:124: ALE = 1; delay(1); ALE = 0;
;	assignBit
	setb	_ALE
	mov	dptr,#0x0001
	lcall	_delay
;	assignBit
	clr	_ALE
;	main2.c:125: START = 1; delay(1); START = 0;
;	assignBit
	setb	_START
	mov	dptr,#0x0001
	lcall	_delay
;	assignBit
	clr	_START
;	main2.c:126: while (EOC);
00101$:
	jb	_EOC,00101$
;	main2.c:127: OE = 1;
;	assignBit
	setb	_OE
;	main2.c:128: adc_value = P1;
	mov	dpl,_P1
;	main2.c:129: OE = 0;
;	assignBit
	clr	_OE
;	main2.c:130: return adc_value;
;	main2.c:131: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_ph_value'
;------------------------------------------------------------
;adc_val       Allocated to registers 
;ph_scaled     Allocated to registers r6 r7 
;int_part      Allocated to registers r4 
;dec1          Allocated to registers r3 
;dec2          Allocated to registers r2 
;------------------------------------------------------------
;	main2.c:134: void display_ph_value(void) {
;	-----------------------------------------
;	 function display_ph_value
;	-----------------------------------------
_display_ph_value:
;	main2.c:135: unsigned char adc_val = adc_read();
	lcall	_adc_read
	mov	r7, dpl
;	main2.c:136: int ph_scaled = ((adc_val - 130) * 1600) / 125 + 700;
	mov	r6,#0x00
	mov	a,r7
	add	a,#0x7e
	mov	__mulint_PARM_2,a
	mov	a,r6
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0640
	lcall	__mulint
	mov	__divsint_PARM_2,#0x7d
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	a, dpl
	mov	b, dph
	add	a, #0xbc
	mov	r6,a
	mov	a,#0x02
	addc	a, b
;	main2.c:138: if (ph_scaled < 0) ph_scaled = 0;
	mov	r7,a
	jnb	acc.7,00104$
	mov	r6,#0x00
	mov	r7,#0x00
;	main2.c:139: if (ph_scaled > 1400) ph_scaled = 1400;
00104$:
;	main2.c:141: unsigned char int_part = ph_scaled / 100;
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4, dpl
	pop	ar6
	pop	ar7
;	main2.c:142: unsigned char dec1 = (ph_scaled / 10) % 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	push	ar4
	lcall	__divsint
	mov	r3, dpl
	pop	ar4
	pop	ar6
	pop	ar7
	mov	b,#0x0a
	mov	a,r3
	div	ab
	mov	r3,b
;	main2.c:143: unsigned char dec2 = ph_scaled % 10;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	__modsint
	mov	r2, dpl
;	main2.c:145: lcd_cmd(0x01);
	mov	dpl, #0x01
	push	ar2
	lcall	_lcd_cmd
;	main2.c:146: lcd_cmd(0x80); lcd_print("WATER QUALITY");
	mov	dpl, #0x80
	lcall	_lcd_cmd
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_lcd_print
;	main2.c:147: lcd_cmd(0xC0); lcd_print("pH:");
	mov	dpl, #0xc0
	lcall	_lcd_cmd
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_lcd_print
	pop	ar2
	pop	ar3
	pop	ar4
;	main2.c:148: lcd_data(int_part + '0');
	mov	a,#0x30
	add	a, r4
	mov	dpl,a
	push	ar3
	push	ar2
	lcall	_lcd_data
;	main2.c:149: lcd_data('.');
	mov	dpl, #0x2e
	lcall	_lcd_data
	pop	ar2
	pop	ar3
;	main2.c:150: lcd_data(dec1 + '0');
	mov	a,#0x30
	add	a, r3
	mov	dpl,a
	push	ar2
	lcall	_lcd_data
	pop	ar2
;	main2.c:151: lcd_data(dec2 + '0');
	mov	a,#0x30
	add	a, r2
	mov	dpl,a
	lcall	_lcd_data
;	main2.c:152: lcd_print(" ");
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_lcd_print
	pop	ar6
	pop	ar7
;	main2.c:154: if (ph_scaled >= 650 && ph_scaled <= 850) {
	clr	c
	mov	a,r6
	subb	a,#0x8a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x82
	jc	00112$
	mov	a,#0x52
	subb	a,r6
	mov	a,#(0x03 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00112$
;	main2.c:155: lcd_print("Good");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_lcd_print
;	main2.c:156: LED_GOOD = 0; LED_NEUTRAL = 1; LED_POOR = 1;
;	assignBit
	clr	_LED_GOOD
;	assignBit
	setb	_LED_NEUTRAL
;	assignBit
	setb	_LED_POOR
	ret
00112$:
;	main2.c:157: } else if ((ph_scaled >= 450 && ph_scaled < 650) || (ph_scaled > 850 && ph_scaled <= 900)) {
	clr	c
	mov	a,r6
	subb	a,#0xc2
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x81
	jc	00110$
	mov	a,r6
	subb	a,#0x8a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x82
	jc	00105$
00110$:
	clr	c
	mov	a,#0x52
	subb	a,r6
	mov	a,#(0x03 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
	clr	c
	mov	a,#0x84
	subb	a,r6
	mov	a,#(0x03 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00106$
00105$:
;	main2.c:158: lcd_print("Neutral");
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_lcd_print
;	main2.c:159: LED_GOOD = 1; LED_NEUTRAL = 0; LED_POOR = 1;
;	assignBit
	setb	_LED_GOOD
;	assignBit
	clr	_LED_NEUTRAL
;	assignBit
	setb	_LED_POOR
	ret
00106$:
;	main2.c:161: lcd_print("Poor");
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_lcd_print
;	main2.c:162: LED_GOOD = 1; LED_NEUTRAL = 1; LED_POOR = 0;
;	assignBit
	setb	_LED_GOOD
;	assignBit
	setb	_LED_NEUTRAL
;	assignBit
	clr	_LED_POOR
;	main2.c:164: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_date'
;------------------------------------------------------------
;day           Allocated with name '_display_date_day_10000_38'
;month         Allocated with name '_display_date_month_10000_38'
;year          Allocated with name '_display_date_year_10000_38'
;------------------------------------------------------------
;	main2.c:167: void display_date(void) {
;	-----------------------------------------
;	 function display_date
;	-----------------------------------------
_display_date:
;	main2.c:169: rtc_get_date(&day, &month, &year);
	mov	_rtc_get_date_PARM_2,#_display_date_month_10000_38
	mov	(_rtc_get_date_PARM_2 + 1),#0x00
	mov	(_rtc_get_date_PARM_2 + 2),#0x40
	mov	_rtc_get_date_PARM_3,#_display_date_year_10000_38
	mov	(_rtc_get_date_PARM_3 + 1),#0x00
	mov	(_rtc_get_date_PARM_3 + 2),#0x40
	mov	dptr,#_display_date_day_10000_38
	mov	b, #0x40
	lcall	_rtc_get_date
;	main2.c:171: lcd_cmd(0x01);
	mov	dpl, #0x01
	lcall	_lcd_cmd
;	main2.c:172: lcd_cmd(0x80); lcd_print("DATE:");
	mov	dpl, #0x80
	lcall	_lcd_cmd
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_lcd_print
;	main2.c:173: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
;	main2.c:175: lcd_data((day / 10) + '0');
	mov	r7,_display_date_day_10000_38
	mov	b,#0x0a
	mov	a,r7
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_data
;	main2.c:176: lcd_data((day % 10) + '0');
	mov	r7,_display_date_day_10000_38
	mov	b,#0x0a
	mov	a,r7
	div	ab
	mov	r7,b
	mov	a,#0x30
	add	a, r7
	mov	dpl,a
	lcall	_lcd_data
;	main2.c:177: lcd_data('-');
	mov	dpl, #0x2d
	lcall	_lcd_data
;	main2.c:178: lcd_data((month / 10) + '0');
	mov	r7,_display_date_month_10000_38
	mov	b,#0x0a
	mov	a,r7
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_data
;	main2.c:179: lcd_data((month % 10) + '0');
	mov	r7,_display_date_month_10000_38
	mov	b,#0x0a
	mov	a,r7
	div	ab
	mov	r7,b
	mov	a,#0x30
	add	a, r7
	mov	dpl,a
	lcall	_lcd_data
;	main2.c:180: lcd_data('-');
	mov	dpl, #0x2d
	lcall	_lcd_data
;	main2.c:181: lcd_data((year / 10) + '0');
	mov	r7,_display_date_year_10000_38
	mov	b,#0x0a
	mov	a,r7
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_data
;	main2.c:182: lcd_data((year % 10) + '0');
	mov	r7,_display_date_year_10000_38
	mov	b,#0x0a
	mov	a,r7
	div	ab
	mov	r7,b
	mov	a,#0x30
	add	a, r7
	mov	dpl,a
;	main2.c:183: }
	ljmp	_lcd_data
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i             Allocated to registers r7 
;------------------------------------------------------------
;	main2.c:186: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main2.c:188: lcd_init();
	lcall	_lcd_init
;	main2.c:189: MOTOR =0;
;	assignBit
	clr	_MOTOR
;	main2.c:190: lcd_print("Transfers Water");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_lcd_print
;	main2.c:191: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
;	main2.c:194: for (i = 0; i < 60; i++) {
00112$:
	mov	r7,#0x00
00106$:
;	main2.c:195: display_ph_value();
	push	ar7
	lcall	_display_ph_value
;	main2.c:196: delay(1000);  // 1 sec
	mov	dptr,#0x03e8
	lcall	_delay
	pop	ar7
;	main2.c:194: for (i = 0; i < 60; i++) {
	inc	r7
	cjne	r7,#0x3c,00144$
00144$:
	jc	00106$
;	main2.c:200: for (i = 0; i < 30; i++) {
	mov	r7,#0x00
00108$:
;	main2.c:201: display_date();
	push	ar7
	lcall	_display_date
;	main2.c:202: delay(1000);  // 1 sec
	mov	dptr,#0x03e8
	lcall	_delay
	pop	ar7
;	main2.c:200: for (i = 0; i < 30; i++) {
	inc	r7
	cjne	r7,#0x1e,00146$
00146$:
	jc	00108$
;	main2.c:205: }
	sjmp	00112$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "WATER QUALITY"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "pH:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Good"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Neutral"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Poor"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "DATE:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Transfers Water"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
