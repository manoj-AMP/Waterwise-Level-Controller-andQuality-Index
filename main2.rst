                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main2
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _display_date
                                     13 	.globl _display_ph_value
                                     14 	.globl _adc_read
                                     15 	.globl _rtc_get_date
                                     16 	.globl _bcd_to_decimal
                                     17 	.globl _i2c_read
                                     18 	.globl _i2c_write
                                     19 	.globl _i2c_stop
                                     20 	.globl _i2c_start
                                     21 	.globl _lcd_print
                                     22 	.globl _lcd_init
                                     23 	.globl _lcd_data
                                     24 	.globl _lcd_cmd
                                     25 	.globl _delay
                                     26 	.globl _MOTOR
                                     27 	.globl _SCL
                                     28 	.globl _SDA
                                     29 	.globl _LED_POOR
                                     30 	.globl _LED_NEUTRAL
                                     31 	.globl _LED_GOOD
                                     32 	.globl _OE
                                     33 	.globl _ALE
                                     34 	.globl _EOC
                                     35 	.globl _START
                                     36 	.globl _EN
                                     37 	.globl _RS
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _FL
                                     45 	.globl _P
                                     46 	.globl _TF2
                                     47 	.globl _EXF2
                                     48 	.globl _RCLK
                                     49 	.globl _TCLK
                                     50 	.globl _EXEN2
                                     51 	.globl _TR2
                                     52 	.globl _C_T2
                                     53 	.globl _CP_RL2
                                     54 	.globl _T2CON_7
                                     55 	.globl _T2CON_6
                                     56 	.globl _T2CON_5
                                     57 	.globl _T2CON_4
                                     58 	.globl _T2CON_3
                                     59 	.globl _T2CON_2
                                     60 	.globl _T2CON_1
                                     61 	.globl _T2CON_0
                                     62 	.globl _PT2
                                     63 	.globl _PS
                                     64 	.globl _PT1
                                     65 	.globl _PX1
                                     66 	.globl _PT0
                                     67 	.globl _PX0
                                     68 	.globl _RD
                                     69 	.globl _WR
                                     70 	.globl _T1
                                     71 	.globl _T0
                                     72 	.globl _INT1
                                     73 	.globl _INT0
                                     74 	.globl _TXD
                                     75 	.globl _RXD
                                     76 	.globl _P3_7
                                     77 	.globl _P3_6
                                     78 	.globl _P3_5
                                     79 	.globl _P3_4
                                     80 	.globl _P3_3
                                     81 	.globl _P3_2
                                     82 	.globl _P3_1
                                     83 	.globl _P3_0
                                     84 	.globl _EA
                                     85 	.globl _ET2
                                     86 	.globl _ES
                                     87 	.globl _ET1
                                     88 	.globl _EX1
                                     89 	.globl _ET0
                                     90 	.globl _EX0
                                     91 	.globl _P2_7
                                     92 	.globl _P2_6
                                     93 	.globl _P2_5
                                     94 	.globl _P2_4
                                     95 	.globl _P2_3
                                     96 	.globl _P2_2
                                     97 	.globl _P2_1
                                     98 	.globl _P2_0
                                     99 	.globl _SM0
                                    100 	.globl _SM1
                                    101 	.globl _SM2
                                    102 	.globl _REN
                                    103 	.globl _TB8
                                    104 	.globl _RB8
                                    105 	.globl _TI
                                    106 	.globl _RI
                                    107 	.globl _T2EX
                                    108 	.globl _T2
                                    109 	.globl _P1_7
                                    110 	.globl _P1_6
                                    111 	.globl _P1_5
                                    112 	.globl _P1_4
                                    113 	.globl _P1_3
                                    114 	.globl _P1_2
                                    115 	.globl _P1_1
                                    116 	.globl _P1_0
                                    117 	.globl _TF1
                                    118 	.globl _TR1
                                    119 	.globl _TF0
                                    120 	.globl _TR0
                                    121 	.globl _IE1
                                    122 	.globl _IT1
                                    123 	.globl _IE0
                                    124 	.globl _IT0
                                    125 	.globl _P0_7
                                    126 	.globl _P0_6
                                    127 	.globl _P0_5
                                    128 	.globl _P0_4
                                    129 	.globl _P0_3
                                    130 	.globl _P0_2
                                    131 	.globl _P0_1
                                    132 	.globl _P0_0
                                    133 	.globl _B
                                    134 	.globl _A
                                    135 	.globl _ACC
                                    136 	.globl _PSW
                                    137 	.globl _TH2
                                    138 	.globl _TL2
                                    139 	.globl _RCAP2H
                                    140 	.globl _RCAP2L
                                    141 	.globl _T2MOD
                                    142 	.globl _T2CON
                                    143 	.globl _IP
                                    144 	.globl _P3
                                    145 	.globl _IE
                                    146 	.globl _P2
                                    147 	.globl _SBUF
                                    148 	.globl _SCON
                                    149 	.globl _P1
                                    150 	.globl _TH1
                                    151 	.globl _TH0
                                    152 	.globl _TL1
                                    153 	.globl _TL0
                                    154 	.globl _TMOD
                                    155 	.globl _TCON
                                    156 	.globl _PCON
                                    157 	.globl _DPH
                                    158 	.globl _DPL
                                    159 	.globl _SP
                                    160 	.globl _P0
                                    161 	.globl _rtc_get_date_PARM_3
                                    162 	.globl _rtc_get_date_PARM_2
                                    163 ;--------------------------------------------------------
                                    164 ; special function registers
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000080   168 _P0	=	0x0080
                           000081   169 _SP	=	0x0081
                           000082   170 _DPL	=	0x0082
                           000083   171 _DPH	=	0x0083
                           000087   172 _PCON	=	0x0087
                           000088   173 _TCON	=	0x0088
                           000089   174 _TMOD	=	0x0089
                           00008A   175 _TL0	=	0x008a
                           00008B   176 _TL1	=	0x008b
                           00008C   177 _TH0	=	0x008c
                           00008D   178 _TH1	=	0x008d
                           000090   179 _P1	=	0x0090
                           000098   180 _SCON	=	0x0098
                           000099   181 _SBUF	=	0x0099
                           0000A0   182 _P2	=	0x00a0
                           0000A8   183 _IE	=	0x00a8
                           0000B0   184 _P3	=	0x00b0
                           0000B8   185 _IP	=	0x00b8
                           0000C8   186 _T2CON	=	0x00c8
                           0000C9   187 _T2MOD	=	0x00c9
                           0000CA   188 _RCAP2L	=	0x00ca
                           0000CB   189 _RCAP2H	=	0x00cb
                           0000CC   190 _TL2	=	0x00cc
                           0000CD   191 _TH2	=	0x00cd
                           0000D0   192 _PSW	=	0x00d0
                           0000E0   193 _ACC	=	0x00e0
                           0000E0   194 _A	=	0x00e0
                           0000F0   195 _B	=	0x00f0
                                    196 ;--------------------------------------------------------
                                    197 ; special function bits
                                    198 ;--------------------------------------------------------
                                    199 	.area RSEG    (ABS,DATA)
      000000                        200 	.org 0x0000
                           000080   201 _P0_0	=	0x0080
                           000081   202 _P0_1	=	0x0081
                           000082   203 _P0_2	=	0x0082
                           000083   204 _P0_3	=	0x0083
                           000084   205 _P0_4	=	0x0084
                           000085   206 _P0_5	=	0x0085
                           000086   207 _P0_6	=	0x0086
                           000087   208 _P0_7	=	0x0087
                           000088   209 _IT0	=	0x0088
                           000089   210 _IE0	=	0x0089
                           00008A   211 _IT1	=	0x008a
                           00008B   212 _IE1	=	0x008b
                           00008C   213 _TR0	=	0x008c
                           00008D   214 _TF0	=	0x008d
                           00008E   215 _TR1	=	0x008e
                           00008F   216 _TF1	=	0x008f
                           000090   217 _P1_0	=	0x0090
                           000091   218 _P1_1	=	0x0091
                           000092   219 _P1_2	=	0x0092
                           000093   220 _P1_3	=	0x0093
                           000094   221 _P1_4	=	0x0094
                           000095   222 _P1_5	=	0x0095
                           000096   223 _P1_6	=	0x0096
                           000097   224 _P1_7	=	0x0097
                           000090   225 _T2	=	0x0090
                           000091   226 _T2EX	=	0x0091
                           000098   227 _RI	=	0x0098
                           000099   228 _TI	=	0x0099
                           00009A   229 _RB8	=	0x009a
                           00009B   230 _TB8	=	0x009b
                           00009C   231 _REN	=	0x009c
                           00009D   232 _SM2	=	0x009d
                           00009E   233 _SM1	=	0x009e
                           00009F   234 _SM0	=	0x009f
                           0000A0   235 _P2_0	=	0x00a0
                           0000A1   236 _P2_1	=	0x00a1
                           0000A2   237 _P2_2	=	0x00a2
                           0000A3   238 _P2_3	=	0x00a3
                           0000A4   239 _P2_4	=	0x00a4
                           0000A5   240 _P2_5	=	0x00a5
                           0000A6   241 _P2_6	=	0x00a6
                           0000A7   242 _P2_7	=	0x00a7
                           0000A8   243 _EX0	=	0x00a8
                           0000A9   244 _ET0	=	0x00a9
                           0000AA   245 _EX1	=	0x00aa
                           0000AB   246 _ET1	=	0x00ab
                           0000AC   247 _ES	=	0x00ac
                           0000AD   248 _ET2	=	0x00ad
                           0000AF   249 _EA	=	0x00af
                           0000B0   250 _P3_0	=	0x00b0
                           0000B1   251 _P3_1	=	0x00b1
                           0000B2   252 _P3_2	=	0x00b2
                           0000B3   253 _P3_3	=	0x00b3
                           0000B4   254 _P3_4	=	0x00b4
                           0000B5   255 _P3_5	=	0x00b5
                           0000B6   256 _P3_6	=	0x00b6
                           0000B7   257 _P3_7	=	0x00b7
                           0000B0   258 _RXD	=	0x00b0
                           0000B1   259 _TXD	=	0x00b1
                           0000B2   260 _INT0	=	0x00b2
                           0000B3   261 _INT1	=	0x00b3
                           0000B4   262 _T0	=	0x00b4
                           0000B5   263 _T1	=	0x00b5
                           0000B6   264 _WR	=	0x00b6
                           0000B7   265 _RD	=	0x00b7
                           0000B8   266 _PX0	=	0x00b8
                           0000B9   267 _PT0	=	0x00b9
                           0000BA   268 _PX1	=	0x00ba
                           0000BB   269 _PT1	=	0x00bb
                           0000BC   270 _PS	=	0x00bc
                           0000BD   271 _PT2	=	0x00bd
                           0000C8   272 _T2CON_0	=	0x00c8
                           0000C9   273 _T2CON_1	=	0x00c9
                           0000CA   274 _T2CON_2	=	0x00ca
                           0000CB   275 _T2CON_3	=	0x00cb
                           0000CC   276 _T2CON_4	=	0x00cc
                           0000CD   277 _T2CON_5	=	0x00cd
                           0000CE   278 _T2CON_6	=	0x00ce
                           0000CF   279 _T2CON_7	=	0x00cf
                           0000C8   280 _CP_RL2	=	0x00c8
                           0000C9   281 _C_T2	=	0x00c9
                           0000CA   282 _TR2	=	0x00ca
                           0000CB   283 _EXEN2	=	0x00cb
                           0000CC   284 _TCLK	=	0x00cc
                           0000CD   285 _RCLK	=	0x00cd
                           0000CE   286 _EXF2	=	0x00ce
                           0000CF   287 _TF2	=	0x00cf
                           0000D0   288 _P	=	0x00d0
                           0000D1   289 _FL	=	0x00d1
                           0000D2   290 _OV	=	0x00d2
                           0000D3   291 _RS0	=	0x00d3
                           0000D4   292 _RS1	=	0x00d4
                           0000D5   293 _F0	=	0x00d5
                           0000D6   294 _AC	=	0x00d6
                           0000D7   295 _CY	=	0x00d7
                           0000B0   296 _RS	=	0x00b0
                           0000B1   297 _EN	=	0x00b1
                           0000A0   298 _START	=	0x00a0
                           0000A1   299 _EOC	=	0x00a1
                           0000A2   300 _ALE	=	0x00a2
                           0000A3   301 _OE	=	0x00a3
                           0000B2   302 _LED_GOOD	=	0x00b2
                           0000B3   303 _LED_NEUTRAL	=	0x00b3
                           0000B5   304 _LED_POOR	=	0x00b5
                           000096   305 _SDA	=	0x0096
                           000097   306 _SCL	=	0x0097
                           0000B6   307 _MOTOR	=	0x00b6
                                    308 ;--------------------------------------------------------
                                    309 ; overlayable register banks
                                    310 ;--------------------------------------------------------
                                    311 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        312 	.ds 8
                                    313 ;--------------------------------------------------------
                                    314 ; internal ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area DSEG    (DATA)
      000008                        317 _rtc_get_date_PARM_2:
      000008                        318 	.ds 3
      00000B                        319 _rtc_get_date_PARM_3:
      00000B                        320 	.ds 3
      00000E                        321 _display_date_day_10000_38:
      00000E                        322 	.ds 1
      00000F                        323 _display_date_month_10000_38:
      00000F                        324 	.ds 1
      000010                        325 _display_date_year_10000_38:
      000010                        326 	.ds 1
                                    327 ;--------------------------------------------------------
                                    328 ; overlayable items in internal ram
                                    329 ;--------------------------------------------------------
                                    330 	.area	OSEG    (OVR,DATA)
                                    331 	.area	OSEG    (OVR,DATA)
                                    332 ;--------------------------------------------------------
                                    333 ; Stack segment in internal ram
                                    334 ;--------------------------------------------------------
                                    335 	.area SSEG
      000021                        336 __start__stack:
      000021                        337 	.ds	1
                                    338 
                                    339 ;--------------------------------------------------------
                                    340 ; indirectly addressable internal ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area ISEG    (DATA)
                                    343 ;--------------------------------------------------------
                                    344 ; absolute internal ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area IABS    (ABS,DATA)
                                    347 	.area IABS    (ABS,DATA)
                                    348 ;--------------------------------------------------------
                                    349 ; bit data
                                    350 ;--------------------------------------------------------
                                    351 	.area BSEG    (BIT)
      000000                        352 _i2c_write_sloc0_1_0:
      000000                        353 	.ds 1
      000001                        354 _i2c_read_sloc0_1_0:
      000001                        355 	.ds 1
                                    356 ;--------------------------------------------------------
                                    357 ; paged external ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area PSEG    (PAG,XDATA)
                                    360 ;--------------------------------------------------------
                                    361 ; uninitialized external ram data
                                    362 ;--------------------------------------------------------
                                    363 	.area XSEG    (XDATA)
                                    364 ;--------------------------------------------------------
                                    365 ; absolute external ram data
                                    366 ;--------------------------------------------------------
                                    367 	.area XABS    (ABS,XDATA)
                                    368 ;--------------------------------------------------------
                                    369 ; initialized external ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area XISEG   (XDATA)
                                    372 	.area HOME    (CODE)
                                    373 	.area GSINIT0 (CODE)
                                    374 	.area GSINIT1 (CODE)
                                    375 	.area GSINIT2 (CODE)
                                    376 	.area GSINIT3 (CODE)
                                    377 	.area GSINIT4 (CODE)
                                    378 	.area GSINIT5 (CODE)
                                    379 	.area GSINIT  (CODE)
                                    380 	.area GSFINAL (CODE)
                                    381 	.area CSEG    (CODE)
                                    382 ;--------------------------------------------------------
                                    383 ; interrupt vector
                                    384 ;--------------------------------------------------------
                                    385 	.area HOME    (CODE)
      000000                        386 __interrupt_vect:
      000000 02 00 4C         [24]  387 	ljmp	__sdcc_gsinit_startup
                                    388 ; restartable atomic support routines
      000003                        389 	.ds	5
      000008                        390 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  391 	nop
      000009 00               [12]  392 	nop
      00000A                        393 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  394 	movx	a, @r0
      00000B FB               [12]  395 	mov	r3, a
      00000C EA               [12]  396 	mov	a, r2
      00000D F2               [24]  397 	movx	@r0, a
      00000E 80 2C            [24]  398 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  399 	nop
      000011 00               [12]  400 	nop
      000012                        401 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  402 	movx	a, @dptr
      000013 FB               [12]  403 	mov	r3, a
      000014 EA               [12]  404 	mov	a, r2
      000015 F0               [24]  405 	movx	@dptr, a
      000016 80 24            [24]  406 	sjmp	sdcc_atomic_exchange_exit
      000018                        407 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  408 	mov	a, @r0
      000019 B5 02 02         [24]  409 	cjne	a, ar2, .+#5
      00001C EB               [12]  410 	mov	a, r3
      00001D F6               [12]  411 	mov	@r0, a
      00001E 22               [24]  412 	ret
      00001F 00               [12]  413 	nop
      000020                        414 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  415 	movx	a, @r0
      000021 B5 02 02         [24]  416 	cjne	a, ar2, .+#5
      000024 EB               [12]  417 	mov	a, r3
      000025 F2               [24]  418 	movx	@r0, a
      000026 22               [24]  419 	ret
      000027 00               [12]  420 	nop
      000028                        421 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  422 	movx	a, @dptr
      000029 B5 02 02         [24]  423 	cjne	a, ar2, .+#5
      00002C EB               [12]  424 	mov	a, r3
      00002D F0               [24]  425 	movx	@dptr, a
      00002E 22               [24]  426 	ret
      00002F                        427 sdcc_atomic_exchange_rollback_end::
                                    428 
      00002F                        429 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  430 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  431 	mov	r0, dpl
      000034 20 F5 D3         [24]  432 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        433 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  434 	mov	a, r2
      000038 C6               [12]  435 	xch	a, @r0
      000039 F5 82            [12]  436 	mov	dpl, a
      00003B 22               [24]  437 	ret
      00003C                        438 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  439 	mov	dpl, r3
      00003E 22               [24]  440 	ret
      00003F                        441 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  442 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  443 	mov	r0, dpl
      000044 20 F5 D9         [24]  444 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  445 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    446 ;--------------------------------------------------------
                                    447 ; global & static initialisations
                                    448 ;--------------------------------------------------------
                                    449 	.area HOME    (CODE)
                                    450 	.area GSINIT  (CODE)
                                    451 	.area GSFINAL (CODE)
                                    452 	.area GSINIT  (CODE)
                                    453 	.globl __sdcc_gsinit_startup
                                    454 	.globl __sdcc_program_startup
                                    455 	.globl __start__stack
                                    456 	.globl __mcs51_genXINIT
                                    457 	.globl __mcs51_genXRAMCLEAR
                                    458 	.globl __mcs51_genRAMCLEAR
                                    459 	.area GSFINAL (CODE)
      0000A5 02 00 49         [24]  460 	ljmp	__sdcc_program_startup
                                    461 ;--------------------------------------------------------
                                    462 ; Home
                                    463 ;--------------------------------------------------------
                                    464 	.area HOME    (CODE)
                                    465 	.area HOME    (CODE)
      000049                        466 __sdcc_program_startup:
      000049 02 04 B3         [24]  467 	ljmp	_main
                                    468 ;	return from main will return to caller
                                    469 ;--------------------------------------------------------
                                    470 ; code
                                    471 ;--------------------------------------------------------
                                    472 	.area CSEG    (CODE)
                                    473 ;------------------------------------------------------------
                                    474 ;Allocation info for local variables in function 'delay'
                                    475 ;------------------------------------------------------------
                                    476 ;ms            Allocated to registers r6 r7 
                                    477 ;i             Allocated to registers r4 r5 
                                    478 ;j             Allocated to registers r2 r3 
                                    479 ;------------------------------------------------------------
                                    480 ;	main2.c:27: void delay(unsigned int ms) {
                                    481 ;	-----------------------------------------
                                    482 ;	 function delay
                                    483 ;	-----------------------------------------
      0000A8                        484 _delay:
                           000007   485 	ar7 = 0x07
                           000006   486 	ar6 = 0x06
                           000005   487 	ar5 = 0x05
                           000004   488 	ar4 = 0x04
                           000003   489 	ar3 = 0x03
                           000002   490 	ar2 = 0x02
                           000001   491 	ar1 = 0x01
                           000000   492 	ar0 = 0x00
      0000A8 AE 82            [24]  493 	mov	r6, dpl
      0000AA AF 83            [24]  494 	mov	r7, dph
                                    495 ;	main2.c:29: for (i = 0; i < ms; i++)
      0000AC 7C 00            [12]  496 	mov	r4,#0x00
      0000AE 7D 00            [12]  497 	mov	r5,#0x00
      0000B0                        498 00107$:
      0000B0 C3               [12]  499 	clr	c
      0000B1 EC               [12]  500 	mov	a,r4
      0000B2 9E               [12]  501 	subb	a,r6
      0000B3 ED               [12]  502 	mov	a,r5
      0000B4 9F               [12]  503 	subb	a,r7
      0000B5 50 14            [24]  504 	jnc	00109$
                                    505 ;	main2.c:30: for (j = 0; j < 1275; j++);
      0000B7 7A FB            [12]  506 	mov	r2,#0xfb
      0000B9 7B 04            [12]  507 	mov	r3,#0x04
      0000BB                        508 00105$:
      0000BB 1A               [12]  509 	dec	r2
      0000BC BA FF 01         [24]  510 	cjne	r2,#0xff,00138$
      0000BF 1B               [12]  511 	dec	r3
      0000C0                        512 00138$:
      0000C0 EA               [12]  513 	mov	a,r2
      0000C1 4B               [12]  514 	orl	a,r3
      0000C2 70 F7            [24]  515 	jnz	00105$
                                    516 ;	main2.c:29: for (i = 0; i < ms; i++)
      0000C4 0C               [12]  517 	inc	r4
      0000C5 BC 00 E8         [24]  518 	cjne	r4,#0x00,00107$
      0000C8 0D               [12]  519 	inc	r5
      0000C9 80 E5            [24]  520 	sjmp	00107$
      0000CB                        521 00109$:
                                    522 ;	main2.c:31: }
      0000CB 22               [24]  523 	ret
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'lcd_cmd'
                                    526 ;------------------------------------------------------------
                                    527 ;cmd           Allocated to registers r7 
                                    528 ;------------------------------------------------------------
                                    529 ;	main2.c:34: void lcd_cmd(unsigned char cmd) {
                                    530 ;	-----------------------------------------
                                    531 ;	 function lcd_cmd
                                    532 ;	-----------------------------------------
      0000CC                        533 _lcd_cmd:
      0000CC AF 82            [24]  534 	mov	r7, dpl
                                    535 ;	main2.c:35: RS = 0;
                                    536 ;	assignBit
      0000CE C2 B0            [12]  537 	clr	_RS
                                    538 ;	main2.c:36: P0 = cmd;
      0000D0 8F 80            [24]  539 	mov	_P0,r7
                                    540 ;	main2.c:37: EN = 1; delay(1); EN = 0; delay(2);
                                    541 ;	assignBit
      0000D2 D2 B1            [12]  542 	setb	_EN
      0000D4 90 00 01         [24]  543 	mov	dptr,#0x0001
      0000D7 12 00 A8         [24]  544 	lcall	_delay
                                    545 ;	assignBit
      0000DA C2 B1            [12]  546 	clr	_EN
      0000DC 90 00 02         [24]  547 	mov	dptr,#0x0002
                                    548 ;	main2.c:38: }
      0000DF 02 00 A8         [24]  549 	ljmp	_delay
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'lcd_data'
                                    552 ;------------------------------------------------------------
                                    553 ;data          Allocated to registers r7 
                                    554 ;------------------------------------------------------------
                                    555 ;	main2.c:40: void lcd_data(unsigned char data) {
                                    556 ;	-----------------------------------------
                                    557 ;	 function lcd_data
                                    558 ;	-----------------------------------------
      0000E2                        559 _lcd_data:
      0000E2 AF 82            [24]  560 	mov	r7, dpl
                                    561 ;	main2.c:41: RS = 1;
                                    562 ;	assignBit
      0000E4 D2 B0            [12]  563 	setb	_RS
                                    564 ;	main2.c:42: P0 = data;
      0000E6 8F 80            [24]  565 	mov	_P0,r7
                                    566 ;	main2.c:43: EN = 1; delay(1); EN = 0; delay(2);
                                    567 ;	assignBit
      0000E8 D2 B1            [12]  568 	setb	_EN
      0000EA 90 00 01         [24]  569 	mov	dptr,#0x0001
      0000ED 12 00 A8         [24]  570 	lcall	_delay
                                    571 ;	assignBit
      0000F0 C2 B1            [12]  572 	clr	_EN
      0000F2 90 00 02         [24]  573 	mov	dptr,#0x0002
                                    574 ;	main2.c:44: }
      0000F5 02 00 A8         [24]  575 	ljmp	_delay
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'lcd_init'
                                    578 ;------------------------------------------------------------
                                    579 ;	main2.c:46: void lcd_init(void) {
                                    580 ;	-----------------------------------------
                                    581 ;	 function lcd_init
                                    582 ;	-----------------------------------------
      0000F8                        583 _lcd_init:
                                    584 ;	main2.c:47: delay(20);
      0000F8 90 00 14         [24]  585 	mov	dptr,#0x0014
      0000FB 12 00 A8         [24]  586 	lcall	_delay
                                    587 ;	main2.c:48: lcd_cmd(0x38);
      0000FE 75 82 38         [24]  588 	mov	dpl, #0x38
      000101 12 00 CC         [24]  589 	lcall	_lcd_cmd
                                    590 ;	main2.c:49: lcd_cmd(0x0C);
      000104 75 82 0C         [24]  591 	mov	dpl, #0x0c
      000107 12 00 CC         [24]  592 	lcall	_lcd_cmd
                                    593 ;	main2.c:50: lcd_cmd(0x06);
      00010A 75 82 06         [24]  594 	mov	dpl, #0x06
      00010D 12 00 CC         [24]  595 	lcall	_lcd_cmd
                                    596 ;	main2.c:51: lcd_cmd(0x01);
      000110 75 82 01         [24]  597 	mov	dpl, #0x01
      000113 12 00 CC         [24]  598 	lcall	_lcd_cmd
                                    599 ;	main2.c:52: delay(2);
      000116 90 00 02         [24]  600 	mov	dptr,#0x0002
                                    601 ;	main2.c:53: }
      000119 02 00 A8         [24]  602 	ljmp	_delay
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'lcd_print'
                                    605 ;------------------------------------------------------------
                                    606 ;str           Allocated to registers 
                                    607 ;------------------------------------------------------------
                                    608 ;	main2.c:55: void lcd_print(char *str) {
                                    609 ;	-----------------------------------------
                                    610 ;	 function lcd_print
                                    611 ;	-----------------------------------------
      00011C                        612 _lcd_print:
      00011C AD 82            [24]  613 	mov	r5, dpl
      00011E AE 83            [24]  614 	mov	r6, dph
      000120 AF F0            [24]  615 	mov	r7, b
                                    616 ;	main2.c:56: while (*str) {
      000122                        617 00101$:
      000122 8D 82            [24]  618 	mov	dpl,r5
      000124 8E 83            [24]  619 	mov	dph,r6
      000126 8F F0            [24]  620 	mov	b,r7
      000128 12 05 A1         [24]  621 	lcall	__gptrget
      00012B FC               [12]  622 	mov	r4,a
      00012C 60 18            [24]  623 	jz	00104$
                                    624 ;	main2.c:57: lcd_data(*str++);
      00012E 8C 82            [24]  625 	mov	dpl,r4
      000130 0D               [12]  626 	inc	r5
      000131 BD 00 01         [24]  627 	cjne	r5,#0x00,00120$
      000134 0E               [12]  628 	inc	r6
      000135                        629 00120$:
      000135 C0 07            [24]  630 	push	ar7
      000137 C0 06            [24]  631 	push	ar6
      000139 C0 05            [24]  632 	push	ar5
      00013B 12 00 E2         [24]  633 	lcall	_lcd_data
      00013E D0 05            [24]  634 	pop	ar5
      000140 D0 06            [24]  635 	pop	ar6
      000142 D0 07            [24]  636 	pop	ar7
      000144 80 DC            [24]  637 	sjmp	00101$
      000146                        638 00104$:
                                    639 ;	main2.c:59: }
      000146 22               [24]  640 	ret
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'i2c_start'
                                    643 ;------------------------------------------------------------
                                    644 ;	main2.c:62: void i2c_start() {
                                    645 ;	-----------------------------------------
                                    646 ;	 function i2c_start
                                    647 ;	-----------------------------------------
      000147                        648 _i2c_start:
                                    649 ;	main2.c:63: SDA = 1; SCL = 1; delay(1);
                                    650 ;	assignBit
      000147 D2 96            [12]  651 	setb	_SDA
                                    652 ;	assignBit
      000149 D2 97            [12]  653 	setb	_SCL
      00014B 90 00 01         [24]  654 	mov	dptr,#0x0001
      00014E 12 00 A8         [24]  655 	lcall	_delay
                                    656 ;	main2.c:64: SDA = 0; delay(1); SCL = 0;
                                    657 ;	assignBit
      000151 C2 96            [12]  658 	clr	_SDA
      000153 90 00 01         [24]  659 	mov	dptr,#0x0001
      000156 12 00 A8         [24]  660 	lcall	_delay
                                    661 ;	assignBit
      000159 C2 97            [12]  662 	clr	_SCL
                                    663 ;	main2.c:65: }
      00015B 22               [24]  664 	ret
                                    665 ;------------------------------------------------------------
                                    666 ;Allocation info for local variables in function 'i2c_stop'
                                    667 ;------------------------------------------------------------
                                    668 ;	main2.c:67: void i2c_stop() {
                                    669 ;	-----------------------------------------
                                    670 ;	 function i2c_stop
                                    671 ;	-----------------------------------------
      00015C                        672 _i2c_stop:
                                    673 ;	main2.c:68: SDA = 0; SCL = 1; delay(1);
                                    674 ;	assignBit
      00015C C2 96            [12]  675 	clr	_SDA
                                    676 ;	assignBit
      00015E D2 97            [12]  677 	setb	_SCL
      000160 90 00 01         [24]  678 	mov	dptr,#0x0001
      000163 12 00 A8         [24]  679 	lcall	_delay
                                    680 ;	main2.c:69: SDA = 1; delay(1);
                                    681 ;	assignBit
      000166 D2 96            [12]  682 	setb	_SDA
      000168 90 00 01         [24]  683 	mov	dptr,#0x0001
                                    684 ;	main2.c:70: }
      00016B 02 00 A8         [24]  685 	ljmp	_delay
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'i2c_write'
                                    688 ;------------------------------------------------------------
                                    689 ;dat           Allocated to registers r7 
                                    690 ;i             Allocated to registers r6 
                                    691 ;ack           Allocated to registers 
                                    692 ;------------------------------------------------------------
                                    693 ;	main2.c:72: unsigned char i2c_write(unsigned char dat) {
                                    694 ;	-----------------------------------------
                                    695 ;	 function i2c_write
                                    696 ;	-----------------------------------------
      00016E                        697 _i2c_write:
      00016E AF 82            [24]  698 	mov	r7, dpl
                                    699 ;	main2.c:74: for (i = 0; i < 8; i++) {
      000170 7E 00            [12]  700 	mov	r6,#0x00
      000172                        701 00102$:
                                    702 ;	main2.c:75: SDA = (dat & 0x80) ? 1 : 0;
      000172 8F 05            [24]  703 	mov	ar5,r7
      000174 53 05 80         [24]  704 	anl	ar5,#0x80
                                    705 ;	assignBit
      000177 ED               [12]  706 	mov	a,r5
      000178 24 FF            [12]  707 	add	a,#0xff
      00017A 92 96            [24]  708 	mov	_SDA,c
                                    709 ;	main2.c:76: SCL = 1; delay(1);
                                    710 ;	assignBit
      00017C D2 97            [12]  711 	setb	_SCL
      00017E 90 00 01         [24]  712 	mov	dptr,#0x0001
      000181 C0 07            [24]  713 	push	ar7
      000183 C0 06            [24]  714 	push	ar6
      000185 12 00 A8         [24]  715 	lcall	_delay
                                    716 ;	main2.c:77: SCL = 0; delay(1);
                                    717 ;	assignBit
      000188 C2 97            [12]  718 	clr	_SCL
      00018A 90 00 01         [24]  719 	mov	dptr,#0x0001
      00018D 12 00 A8         [24]  720 	lcall	_delay
      000190 D0 06            [24]  721 	pop	ar6
      000192 D0 07            [24]  722 	pop	ar7
                                    723 ;	main2.c:78: dat <<= 1;
      000194 EF               [12]  724 	mov	a,r7
      000195 2F               [12]  725 	add	a,r7
      000196 FF               [12]  726 	mov	r7,a
                                    727 ;	main2.c:74: for (i = 0; i < 8; i++) {
      000197 0E               [12]  728 	inc	r6
      000198 BE 08 00         [24]  729 	cjne	r6,#0x08,00119$
      00019B                        730 00119$:
      00019B 40 D5            [24]  731 	jc	00102$
                                    732 ;	main2.c:80: SDA = 1; SCL = 1; delay(1);
                                    733 ;	assignBit
      00019D D2 96            [12]  734 	setb	_SDA
                                    735 ;	assignBit
      00019F D2 97            [12]  736 	setb	_SCL
      0001A1 90 00 01         [24]  737 	mov	dptr,#0x0001
      0001A4 12 00 A8         [24]  738 	lcall	_delay
                                    739 ;	main2.c:81: unsigned char ack = !SDA;
      0001A7 A2 96            [12]  740 	mov	c,_SDA
      0001A9 B3               [12]  741 	cpl	c
      0001AA 92 00            [24]  742 	mov  _i2c_write_sloc0_1_0,c
      0001AC E4               [12]  743 	clr	a
      0001AD 33               [12]  744 	rlc	a
      0001AE F5 82            [12]  745 	mov	dpl,a
                                    746 ;	main2.c:82: SCL = 0;
                                    747 ;	assignBit
      0001B0 C2 97            [12]  748 	clr	_SCL
                                    749 ;	main2.c:83: return ack;
                                    750 ;	main2.c:84: }
      0001B2 22               [24]  751 	ret
                                    752 ;------------------------------------------------------------
                                    753 ;Allocation info for local variables in function 'i2c_read'
                                    754 ;------------------------------------------------------------
                                    755 ;ack           Allocated to registers r7 
                                    756 ;i             Allocated to registers r5 
                                    757 ;dat           Allocated to registers r6 
                                    758 ;------------------------------------------------------------
                                    759 ;	main2.c:86: unsigned char i2c_read(unsigned char ack) {
                                    760 ;	-----------------------------------------
                                    761 ;	 function i2c_read
                                    762 ;	-----------------------------------------
      0001B3                        763 _i2c_read:
      0001B3 AF 82            [24]  764 	mov	r7, dpl
                                    765 ;	main2.c:87: unsigned char i, dat = 0;
      0001B5 7E 00            [12]  766 	mov	r6,#0x00
                                    767 ;	main2.c:88: SDA = 1;
                                    768 ;	assignBit
      0001B7 D2 96            [12]  769 	setb	_SDA
                                    770 ;	main2.c:89: for (i = 0; i < 8; i++) {
      0001B9 7D 00            [12]  771 	mov	r5,#0x00
      0001BB                        772 00102$:
                                    773 ;	main2.c:90: SCL = 1;
                                    774 ;	assignBit
      0001BB D2 97            [12]  775 	setb	_SCL
                                    776 ;	main2.c:91: dat = (dat << 1) | SDA;
      0001BD EE               [12]  777 	mov	a,r6
      0001BE 2E               [12]  778 	add	a,r6
      0001BF FC               [12]  779 	mov	r4,a
      0001C0 A2 96            [12]  780 	mov	c,_SDA
      0001C2 E4               [12]  781 	clr	a
      0001C3 33               [12]  782 	rlc	a
      0001C4 4C               [12]  783 	orl	a,r4
      0001C5 FE               [12]  784 	mov	r6,a
                                    785 ;	main2.c:92: SCL = 0;
                                    786 ;	assignBit
      0001C6 C2 97            [12]  787 	clr	_SCL
                                    788 ;	main2.c:89: for (i = 0; i < 8; i++) {
      0001C8 0D               [12]  789 	inc	r5
      0001C9 BD 08 00         [24]  790 	cjne	r5,#0x08,00119$
      0001CC                        791 00119$:
      0001CC 40 ED            [24]  792 	jc	00102$
                                    793 ;	main2.c:94: SDA = !ack;
      0001CE EF               [12]  794 	mov	a,r7
      0001CF B4 01 00         [24]  795 	cjne	a,#0x01,00121$
      0001D2                        796 00121$:
      0001D2 92 01            [24]  797 	mov  _i2c_read_sloc0_1_0,c
      0001D4 E4               [12]  798 	clr	a
      0001D5 33               [12]  799 	rlc	a
      0001D6 24 FF            [12]  800 	add	a,#0xff
      0001D8 92 96            [24]  801 	mov	_SDA,c
                                    802 ;	main2.c:95: SCL = 1; delay(1);
                                    803 ;	assignBit
      0001DA D2 97            [12]  804 	setb	_SCL
      0001DC 90 00 01         [24]  805 	mov	dptr,#0x0001
      0001DF C0 06            [24]  806 	push	ar6
      0001E1 12 00 A8         [24]  807 	lcall	_delay
      0001E4 D0 06            [24]  808 	pop	ar6
                                    809 ;	main2.c:96: SCL = 0;
                                    810 ;	assignBit
      0001E6 C2 97            [12]  811 	clr	_SCL
                                    812 ;	main2.c:97: SDA = 1;
                                    813 ;	assignBit
      0001E8 D2 96            [12]  814 	setb	_SDA
                                    815 ;	main2.c:98: return dat;
      0001EA 8E 82            [24]  816 	mov	dpl, r6
                                    817 ;	main2.c:99: }
      0001EC 22               [24]  818 	ret
                                    819 ;------------------------------------------------------------
                                    820 ;Allocation info for local variables in function 'bcd_to_decimal'
                                    821 ;------------------------------------------------------------
                                    822 ;bcd           Allocated to registers r7 
                                    823 ;------------------------------------------------------------
                                    824 ;	main2.c:102: unsigned char bcd_to_decimal(unsigned char bcd) {
                                    825 ;	-----------------------------------------
                                    826 ;	 function bcd_to_decimal
                                    827 ;	-----------------------------------------
      0001ED                        828 _bcd_to_decimal:
                                    829 ;	main2.c:103: return ((bcd >> 4) * 10) + (bcd & 0x0F);
      0001ED E5 82            [12]  830 	mov	a,dpl
      0001EF FF               [12]  831 	mov	r7,a
      0001F0 C4               [12]  832 	swap	a
      0001F1 54 0F            [12]  833 	anl	a,#0x0f
      0001F3 75 F0 0A         [24]  834 	mov	b,#0x0a
      0001F6 A4               [48]  835 	mul	ab
      0001F7 FE               [12]  836 	mov	r6,a
      0001F8 74 0F            [12]  837 	mov	a,#0x0f
      0001FA 5F               [12]  838 	anl	a,r7
      0001FB 2E               [12]  839 	add	a, r6
      0001FC F5 82            [12]  840 	mov	dpl,a
                                    841 ;	main2.c:104: }
      0001FE 22               [24]  842 	ret
                                    843 ;------------------------------------------------------------
                                    844 ;Allocation info for local variables in function 'rtc_get_date'
                                    845 ;------------------------------------------------------------
                                    846 ;month         Allocated with name '_rtc_get_date_PARM_2'
                                    847 ;year          Allocated with name '_rtc_get_date_PARM_3'
                                    848 ;day           Allocated to registers r5 r6 r7 
                                    849 ;------------------------------------------------------------
                                    850 ;	main2.c:107: void rtc_get_date(unsigned char *day, unsigned char *month, unsigned char *year) {
                                    851 ;	-----------------------------------------
                                    852 ;	 function rtc_get_date
                                    853 ;	-----------------------------------------
      0001FF                        854 _rtc_get_date:
      0001FF AD 82            [24]  855 	mov	r5, dpl
      000201 AE 83            [24]  856 	mov	r6, dph
      000203 AF F0            [24]  857 	mov	r7, b
                                    858 ;	main2.c:108: i2c_start();
      000205 C0 07            [24]  859 	push	ar7
      000207 C0 06            [24]  860 	push	ar6
      000209 C0 05            [24]  861 	push	ar5
      00020B 12 01 47         [24]  862 	lcall	_i2c_start
                                    863 ;	main2.c:109: i2c_write(0xD0);      // DS1307 write address
      00020E 75 82 D0         [24]  864 	mov	dpl, #0xd0
      000211 12 01 6E         [24]  865 	lcall	_i2c_write
                                    866 ;	main2.c:110: i2c_write(0x04);      // Point to date register
      000214 75 82 04         [24]  867 	mov	dpl, #0x04
      000217 12 01 6E         [24]  868 	lcall	_i2c_write
                                    869 ;	main2.c:111: i2c_stop();
      00021A 12 01 5C         [24]  870 	lcall	_i2c_stop
                                    871 ;	main2.c:113: i2c_start();
      00021D 12 01 47         [24]  872 	lcall	_i2c_start
                                    873 ;	main2.c:114: i2c_write(0xD1);      // DS1307 read address
      000220 75 82 D1         [24]  874 	mov	dpl, #0xd1
      000223 12 01 6E         [24]  875 	lcall	_i2c_write
                                    876 ;	main2.c:115: *day = bcd_to_decimal(i2c_read(1));
      000226 75 82 01         [24]  877 	mov	dpl, #0x01
      000229 12 01 B3         [24]  878 	lcall	_i2c_read
      00022C 12 01 ED         [24]  879 	lcall	_bcd_to_decimal
      00022F AC 82            [24]  880 	mov	r4, dpl
      000231 D0 05            [24]  881 	pop	ar5
      000233 D0 06            [24]  882 	pop	ar6
      000235 D0 07            [24]  883 	pop	ar7
      000237 8D 82            [24]  884 	mov	dpl,r5
      000239 8E 83            [24]  885 	mov	dph,r6
      00023B 8F F0            [24]  886 	mov	b,r7
      00023D EC               [12]  887 	mov	a,r4
      00023E 12 04 F3         [24]  888 	lcall	__gptrput
                                    889 ;	main2.c:116: *month = bcd_to_decimal(i2c_read(1));
      000241 AD 08            [24]  890 	mov	r5,_rtc_get_date_PARM_2
      000243 AE 09            [24]  891 	mov	r6,(_rtc_get_date_PARM_2 + 1)
      000245 AF 0A            [24]  892 	mov	r7,(_rtc_get_date_PARM_2 + 2)
      000247 75 82 01         [24]  893 	mov	dpl, #0x01
      00024A C0 07            [24]  894 	push	ar7
      00024C C0 06            [24]  895 	push	ar6
      00024E C0 05            [24]  896 	push	ar5
      000250 12 01 B3         [24]  897 	lcall	_i2c_read
      000253 12 01 ED         [24]  898 	lcall	_bcd_to_decimal
      000256 AC 82            [24]  899 	mov	r4, dpl
      000258 D0 05            [24]  900 	pop	ar5
      00025A D0 06            [24]  901 	pop	ar6
      00025C D0 07            [24]  902 	pop	ar7
      00025E 8D 82            [24]  903 	mov	dpl,r5
      000260 8E 83            [24]  904 	mov	dph,r6
      000262 8F F0            [24]  905 	mov	b,r7
      000264 EC               [12]  906 	mov	a,r4
      000265 12 04 F3         [24]  907 	lcall	__gptrput
                                    908 ;	main2.c:117: *year = bcd_to_decimal(i2c_read(0));
      000268 AD 0B            [24]  909 	mov	r5,_rtc_get_date_PARM_3
      00026A AE 0C            [24]  910 	mov	r6,(_rtc_get_date_PARM_3 + 1)
      00026C AF 0D            [24]  911 	mov	r7,(_rtc_get_date_PARM_3 + 2)
      00026E 75 82 00         [24]  912 	mov	dpl, #0x00
      000271 C0 07            [24]  913 	push	ar7
      000273 C0 06            [24]  914 	push	ar6
      000275 C0 05            [24]  915 	push	ar5
      000277 12 01 B3         [24]  916 	lcall	_i2c_read
      00027A 12 01 ED         [24]  917 	lcall	_bcd_to_decimal
      00027D AC 82            [24]  918 	mov	r4, dpl
      00027F D0 05            [24]  919 	pop	ar5
      000281 D0 06            [24]  920 	pop	ar6
      000283 D0 07            [24]  921 	pop	ar7
      000285 8D 82            [24]  922 	mov	dpl,r5
      000287 8E 83            [24]  923 	mov	dph,r6
      000289 8F F0            [24]  924 	mov	b,r7
      00028B EC               [12]  925 	mov	a,r4
      00028C 12 04 F3         [24]  926 	lcall	__gptrput
                                    927 ;	main2.c:118: i2c_stop();
                                    928 ;	main2.c:119: }
      00028F 02 01 5C         [24]  929 	ljmp	_i2c_stop
                                    930 ;------------------------------------------------------------
                                    931 ;Allocation info for local variables in function 'adc_read'
                                    932 ;------------------------------------------------------------
                                    933 ;adc_value     Allocated to registers 
                                    934 ;------------------------------------------------------------
                                    935 ;	main2.c:122: unsigned char adc_read(void) {
                                    936 ;	-----------------------------------------
                                    937 ;	 function adc_read
                                    938 ;	-----------------------------------------
      000292                        939 _adc_read:
                                    940 ;	main2.c:124: ALE = 1; delay(1); ALE = 0;
                                    941 ;	assignBit
      000292 D2 A2            [12]  942 	setb	_ALE
      000294 90 00 01         [24]  943 	mov	dptr,#0x0001
      000297 12 00 A8         [24]  944 	lcall	_delay
                                    945 ;	assignBit
      00029A C2 A2            [12]  946 	clr	_ALE
                                    947 ;	main2.c:125: START = 1; delay(1); START = 0;
                                    948 ;	assignBit
      00029C D2 A0            [12]  949 	setb	_START
      00029E 90 00 01         [24]  950 	mov	dptr,#0x0001
      0002A1 12 00 A8         [24]  951 	lcall	_delay
                                    952 ;	assignBit
      0002A4 C2 A0            [12]  953 	clr	_START
                                    954 ;	main2.c:126: while (EOC);
      0002A6                        955 00101$:
      0002A6 20 A1 FD         [24]  956 	jb	_EOC,00101$
                                    957 ;	main2.c:127: OE = 1;
                                    958 ;	assignBit
      0002A9 D2 A3            [12]  959 	setb	_OE
                                    960 ;	main2.c:128: adc_value = P1;
      0002AB 85 90 82         [24]  961 	mov	dpl,_P1
                                    962 ;	main2.c:129: OE = 0;
                                    963 ;	assignBit
      0002AE C2 A3            [12]  964 	clr	_OE
                                    965 ;	main2.c:130: return adc_value;
                                    966 ;	main2.c:131: }
      0002B0 22               [24]  967 	ret
                                    968 ;------------------------------------------------------------
                                    969 ;Allocation info for local variables in function 'display_ph_value'
                                    970 ;------------------------------------------------------------
                                    971 ;adc_val       Allocated to registers 
                                    972 ;ph_scaled     Allocated to registers r6 r7 
                                    973 ;int_part      Allocated to registers r4 
                                    974 ;dec1          Allocated to registers r3 
                                    975 ;dec2          Allocated to registers r2 
                                    976 ;------------------------------------------------------------
                                    977 ;	main2.c:134: void display_ph_value(void) {
                                    978 ;	-----------------------------------------
                                    979 ;	 function display_ph_value
                                    980 ;	-----------------------------------------
      0002B1                        981 _display_ph_value:
                                    982 ;	main2.c:135: unsigned char adc_val = adc_read();
      0002B1 12 02 92         [24]  983 	lcall	_adc_read
      0002B4 AF 82            [24]  984 	mov	r7, dpl
                                    985 ;	main2.c:136: int ph_scaled = ((adc_val - 130) * 1600) / 125 + 700;
      0002B6 7E 00            [12]  986 	mov	r6,#0x00
      0002B8 EF               [12]  987 	mov	a,r7
      0002B9 24 7E            [12]  988 	add	a,#0x7e
      0002BB F5 11            [12]  989 	mov	__mulint_PARM_2,a
      0002BD EE               [12]  990 	mov	a,r6
      0002BE 34 FF            [12]  991 	addc	a,#0xff
      0002C0 F5 12            [12]  992 	mov	(__mulint_PARM_2 + 1),a
      0002C2 90 06 40         [24]  993 	mov	dptr,#0x0640
      0002C5 12 05 0E         [24]  994 	lcall	__mulint
      0002C8 75 11 7D         [24]  995 	mov	__divsint_PARM_2,#0x7d
      0002CB 75 12 00         [24]  996 	mov	(__divsint_PARM_2 + 1),#0x00
      0002CE 12 05 F3         [24]  997 	lcall	__divsint
      0002D1 E5 82            [12]  998 	mov	a, dpl
      0002D3 85 83 F0         [24]  999 	mov	b, dph
      0002D6 24 BC            [12] 1000 	add	a, #0xbc
      0002D8 FE               [12] 1001 	mov	r6,a
      0002D9 74 02            [12] 1002 	mov	a,#0x02
      0002DB 35 F0            [12] 1003 	addc	a, b
                                   1004 ;	main2.c:138: if (ph_scaled < 0) ph_scaled = 0;
      0002DD FF               [12] 1005 	mov	r7,a
      0002DE 30 E7 04         [24] 1006 	jnb	acc.7,00104$
      0002E1 7E 00            [12] 1007 	mov	r6,#0x00
      0002E3 7F 00            [12] 1008 	mov	r7,#0x00
                                   1009 ;	main2.c:139: if (ph_scaled > 1400) ph_scaled = 1400;
      0002E5                       1010 00104$:
                                   1011 ;	main2.c:141: unsigned char int_part = ph_scaled / 100;
      0002E5 75 11 64         [24] 1012 	mov	__divsint_PARM_2,#0x64
      0002E8 75 12 00         [24] 1013 	mov	(__divsint_PARM_2 + 1),#0x00
      0002EB 8E 82            [24] 1014 	mov	dpl, r6
      0002ED 8F 83            [24] 1015 	mov	dph, r7
      0002EF C0 07            [24] 1016 	push	ar7
      0002F1 C0 06            [24] 1017 	push	ar6
      0002F3 12 05 F3         [24] 1018 	lcall	__divsint
      0002F6 AC 82            [24] 1019 	mov	r4, dpl
      0002F8 D0 06            [24] 1020 	pop	ar6
      0002FA D0 07            [24] 1021 	pop	ar7
                                   1022 ;	main2.c:142: unsigned char dec1 = (ph_scaled / 10) % 10;
      0002FC 75 11 0A         [24] 1023 	mov	__divsint_PARM_2,#0x0a
      0002FF 75 12 00         [24] 1024 	mov	(__divsint_PARM_2 + 1),#0x00
      000302 8E 82            [24] 1025 	mov	dpl, r6
      000304 8F 83            [24] 1026 	mov	dph, r7
      000306 C0 07            [24] 1027 	push	ar7
      000308 C0 06            [24] 1028 	push	ar6
      00030A C0 04            [24] 1029 	push	ar4
      00030C 12 05 F3         [24] 1030 	lcall	__divsint
      00030F AB 82            [24] 1031 	mov	r3, dpl
      000311 D0 04            [24] 1032 	pop	ar4
      000313 D0 06            [24] 1033 	pop	ar6
      000315 D0 07            [24] 1034 	pop	ar7
      000317 75 F0 0A         [24] 1035 	mov	b,#0x0a
      00031A EB               [12] 1036 	mov	a,r3
      00031B 84               [48] 1037 	div	ab
      00031C AB F0            [24] 1038 	mov	r3,b
                                   1039 ;	main2.c:143: unsigned char dec2 = ph_scaled % 10;
      00031E 75 11 0A         [24] 1040 	mov	__modsint_PARM_2,#0x0a
      000321 75 12 00         [24] 1041 	mov	(__modsint_PARM_2 + 1),#0x00
      000324 8E 82            [24] 1042 	mov	dpl, r6
      000326 8F 83            [24] 1043 	mov	dph, r7
      000328 C0 07            [24] 1044 	push	ar7
      00032A C0 06            [24] 1045 	push	ar6
      00032C C0 04            [24] 1046 	push	ar4
      00032E C0 03            [24] 1047 	push	ar3
      000330 12 05 BD         [24] 1048 	lcall	__modsint
      000333 AA 82            [24] 1049 	mov	r2, dpl
                                   1050 ;	main2.c:145: lcd_cmd(0x01);
      000335 75 82 01         [24] 1051 	mov	dpl, #0x01
      000338 C0 02            [24] 1052 	push	ar2
      00033A 12 00 CC         [24] 1053 	lcall	_lcd_cmd
                                   1054 ;	main2.c:146: lcd_cmd(0x80); lcd_print("WATER QUALITY");
      00033D 75 82 80         [24] 1055 	mov	dpl, #0x80
      000340 12 00 CC         [24] 1056 	lcall	_lcd_cmd
      000343 90 06 2F         [24] 1057 	mov	dptr,#___str_0
      000346 75 F0 80         [24] 1058 	mov	b, #0x80
      000349 12 01 1C         [24] 1059 	lcall	_lcd_print
                                   1060 ;	main2.c:147: lcd_cmd(0xC0); lcd_print("pH:");
      00034C 75 82 C0         [24] 1061 	mov	dpl, #0xc0
      00034F 12 00 CC         [24] 1062 	lcall	_lcd_cmd
      000352 90 06 3D         [24] 1063 	mov	dptr,#___str_1
      000355 75 F0 80         [24] 1064 	mov	b, #0x80
      000358 12 01 1C         [24] 1065 	lcall	_lcd_print
      00035B D0 02            [24] 1066 	pop	ar2
      00035D D0 03            [24] 1067 	pop	ar3
      00035F D0 04            [24] 1068 	pop	ar4
                                   1069 ;	main2.c:148: lcd_data(int_part + '0');
      000361 74 30            [12] 1070 	mov	a,#0x30
      000363 2C               [12] 1071 	add	a, r4
      000364 F5 82            [12] 1072 	mov	dpl,a
      000366 C0 03            [24] 1073 	push	ar3
      000368 C0 02            [24] 1074 	push	ar2
      00036A 12 00 E2         [24] 1075 	lcall	_lcd_data
                                   1076 ;	main2.c:149: lcd_data('.');
      00036D 75 82 2E         [24] 1077 	mov	dpl, #0x2e
      000370 12 00 E2         [24] 1078 	lcall	_lcd_data
      000373 D0 02            [24] 1079 	pop	ar2
      000375 D0 03            [24] 1080 	pop	ar3
                                   1081 ;	main2.c:150: lcd_data(dec1 + '0');
      000377 74 30            [12] 1082 	mov	a,#0x30
      000379 2B               [12] 1083 	add	a, r3
      00037A F5 82            [12] 1084 	mov	dpl,a
      00037C C0 02            [24] 1085 	push	ar2
      00037E 12 00 E2         [24] 1086 	lcall	_lcd_data
      000381 D0 02            [24] 1087 	pop	ar2
                                   1088 ;	main2.c:151: lcd_data(dec2 + '0');
      000383 74 30            [12] 1089 	mov	a,#0x30
      000385 2A               [12] 1090 	add	a, r2
      000386 F5 82            [12] 1091 	mov	dpl,a
      000388 12 00 E2         [24] 1092 	lcall	_lcd_data
                                   1093 ;	main2.c:152: lcd_print(" ");
      00038B 90 06 41         [24] 1094 	mov	dptr,#___str_2
      00038E 75 F0 80         [24] 1095 	mov	b, #0x80
      000391 12 01 1C         [24] 1096 	lcall	_lcd_print
      000394 D0 06            [24] 1097 	pop	ar6
      000396 D0 07            [24] 1098 	pop	ar7
                                   1099 ;	main2.c:154: if (ph_scaled >= 650 && ph_scaled <= 850) {
      000398 C3               [12] 1100 	clr	c
      000399 EE               [12] 1101 	mov	a,r6
      00039A 94 8A            [12] 1102 	subb	a,#0x8a
      00039C EF               [12] 1103 	mov	a,r7
      00039D 64 80            [12] 1104 	xrl	a,#0x80
      00039F 94 82            [12] 1105 	subb	a,#0x82
      0003A1 40 1E            [24] 1106 	jc	00112$
      0003A3 74 52            [12] 1107 	mov	a,#0x52
      0003A5 9E               [12] 1108 	subb	a,r6
      0003A6 74 83            [12] 1109 	mov	a,#(0x03 ^ 0x80)
      0003A8 8F F0            [24] 1110 	mov	b,r7
      0003AA 63 F0 80         [24] 1111 	xrl	b,#0x80
      0003AD 95 F0            [12] 1112 	subb	a,b
      0003AF 40 10            [24] 1113 	jc	00112$
                                   1114 ;	main2.c:155: lcd_print("Good");
      0003B1 90 06 43         [24] 1115 	mov	dptr,#___str_3
      0003B4 75 F0 80         [24] 1116 	mov	b, #0x80
      0003B7 12 01 1C         [24] 1117 	lcall	_lcd_print
                                   1118 ;	main2.c:156: LED_GOOD = 0; LED_NEUTRAL = 1; LED_POOR = 1;
                                   1119 ;	assignBit
      0003BA C2 B2            [12] 1120 	clr	_LED_GOOD
                                   1121 ;	assignBit
      0003BC D2 B3            [12] 1122 	setb	_LED_NEUTRAL
                                   1123 ;	assignBit
      0003BE D2 B5            [12] 1124 	setb	_LED_POOR
      0003C0 22               [24] 1125 	ret
      0003C1                       1126 00112$:
                                   1127 ;	main2.c:157: } else if ((ph_scaled >= 450 && ph_scaled < 650) || (ph_scaled > 850 && ph_scaled <= 900)) {
      0003C1 C3               [12] 1128 	clr	c
      0003C2 EE               [12] 1129 	mov	a,r6
      0003C3 94 C2            [12] 1130 	subb	a,#0xc2
      0003C5 EF               [12] 1131 	mov	a,r7
      0003C6 64 80            [12] 1132 	xrl	a,#0x80
      0003C8 94 81            [12] 1133 	subb	a,#0x81
      0003CA 40 0A            [24] 1134 	jc	00110$
      0003CC EE               [12] 1135 	mov	a,r6
      0003CD 94 8A            [12] 1136 	subb	a,#0x8a
      0003CF EF               [12] 1137 	mov	a,r7
      0003D0 64 80            [12] 1138 	xrl	a,#0x80
      0003D2 94 82            [12] 1139 	subb	a,#0x82
      0003D4 40 1E            [24] 1140 	jc	00105$
      0003D6                       1141 00110$:
      0003D6 C3               [12] 1142 	clr	c
      0003D7 74 52            [12] 1143 	mov	a,#0x52
      0003D9 9E               [12] 1144 	subb	a,r6
      0003DA 74 83            [12] 1145 	mov	a,#(0x03 ^ 0x80)
      0003DC 8F F0            [24] 1146 	mov	b,r7
      0003DE 63 F0 80         [24] 1147 	xrl	b,#0x80
      0003E1 95 F0            [12] 1148 	subb	a,b
      0003E3 50 1F            [24] 1149 	jnc	00106$
      0003E5 C3               [12] 1150 	clr	c
      0003E6 74 84            [12] 1151 	mov	a,#0x84
      0003E8 9E               [12] 1152 	subb	a,r6
      0003E9 74 83            [12] 1153 	mov	a,#(0x03 ^ 0x80)
      0003EB 8F F0            [24] 1154 	mov	b,r7
      0003ED 63 F0 80         [24] 1155 	xrl	b,#0x80
      0003F0 95 F0            [12] 1156 	subb	a,b
      0003F2 40 10            [24] 1157 	jc	00106$
      0003F4                       1158 00105$:
                                   1159 ;	main2.c:158: lcd_print("Neutral");
      0003F4 90 06 48         [24] 1160 	mov	dptr,#___str_4
      0003F7 75 F0 80         [24] 1161 	mov	b, #0x80
      0003FA 12 01 1C         [24] 1162 	lcall	_lcd_print
                                   1163 ;	main2.c:159: LED_GOOD = 1; LED_NEUTRAL = 0; LED_POOR = 1;
                                   1164 ;	assignBit
      0003FD D2 B2            [12] 1165 	setb	_LED_GOOD
                                   1166 ;	assignBit
      0003FF C2 B3            [12] 1167 	clr	_LED_NEUTRAL
                                   1168 ;	assignBit
      000401 D2 B5            [12] 1169 	setb	_LED_POOR
      000403 22               [24] 1170 	ret
      000404                       1171 00106$:
                                   1172 ;	main2.c:161: lcd_print("Poor");
      000404 90 06 50         [24] 1173 	mov	dptr,#___str_5
      000407 75 F0 80         [24] 1174 	mov	b, #0x80
      00040A 12 01 1C         [24] 1175 	lcall	_lcd_print
                                   1176 ;	main2.c:162: LED_GOOD = 1; LED_NEUTRAL = 1; LED_POOR = 0;
                                   1177 ;	assignBit
      00040D D2 B2            [12] 1178 	setb	_LED_GOOD
                                   1179 ;	assignBit
      00040F D2 B3            [12] 1180 	setb	_LED_NEUTRAL
                                   1181 ;	assignBit
      000411 C2 B5            [12] 1182 	clr	_LED_POOR
                                   1183 ;	main2.c:164: }
      000413 22               [24] 1184 	ret
                                   1185 ;------------------------------------------------------------
                                   1186 ;Allocation info for local variables in function 'display_date'
                                   1187 ;------------------------------------------------------------
                                   1188 ;day           Allocated with name '_display_date_day_10000_38'
                                   1189 ;month         Allocated with name '_display_date_month_10000_38'
                                   1190 ;year          Allocated with name '_display_date_year_10000_38'
                                   1191 ;------------------------------------------------------------
                                   1192 ;	main2.c:167: void display_date(void) {
                                   1193 ;	-----------------------------------------
                                   1194 ;	 function display_date
                                   1195 ;	-----------------------------------------
      000414                       1196 _display_date:
                                   1197 ;	main2.c:169: rtc_get_date(&day, &month, &year);
      000414 75 08 0F         [24] 1198 	mov	_rtc_get_date_PARM_2,#_display_date_month_10000_38
      000417 75 09 00         [24] 1199 	mov	(_rtc_get_date_PARM_2 + 1),#0x00
      00041A 75 0A 40         [24] 1200 	mov	(_rtc_get_date_PARM_2 + 2),#0x40
      00041D 75 0B 10         [24] 1201 	mov	_rtc_get_date_PARM_3,#_display_date_year_10000_38
      000420 75 0C 00         [24] 1202 	mov	(_rtc_get_date_PARM_3 + 1),#0x00
      000423 75 0D 40         [24] 1203 	mov	(_rtc_get_date_PARM_3 + 2),#0x40
      000426 90 00 0E         [24] 1204 	mov	dptr,#_display_date_day_10000_38
      000429 75 F0 40         [24] 1205 	mov	b, #0x40
      00042C 12 01 FF         [24] 1206 	lcall	_rtc_get_date
                                   1207 ;	main2.c:171: lcd_cmd(0x01);
      00042F 75 82 01         [24] 1208 	mov	dpl, #0x01
      000432 12 00 CC         [24] 1209 	lcall	_lcd_cmd
                                   1210 ;	main2.c:172: lcd_cmd(0x80); lcd_print("DATE:");
      000435 75 82 80         [24] 1211 	mov	dpl, #0x80
      000438 12 00 CC         [24] 1212 	lcall	_lcd_cmd
      00043B 90 06 55         [24] 1213 	mov	dptr,#___str_6
      00043E 75 F0 80         [24] 1214 	mov	b, #0x80
      000441 12 01 1C         [24] 1215 	lcall	_lcd_print
                                   1216 ;	main2.c:173: lcd_cmd(0xC0);
      000444 75 82 C0         [24] 1217 	mov	dpl, #0xc0
      000447 12 00 CC         [24] 1218 	lcall	_lcd_cmd
                                   1219 ;	main2.c:175: lcd_data((day / 10) + '0');
      00044A AF 0E            [24] 1220 	mov	r7,_display_date_day_10000_38
      00044C 75 F0 0A         [24] 1221 	mov	b,#0x0a
      00044F EF               [12] 1222 	mov	a,r7
      000450 84               [48] 1223 	div	ab
      000451 24 30            [12] 1224 	add	a,#0x30
      000453 F5 82            [12] 1225 	mov	dpl,a
      000455 12 00 E2         [24] 1226 	lcall	_lcd_data
                                   1227 ;	main2.c:176: lcd_data((day % 10) + '0');
      000458 AF 0E            [24] 1228 	mov	r7,_display_date_day_10000_38
      00045A 75 F0 0A         [24] 1229 	mov	b,#0x0a
      00045D EF               [12] 1230 	mov	a,r7
      00045E 84               [48] 1231 	div	ab
      00045F AF F0            [24] 1232 	mov	r7,b
      000461 74 30            [12] 1233 	mov	a,#0x30
      000463 2F               [12] 1234 	add	a, r7
      000464 F5 82            [12] 1235 	mov	dpl,a
      000466 12 00 E2         [24] 1236 	lcall	_lcd_data
                                   1237 ;	main2.c:177: lcd_data('-');
      000469 75 82 2D         [24] 1238 	mov	dpl, #0x2d
      00046C 12 00 E2         [24] 1239 	lcall	_lcd_data
                                   1240 ;	main2.c:178: lcd_data((month / 10) + '0');
      00046F AF 0F            [24] 1241 	mov	r7,_display_date_month_10000_38
      000471 75 F0 0A         [24] 1242 	mov	b,#0x0a
      000474 EF               [12] 1243 	mov	a,r7
      000475 84               [48] 1244 	div	ab
      000476 24 30            [12] 1245 	add	a,#0x30
      000478 F5 82            [12] 1246 	mov	dpl,a
      00047A 12 00 E2         [24] 1247 	lcall	_lcd_data
                                   1248 ;	main2.c:179: lcd_data((month % 10) + '0');
      00047D AF 0F            [24] 1249 	mov	r7,_display_date_month_10000_38
      00047F 75 F0 0A         [24] 1250 	mov	b,#0x0a
      000482 EF               [12] 1251 	mov	a,r7
      000483 84               [48] 1252 	div	ab
      000484 AF F0            [24] 1253 	mov	r7,b
      000486 74 30            [12] 1254 	mov	a,#0x30
      000488 2F               [12] 1255 	add	a, r7
      000489 F5 82            [12] 1256 	mov	dpl,a
      00048B 12 00 E2         [24] 1257 	lcall	_lcd_data
                                   1258 ;	main2.c:180: lcd_data('-');
      00048E 75 82 2D         [24] 1259 	mov	dpl, #0x2d
      000491 12 00 E2         [24] 1260 	lcall	_lcd_data
                                   1261 ;	main2.c:181: lcd_data((year / 10) + '0');
      000494 AF 10            [24] 1262 	mov	r7,_display_date_year_10000_38
      000496 75 F0 0A         [24] 1263 	mov	b,#0x0a
      000499 EF               [12] 1264 	mov	a,r7
      00049A 84               [48] 1265 	div	ab
      00049B 24 30            [12] 1266 	add	a,#0x30
      00049D F5 82            [12] 1267 	mov	dpl,a
      00049F 12 00 E2         [24] 1268 	lcall	_lcd_data
                                   1269 ;	main2.c:182: lcd_data((year % 10) + '0');
      0004A2 AF 10            [24] 1270 	mov	r7,_display_date_year_10000_38
      0004A4 75 F0 0A         [24] 1271 	mov	b,#0x0a
      0004A7 EF               [12] 1272 	mov	a,r7
      0004A8 84               [48] 1273 	div	ab
      0004A9 AF F0            [24] 1274 	mov	r7,b
      0004AB 74 30            [12] 1275 	mov	a,#0x30
      0004AD 2F               [12] 1276 	add	a, r7
      0004AE F5 82            [12] 1277 	mov	dpl,a
                                   1278 ;	main2.c:183: }
      0004B0 02 00 E2         [24] 1279 	ljmp	_lcd_data
                                   1280 ;------------------------------------------------------------
                                   1281 ;Allocation info for local variables in function 'main'
                                   1282 ;------------------------------------------------------------
                                   1283 ;i             Allocated to registers r7 
                                   1284 ;------------------------------------------------------------
                                   1285 ;	main2.c:186: void main(void) {
                                   1286 ;	-----------------------------------------
                                   1287 ;	 function main
                                   1288 ;	-----------------------------------------
      0004B3                       1289 _main:
                                   1290 ;	main2.c:188: lcd_init();
      0004B3 12 00 F8         [24] 1291 	lcall	_lcd_init
                                   1292 ;	main2.c:189: MOTOR =0;
                                   1293 ;	assignBit
      0004B6 C2 B6            [12] 1294 	clr	_MOTOR
                                   1295 ;	main2.c:190: lcd_print("Transfers Water");
      0004B8 90 06 5B         [24] 1296 	mov	dptr,#___str_7
      0004BB 75 F0 80         [24] 1297 	mov	b, #0x80
      0004BE 12 01 1C         [24] 1298 	lcall	_lcd_print
                                   1299 ;	main2.c:191: delay(500);
      0004C1 90 01 F4         [24] 1300 	mov	dptr,#0x01f4
      0004C4 12 00 A8         [24] 1301 	lcall	_delay
                                   1302 ;	main2.c:194: for (i = 0; i < 60; i++) {
      0004C7                       1303 00112$:
      0004C7 7F 00            [12] 1304 	mov	r7,#0x00
      0004C9                       1305 00106$:
                                   1306 ;	main2.c:195: display_ph_value();
      0004C9 C0 07            [24] 1307 	push	ar7
      0004CB 12 02 B1         [24] 1308 	lcall	_display_ph_value
                                   1309 ;	main2.c:196: delay(1000);  // 1 sec
      0004CE 90 03 E8         [24] 1310 	mov	dptr,#0x03e8
      0004D1 12 00 A8         [24] 1311 	lcall	_delay
      0004D4 D0 07            [24] 1312 	pop	ar7
                                   1313 ;	main2.c:194: for (i = 0; i < 60; i++) {
      0004D6 0F               [12] 1314 	inc	r7
      0004D7 BF 3C 00         [24] 1315 	cjne	r7,#0x3c,00144$
      0004DA                       1316 00144$:
      0004DA 40 ED            [24] 1317 	jc	00106$
                                   1318 ;	main2.c:200: for (i = 0; i < 30; i++) {
      0004DC 7F 00            [12] 1319 	mov	r7,#0x00
      0004DE                       1320 00108$:
                                   1321 ;	main2.c:201: display_date();
      0004DE C0 07            [24] 1322 	push	ar7
      0004E0 12 04 14         [24] 1323 	lcall	_display_date
                                   1324 ;	main2.c:202: delay(1000);  // 1 sec
      0004E3 90 03 E8         [24] 1325 	mov	dptr,#0x03e8
      0004E6 12 00 A8         [24] 1326 	lcall	_delay
      0004E9 D0 07            [24] 1327 	pop	ar7
                                   1328 ;	main2.c:200: for (i = 0; i < 30; i++) {
      0004EB 0F               [12] 1329 	inc	r7
      0004EC BF 1E 00         [24] 1330 	cjne	r7,#0x1e,00146$
      0004EF                       1331 00146$:
      0004EF 40 ED            [24] 1332 	jc	00108$
                                   1333 ;	main2.c:205: }
      0004F1 80 D4            [24] 1334 	sjmp	00112$
                                   1335 	.area CSEG    (CODE)
                                   1336 	.area CONST   (CODE)
                                   1337 	.area CONST   (CODE)
      00062F                       1338 ___str_0:
      00062F 57 41 54 45 52 20 51  1339 	.ascii "WATER QUALITY"
             55 41 4C 49 54 59
      00063C 00                    1340 	.db 0x00
                                   1341 	.area CSEG    (CODE)
                                   1342 	.area CONST   (CODE)
      00063D                       1343 ___str_1:
      00063D 70 48 3A              1344 	.ascii "pH:"
      000640 00                    1345 	.db 0x00
                                   1346 	.area CSEG    (CODE)
                                   1347 	.area CONST   (CODE)
      000641                       1348 ___str_2:
      000641 20                    1349 	.ascii " "
      000642 00                    1350 	.db 0x00
                                   1351 	.area CSEG    (CODE)
                                   1352 	.area CONST   (CODE)
      000643                       1353 ___str_3:
      000643 47 6F 6F 64           1354 	.ascii "Good"
      000647 00                    1355 	.db 0x00
                                   1356 	.area CSEG    (CODE)
                                   1357 	.area CONST   (CODE)
      000648                       1358 ___str_4:
      000648 4E 65 75 74 72 61 6C  1359 	.ascii "Neutral"
      00064F 00                    1360 	.db 0x00
                                   1361 	.area CSEG    (CODE)
                                   1362 	.area CONST   (CODE)
      000650                       1363 ___str_5:
      000650 50 6F 6F 72           1364 	.ascii "Poor"
      000654 00                    1365 	.db 0x00
                                   1366 	.area CSEG    (CODE)
                                   1367 	.area CONST   (CODE)
      000655                       1368 ___str_6:
      000655 44 41 54 45 3A        1369 	.ascii "DATE:"
      00065A 00                    1370 	.db 0x00
                                   1371 	.area CSEG    (CODE)
                                   1372 	.area CONST   (CODE)
      00065B                       1373 ___str_7:
      00065B 54 72 61 6E 73 66 65  1374 	.ascii "Transfers Water"
             72 73 20 57 61 74 65
             72
      00066A 00                    1375 	.db 0x00
                                   1376 	.area CSEG    (CODE)
                                   1377 	.area XINIT   (CODE)
                                   1378 	.area CABS    (ABS,CODE)
