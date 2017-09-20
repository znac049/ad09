                        pragma  autobranchlength           
                        pragma  6809                       

                        org     $6000                      



; Labels:
;
ThreeKHz              = $2001
VGHalted              = $2002
ShieldSW              = $2003
FireSW                = $2004
SlamSW                = $2006
SelfTestSW            = $2007
LCoinSW               = $2400
CCoinSW               = $2401
RCoinSW               = $2402
PlayerOneSW           = $2403
PlayerTwoSW           = $2404
ThrustSW              = $2405
RotateRSW             = $2406
RotateLSW             = $2407
Option87              = $2800
Option65              = $2801
Option43              = $2802
Option21              = $2803
Pk_F1_Pot0            = $2c00
Pk_C1_Pot1            = $2c01
Pk_F2_Pot2            = $2c02
Pk_C2_Pot3            = $2c03
Pk_F3_Pot4            = $2c04
Pk_C3_Pot5            = $2c05
Pk_F4_Pot6            = $2c06
Pk_C4_Pot7            = $2c07
Pk_Ctl_All            = $2c08
Pk_STim_Kbc           = $2c09
Pk_SkRes_Rnd          = $2c0a
Pk_PotGo              = $2c0b
Pk_SerData            = $2c0d
Pk_IrqCtl             = $2c0e
Pk_SerCtl             = $2c0f
EaromRd               = $2c40
StartVG               = $3000
LatchEA               = $3200
WdogReset             = $3400
ExplodeCtrl           = $3600
VGReset               = $3800
EAControl             = $3a00
P1LED                 = $3c00
P2LED                 = $3c01
ThrustSnd             = $3c03
BankSel               = $3c04
LCount                = $3c05
CCount                = $3c06
RCoin                 = $3c07
NoiseReset            = $3e00
VRAM                  = $4000
Reset_Vec             = $fffc
NMI_Vec               = $fffe
IRQ_Vec               = $fffa
L4ba2                 = $4ba2
L4be1                 = $4be1
L4a9e                 = $4a9e
L49bb                 = $49bb
L48be                 = $48be
L4800                 = $4800
L4a22                 = $4a22
L49e7                 = $49e7
L4a32                 = $4a32
L4a75                 = $4a75


L6000                   jsr     L7be3                    ; 6000:  20 E3 7B

                        ldb     <$cd                     ; 6003:  A5 CD

                        bne     L6011                    ; 6005:  D0 0A

                        stb     <$cc                     ; 6007:  85 CC

                        stb     <$cb                     ; 6009:  85 CB

                        stb     <$ce                     ; 600B:  85 CE

                        ldb     #$20                     ; 600D:  A9 20

                        stb     <$cd                     ; 600F:  85 CD

L6011                   jsr     L6959                    ; 6011:  20 59 69

L6014                   andb    VGHalted                 ; 6014:  2C 02 20

                        bmi     L6014                    ; 6017:  30 FB

                        jsr     L4ba2                    ; 6019:  20 A2 4B

L601c                   lsr     <$75                     ; 601C:  46 75

                        bcc     L601c                    ; 601E:  90 FC

                        ldb     <$76                     ; 6020:  A5 76

                        andb    #$01                     ; 6022:  29 01

                        aslb                             ; 6024:  0A

                        lda     #0                       ; 6025:  AA
                        tstb                               
                        tfr     d,x                        

                        eorb    #$02                     ; 6026:  49 02

                        lda     #0                       ; 6028:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     $7799,x                  ; 6029:  BD 99 77

                        stb     VRAM                     ; 602C:  8D 00 40

                        ldb     $779a,x                  ; 602F:  BD 9A 77

                        stb     $4001                    ; 6032:  8D 01 40

                        ldb     $7799,y                  ; 6035:  B9 99 77

                        aslb                             ; 6038:  0A

                        stb     <$03                     ; 6039:  85 03

                        ldb     $779a,y                  ; 603B:  B9 9A 77

                        rolb                             ; 603E:  2A

                        andb    #$1f                     ; 603F:  29 1F

                        orb     #$40                     ; 6041:  09 40

                        stb     <$04                     ; 6043:  85 04

                        stb     StartVG                  ; 6045:  8D 00 30

                        stb     WdogReset                ; 6048:  8D 00 34

                        inc     <$76                     ; 604B:  E6 76

                        bne     L607f                    ; 604D:  D0 30

                        inc     <$77                     ; 604F:  E6 77

                        exg     d,x                      ; 6051:  A6 20
                        lda     #0                         
                        ldb     <$20                     ; Zero page
                        exg     d,x                        

                        ldb     $64,x                    ; 6053:  B5 64

                        andb    #$0f                     ; 6055:  29 0F

                        stb     <$10                     ; 6057:  85 10

                        eorb    $64,x                    ; 6059:  55 64

                        lsrb                             ; 605B:  4A

                        stb     <$11                     ; 605C:  85 11

                        lsrb                             ; 605E:  4A

                        lsrb                             ; 605F:  4A

                        adcb    <$11                     ; 6060:  65 11

                        adcb    <$10                     ; 6062:  65 10

                        exg     d,x                      ; 6064:  A6 1F
                        lda     #0                         
                        ldb     <$1f                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 6066:  A4 77
                        lda     #0                         
                        ldb     <$77                     ; Zero page
                        exg     d,y                        

                        exg     d,y                      ; 6068:  C0 80
                        cmpb    #$80                     ; Immediate
                        exg     d,y                        

                        bne     L6074                    ; 606A:  D0 08

                        cmpb    $fa,x                    ; 606C:  D5 FA

                        bne     L6072                    ; 606E:  D0 02

                        inc     $fb,x                    ; 6070:  F6 FB

L6072                   stb     $fa,x                    ; 6072:  95 FA

L6074                   andcc   #$fe                     ; 6074:  18

                        adcb    $fb,x                    ; 6075:  75 FB

                        cmpb    #$10                     ; 6077:  C9 10

                        bcc     L607d                    ; 6079:  90 02

                        ldb     #$0f                     ; 607B:  A9 0F

L607d                   stb     <$d3                     ; 607D:  85 D3

L607f                   jsr     L7aff                    ; 607F:  20 FF 7A

                        jsr     L4be1                    ; 6082:  20 E1 4B

                        bcs     L60c9                    ; 6085:  B0 42

                        jsr     L6fd4                    ; 6087:  20 D4 6F

                        jsr     L656b                    ; 608A:  20 6B 65

                        bpl     L60ad                    ; 608D:  10 1E

                        jsr     L6c9d                    ; 608F:  20 9D 6C

                        bcs     L60ad                    ; 6092:  B0 19

                        ldb     <$74                     ; 6094:  A5 74

                        bne     L60a7                    ; 6096:  D0 0F

                        jsr     L6659                    ; 6098:  20 59 66

                        jsr     L6497                    ; 609B:  20 97 64

                        jsr     L6810                    ; 609E:  20 10 68

                        jsr     L4a9e                    ; 60A1:  20 9E 4A

                        jsr     L6322                    ; 60A4:  20 22 63

L60a7                   jsr     L66dc                    ; 60A7:  20 DC 66

                        jsr     L60f7                    ; 60AA:  20 F7 60

L60ad                   jsr     L6a7e                    ; 60AD:  20 7E 6A

                        jsr     L6ef6                    ; 60B0:  20 F6 6E

                        ldb     #$7f                     ; 60B3:  A9 7F

                        lda     #0                       ; 60B5:  AA
                        tstb                               
                        tfr     d,x                        

                        jsr     L7a1f                    ; 60B6:  20 1F 7A

                        jsr     L79da                    ; 60B9:  20 DA 79

                        ldb     $02ec                    ; 60BC:  AD EC 02

                        beq     L60c4                    ; 60BF:  F0 03

                        dec     $02ec                    ; 60C1:  CE EC 02

L60c4                   orb     $02e7                    ; 60C4:  0D E7 02

                        bne     L60cc                    ; 60C7:  D0 03

L60c9                   jmp     L6011                    ; 60C9:  4C 11 60

L60cc                   jmp     L6014                    ; 60CC:  4C 14 60

                        fcb     $B2,$A5,$42,$25            
                        fcb     $43,$30,$03,$4C            
                        fcb     $C7,$7B,$18,$60            
                        fcb     $A5,$8A,$05,$13            
                        fcb     $10,$07,$A5,$76            
                        fcb     $29,$20,$F0,$01            
                        fcb     $60,$4C,$59,$71            
                        fcb     $A0,$01,$20,$59            
                        fcb     $71,$A4,$1E,$C8            
                        fcb     $98,$4C,$EB,$79            
L60f7                   lsr     <$71                     ; 60F7:  46 71

                        exg     d,x                      ; 60F9:  A2 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,x                        

L60fb                   ldb     $0219,x                  ; 60FB:  BD 19 02

                        beq     L6102                    ; 60FE:  F0 02

                        bpl     L610c                    ; 6100:  10 0A

L6102                   exg     d,y                      ; 6102:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L60fb                    ; 6103:  10 F6

                        andb    <$71                     ; 6105:  24 71

                        bmi     L610b                    ; 6107:  30 02

                        exg     d,x                      ; 6109:  86 72
                        stb     <$72                     ; Zero page
                        exg     d,x                        

L610b                   rts                              ; 610B:  60

L610c                   exg     d,y                      ; 610C:  A0 1A
                        lda     #0                         
                        ldb     #$1a                     ; Immediate
                        exg     d,y                        

                        exg     d,x                      ; 610E:  E0 04
                        cmpb    #$04                     ; Immediate
                        exg     d,x                        

                        bcs     L6119                    ; 6110:  B0 07

                        exg     d,y                      ; 6112:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        tfr     x,d                      ; 6113:  8A
                        tstb                               

                        bne     L6119                    ; 6114:  D0 03

L6116                   exg     d,y                      ; 6116:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bmi     L6102                    ; 6117:  30 E9

L6119                   ldb     $0200,y                  ; 6119:  B9 00 02

                        beq     L6116                    ; 611C:  F0 F8

                        bmi     L6116                    ; 611E:  30 F6

                        stb     <$0c                     ; 6120:  85 0C

                        ldb     $0263,y                  ; 6122:  B9 63 02

                        orcc    #$01                     ; 6125:  38

                        sbcb    $027c,x                  ; 6126:  FD 7C 02

                        sbcb    #$03                     ; 6129:  E9 03

                        cmpb    #$fa                     ; 612B:  C9 FA

                        bcc     L6116                    ; 612D:  90 E7

                        ldb     $0284,y                  ; 612F:  B9 84 02

                        sbcb    $029d,x                  ; 6132:  FD 9D 02

                        sbcb    #$03                     ; 6135:  E9 03

                        cmpb    #$fa                     ; 6137:  C9 FA

                        bcc     L6116                    ; 6139:  90 DB

                        ldb     $02a5,y                  ; 613B:  B9 A5 02

                        orcc    #$01                     ; 613E:  38

                        sbcb    $02be,x                  ; 613F:  FD BE 02

                        stb     <$09                     ; 6142:  85 09

                        ldb     $0263,y                  ; 6144:  B9 63 02

                        sbcb    $027c,x                  ; 6147:  FD 7C 02

                        lsrb                             ; 614A:  4A

                        ror     <$09                     ; 614B:  66 09

                        aslb                             ; 614D:  0A

                        beq     L615e                    ; 614E:  F0 0E

                        bpl     L6116                    ; 6150:  10 C4

                        eorb    #$fe                     ; 6152:  49 FE

                        bne     L6116                    ; 6154:  D0 C0

                        ldb     <$09                     ; 6156:  A5 09

                        eorb    #$ff                     ; 6158:  49 FF

                        adcb    #$00                     ; 615A:  69 00

                        stb     <$09                     ; 615C:  85 09

L615e                   ldb     $02c6,y                  ; 615E:  B9 C6 02

                        orcc    #$01                     ; 6161:  38

                        sbcb    $02df,x                  ; 6162:  FD DF 02

                        stb     <$0a                     ; 6165:  85 0A

                        ldb     $0284,y                  ; 6167:  B9 84 02

                        sbcb    $029d,x                  ; 616A:  FD 9D 02

                        lsrb                             ; 616D:  4A

                        ror     <$0a                     ; 616E:  66 0A

                        aslb                             ; 6170:  0A

                        beq     L6181                    ; 6171:  F0 0E

                        bpl     L6116                    ; 6173:  10 A1

                        eorb    #$fe                     ; 6175:  49 FE

                        bne     L6116                    ; 6177:  D0 9D

                        ldb     <$0a                     ; 6179:  A5 0A

                        eorb    #$ff                     ; 617B:  49 FF

                        adcb    #$00                     ; 617D:  69 00

                        stb     <$0a                     ; 617F:  85 0A

L6181                   ldb     #$04                     ; 6181:  A9 04

                        exg     d,x                      ; 6183:  E0 01
                        cmpb    #$01                     ; Immediate
                        exg     d,x                        

                        beq     L618e                    ; 6185:  F0 07

                        bcs     L6191                    ; 6187:  B0 08

                        jsr     L61d5                    ; 6189:  20 D5 61

                        bne     L6191                    ; 618C:  D0 03

L618e                   jsr     L61de                    ; 618E:  20 DE 61

L6191                   exg     d,y                      ; 6191:  C0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,y                        

                        bcs     L61a5                    ; 6193:  B0 10

                        adcb    #$2a                     ; 6195:  69 2A

                        lsr     <$0c                     ; 6197:  46 0C

                        bcs     L61af                    ; 6199:  B0 14

                        adcb    #$1e                     ; 619B:  69 1E

                        lsr     <$0c                     ; 619D:  46 0C

                        bcs     L61af                    ; 619F:  B0 0E

                        adcb    #$3c                     ; 61A1:  69 3C

                        bcc     L61af                    ; 61A3:  90 0A

L61a5                   beq     L61ac                    ; 61A5:  F0 05

                        jsr     L61de                    ; 61A7:  20 DE 61

                        bne     L61af                    ; 61AA:  D0 03

L61ac                   jsr     L61d5                    ; 61AC:  20 D5 61

L61af                   cmpb    <$09                     ; 61AF:  C5 09

                        bcc     L61d2                    ; 61B1:  90 1F

                        cmpb    <$0a                     ; 61B3:  C5 0A

                        bcc     L61d2                    ; 61B5:  90 1B

                        stb     <$0c                     ; 61B7:  85 0C

                        lsrb                             ; 61B9:  4A

                        andcc   #$fe                     ; 61BA:  18

                        adcb    <$0c                     ; 61BB:  65 0C

                        rorb                             ; 61BD:  6A

                        stb     <$0c                     ; 61BE:  85 0C

                        ldb     <$0a                     ; 61C0:  A5 0A

                        adcb    <$09                     ; 61C2:  65 09

                        rorb                             ; 61C4:  6A

                        cmpb    <$0c                     ; 61C5:  C5 0C

                        bcs     L61d2                    ; 61C7:  B0 09

                        tfr     x,d                      ; 61C9:  8A
                        tstb                               

                        pshs    b                        ; 61CA:  48

                        jsr     L62a1                    ; 61CB:  20 A1 62

                        puls    b                        ; 61CE:  68

                        lda     #0                       ; 61CF:  AA
                        tstb                               
                        tfr     d,x                        

                        exg     d,y                      ; 61D0:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

L61d2                   jmp     L6116                    ; 61D2:  4C 16 61

L61d5                   andb    <$73                     ; 61D5:  24 73

                        bpl     L61db                    ; 61D7:  10 02

                        adcb    #$08                     ; 61D9:  69 08

L61db                   adcb    #$1c                     ; 61DB:  69 1C

                        rts                              ; 61DD:  60

L61de                   adcb    #$1c                     ; 61DE:  69 1C

                        pshs    b                        ; 61E0:  48

                        ldb     $021a                    ; 61E1:  AD 1A 02

                        lsrb                             ; 61E4:  4A

                        puls    b                        ; 61E5:  68

                        bcs     L61ea                    ; 61E6:  B0 02

                        adcb    #$12                     ; 61E8:  69 12

L61ea                   rts                              ; 61EA:  60

L61eb                   ldb     $0200,y                  ; 61EB:  B9 00 02

                        andb    #$07                     ; 61EE:  29 07

                        stb     <$09                     ; 61F0:  85 09

                        ldb     Pk_SkRes_Rnd             ; 61F2:  AD 0A 2C

                        andb    #$18                     ; 61F5:  29 18

                        orb     <$09                     ; 61F7:  05 09

                        stb     $0200,x                  ; 61F9:  9D 00 02

                        ldb     $02a5,y                  ; 61FC:  B9 A5 02

                        stb     $02a5,x                  ; 61FF:  9D A5 02

                        ldb     $0263,y                  ; 6202:  B9 63 02

                        stb     $0263,x                  ; 6205:  9D 63 02

                        ldb     $02c6,y                  ; 6208:  B9 C6 02

                        stb     $02c6,x                  ; 620B:  9D C6 02

                        ldb     $0284,y                  ; 620E:  B9 84 02

                        stb     $0284,x                  ; 6211:  9D 84 02

                        ldb     $0221,y                  ; 6214:  B9 21 02

                        stb     $0221,x                  ; 6217:  9D 21 02

                        ldb     $0242,y                  ; 621A:  B9 42 02

                        stb     $0242,x                  ; 621D:  9D 42 02

                        rts                              ; 6220:  60

L6221                   exg     d,y                      ; 6221:  A0 FF
                        lda     #0                         
                        ldb     #$ff                     ; Immediate
                        exg     d,y                        

                        andb    <$12                     ; 6223:  24 12

                        bmi     L6254                    ; 6225:  30 2D

L6227                   exg     d,y                      ; 6227:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 6228:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 6229:  B1 10
                        leau    $10,u                      
                        ldb     ,u                         

                        eorb    <$0a                     ; 622B:  45 0A

                        ldu     ,u                       ; 622D:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 622F:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        cmpb    #$f0                     ; 6230:  C9 F0

                        bcs     L624b                    ; 6232:  B0 17

                        ldu     ,u                       ; 6234:  B1 10
                        leau    $10,u                      
                        ldb     ,u                         

                        ldu     ,u                       ; 6236:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 6238:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 6239:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 623A:  B1 10
                        leau    $10,u                      
                        ldb     ,u                         

                        ldu     ,u                       ; 623C:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 623E:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 623F:  B1 10
                        leau    $10,u                      
                        ldb     ,u                         

                        eorb    <$09                     ; 6241:  45 09

                        ldu     ,u                       ; 6243:  91 03
                        leau    $03,u                      
                        stb     ,u                         

L6245                   exg     d,y                      ; 6245:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L6227                    ; 6246:  10 DF

                        jmp     L7a55                    ; 6248:  4C 55 7A

L624b                   ldu     ,u                       ; 624B:  B1 10
                        leau    $10,u                      
                        ldb     ,u                         

                        eorb    <$09                     ; 624D:  45 09

                        ldu     ,u                       ; 624F:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 6251:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        bne     L6245                    ; 6252:  D0 F1

L6254                   exg     d,y                      ; 6254:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 6255:  B1 10
                        leau    $10,u                      
                        ldb     ,u                         

                        stb     <$14                     ; 6257:  85 14

                        exg     d,y                      ; 6259:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 625A:  B1 10
                        leau    $10,u                      
                        ldb     ,u                         

                        cmpb    #$f0                     ; 625C:  C9 F0

                        bcs     L628c                    ; 625E:  B0 2C

                        exg     d,y                      ; 6260:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 6261:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 6262:  51 10
                        leau    $10,u                      
                        eorb    ,u                         

                        andb    #$0f                     ; 6264:  29 0F

                        stb     <$13                     ; 6266:  85 13

                        ldu     ,u                       ; 6268:  51 10
                        leau    $10,u                      
                        eorb    ,u                         

                        eorb    <$09                     ; 626A:  45 09

                        ldu     ,u                       ; 626C:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 626E:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        ldu     ,u                       ; 626F:  B1 10
                        leau    $10,u                      
                        ldb     ,u                         

                        pshs    b                        ; 6271:  48

                        ldb     <$14                     ; 6272:  A5 14

                        ldu     ,u                       ; 6274:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 6276:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        ldb     <$13                     ; 6277:  A5 13

                        eorb    <$0a                     ; 6279:  45 0A

                        ldu     ,u                       ; 627B:  51 10
                        leau    $10,u                      
                        eorb    ,u                         

                        ldu     ,u                       ; 627D:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 627F:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        puls    b                        ; 6280:  68

                        ldu     ,u                       ; 6281:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 6283:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 6284:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

L6285                   exg     d,y                      ; 6285:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 6286:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L6254                    ; 6287:  10 CB

                        jmp     L7a55                    ; 6289:  4C 55 7A

L628c                   eorb    <$14                     ; 628C:  45 14

                        andb    #$07                     ; 628E:  29 07

                        pshs    b                        ; 6290:  48

                        ldu     ,u                       ; 6291:  51 10
                        leau    $10,u                      
                        eorb    ,u                         

                        eorb    <$0a                     ; 6293:  45 0A

                        ldu     ,u                       ; 6295:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 6297:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        puls    b                        ; 6298:  68

                        ldu     ,u                       ; 6299:  51 10
                        leau    $10,u                      
                        eorb    ,u                         

                        eorb    <$09                     ; 629B:  45 09

                        ldu     ,u                       ; 629D:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        bcs     L6285                    ; 629F:  B0 E4

L62a1                   jsr     L74e7                    ; 62A1:  20 E7 74

                        bcs     L6308                    ; 62A4:  B0 62

                        exg     d,x                      ; 62A6:  E0 01
                        cmpb    #$01                     ; Immediate
                        exg     d,x                        

                        bne     L62b0                    ; 62A8:  D0 06

                        exg     d,y                      ; 62AA:  C0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,y                        

                        bne     L62b6                    ; 62AC:  D0 08

                        exg     d,y                      ; 62AE:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,y                      ; 62AF:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

L62b0                   tfr     x,d                      ; 62B0:  8A
                        tstb                               

                        bne     L62c9                    ; 62B1:  D0 16

                        jsr     L62f8                    ; 62B3:  20 F8 62

L62b6                   ldb     #$a0                     ; 62B6:  A9 A0

                        stb     $0219,x                  ; 62B8:  9D 19 02

                        ldb     #$00                     ; 62BB:  A9 00

                        stb     $023a,x                  ; 62BD:  9D 3A 02

                        stb     $025b,x                  ; 62C0:  9D 5B 02

                        exg     d,y                      ; 62C3:  C0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,y                        

                        bcc     L62d4                    ; 62C5:  90 0D

                        bcs     L6308                    ; 62C7:  B0 3F

L62c9                   ldb     #$00                     ; 62C9:  A9 00

                        stb     $0219,x                  ; 62CB:  9D 19 02

                        exg     d,y                      ; 62CE:  C0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,y                        

                        beq     L62f3                    ; 62D0:  F0 21

                        bcs     L6308                    ; 62D2:  B0 34

L62d4                   jsr     L6f62                    ; 62D4:  20 62 6F

L62d7                   ldb     $0200,y                  ; 62D7:  B9 00 02

                        andb    #$03                     ; 62DA:  29 03

                        eorb    #$02                     ; 62DC:  49 02

                        lsrb                             ; 62DE:  4A

                        rorb                             ; 62DF:  6A

                        rorb                             ; 62E0:  6A

                        orb     #$3f                     ; 62E1:  09 3F

                        stb     <$7f                     ; 62E3:  85 7F

                        ldb     #$a0                     ; 62E5:  A9 A0

                        stb     $0200,y                  ; 62E7:  99 00 02

                        ldb     #$00                     ; 62EA:  A9 00

                        stb     $0221,y                  ; 62EC:  99 21 02

                        stb     $0242,y                  ; 62EF:  99 42 02

                        rts                              ; 62F2:  60

L62f3                   jsr     L62f8                    ; 62F3:  20 F8 62

                        bne     L62d7                    ; 62F6:  D0 DF

L62f8                   tfr     x,d                      ; 62F8:  8A
                        tstb                               

                        exg     d,x                      ; 62F9:  A6 1E
                        lda     #0                         
                        ldb     <$1e                     ; Zero page
                        exg     d,x                        

                        dec     $6f,x                    ; 62FB:  D6 6F

                        lda     #0                       ; 62FD:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     #$81                     ; 62FE:  A9 81

L6300                   stb     $02eb                    ; 6300:  8D EB 02

                        ldb     #$05                     ; 6303:  A9 05

                        stb     <$de                     ; 6305:  85 DE

                        rts                              ; 6307:  60

L6308                   ldb     $02e9                    ; 6308:  AD E9 02

                        stb     $02e8                    ; 630B:  8D E8 02

                        ldb     <$22                     ; 630E:  A5 22

                        beq     L62d7                    ; 6310:  F0 C5

                        ldb     $021a                    ; 6312:  AD 1A 02

                        lsrb                             ; 6315:  4A

                        ldb     #$00                     ; 6316:  A9 00

                        bcs     L631c                    ; 6318:  B0 02

                        ldb     #$20                     ; 631A:  A9 20

L631c                   jsr     L6c44                    ; 631C:  20 44 6C

                        jmp     L62d7                    ; 631F:  4C D7 62

L6322                   ldb     <$76                     ; 6322:  A5 76

                        andb    #$03                     ; 6324:  29 03

                        beq     L6329                    ; 6326:  F0 01

L6328                   rts                              ; 6328:  60

L6329                   ldb     $021a                    ; 6329:  AD 1A 02

                        beq     L6338                    ; 632C:  F0 0A

                        bpl     L6335                    ; 632E:  10 05

                        exg     d,y                      ; 6330:  A0 17
                        lda     #0                         
                        ldb     #$17                     ; Immediate
                        exg     d,y                        

                        jmp     L770d                    ; 6332:  4C 0D 77

L6335                   jmp     L63c5                    ; 6335:  4C C5 63

L6338                   jsr     L67fa                    ; 6338:  20 FA 67

                        ldb     <$22                     ; 633B:  A5 22

                        beq     L6346                    ; 633D:  F0 07

                        ldb     $0219                    ; 633F:  AD 19 02

                        beq     L6328                    ; 6342:  F0 E4

                        bmi     L6328                    ; 6344:  30 E2

L6346                   ldb     $02ea                    ; 6346:  AD EA 02

                        beq     L634e                    ; 6349:  F0 03

                        dec     $02ea                    ; 634B:  CE EA 02

L634e                   dec     $02e8                    ; 634E:  CE E8 02

                        bne     L6328                    ; 6351:  D0 D5

                        ldb     #$01                     ; 6353:  A9 01

                        stb     $02e8                    ; 6355:  8D E8 02

                        exg     d,x                      ; 6358:  AE E7 02
                        lda     #0                         
                        ldb     $02e7                    ; Absolute
                        exg     d,x                        

                        beq     L6328                    ; 635B:  F0 CB

                        ldb     $02ea                    ; 635D:  AD EA 02

                        beq     L6367                    ; 6360:  F0 05

                        exg     d,x                      ; 6362:  EC EE 02
                        cmpb    $02ee                    ; Absolute
                        exg     d,x                        

                        bcs     L6328                    ; 6365:  B0 C1

L6367                   ldb     $02e9                    ; 6367:  AD E9 02

                        orcc    #$01                     ; 636A:  38

                        sbcb    #$06                     ; 636B:  E9 06

                        cmpb    #$20                     ; 636D:  C9 20

                        bcc     L6374                    ; 636F:  90 03

                        stb     $02e9                    ; 6371:  8D E9 02

L6374                   ldb     Pk_SkRes_Rnd             ; 6374:  AD 0A 2C

                        lsrb                             ; 6377:  4A

                        ror     $02e0                    ; 6378:  6E E0 02

                        lsrb                             ; 637B:  4A

                        ror     $02e0                    ; 637C:  6E E0 02

                        lsrb                             ; 637F:  4A

                        ror     $02e0                    ; 6380:  6E E0 02

                        adcb    #$04                     ; 6383:  69 04

                        cmpb    #$12                     ; 6385:  C9 12

                        bcc     L638b                    ; 6387:  90 02

                        sbcb    #$10                     ; 6389:  E9 10

L638b                   stb     $029e                    ; 638B:  8D 9E 02

                        ldb     Pk_SkRes_Rnd             ; 638E:  AD 0A 2C

                        aslb                             ; 6391:  0A

                        ldb     #$00                     ; 6392:  A9 00

                        lda     #0                       ; 6394:  AA
                        tstb                               
                        tfr     d,x                        

                        exg     d,y                      ; 6395:  A0 10
                        lda     #0                         
                        ldb     #$10                     ; Immediate
                        exg     d,y                        

                        bcc     L639e                    ; 6397:  90 05

                        exg     d,y                      ; 6399:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        ldb     #$1f                     ; 639A:  A9 1F

                        exg     d,y                      ; 639C:  A0 F0
                        lda     #0                         
                        ldb     #$f0                     ; Immediate
                        exg     d,y                        

L639e                   exg     d,y                      ; 639E:  8C 3B 02
                        stb     $023b                    ; Absolute
                        exg     d,y                        

                        stb     $027d                    ; 63A1:  8D 7D 02

                        exg     d,x                      ; 63A4:  8E BF 02
                        stb     $02bf                    ; Absolute
                        exg     d,x                        

                        exg     d,y                      ; 63A7:  A0 02
                        lda     #0                         
                        ldb     #$02                     ; Immediate
                        exg     d,y                        

                        ldb     <$d3                     ; 63A9:  A5 D3

                        beq     L63b9                    ; 63AB:  F0 0C

                        ldb     $02ee                    ; 63AD:  AD EE 02

                        orcc    #$01                     ; 63B0:  38

                        sbcb    $02e7                    ; 63B1:  ED E7 02

                        cmpb    #$04                     ; 63B4:  C9 04

                        bcc     L63b9                    ; 63B6:  90 01

                        exg     d,y                      ; 63B8:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

L63b9                   exg     d,y                      ; 63B9:  8C 1A 02
                        stb     $021a                    ; Absolute
                        exg     d,y                        

                        ldb     $63c2,y                  ; 63BC:  B9 C2 63

                        lda     #0                       ; 63BF:  A8
                        tstb                               
                        tfr     d,y                        

                        jmp     L7716                    ; 63C0:  4C 16 77

                        fcb     $17,$37                    
L63c5                   ldb     <$76                     ; 63C5:  A5 76

                        aslb                             ; 63C7:  0A

                        bne     L63d6                    ; 63C8:  D0 0C

                        ldb     Pk_SkRes_Rnd             ; 63CA:  AD 0A 2C

                        andb    #$03                     ; 63CD:  29 03

                        lda     #0                       ; 63CF:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     $6457,x                  ; 63D0:  BD 57 64

                        stb     $025c                    ; 63D3:  8D 5C 02

L63d6                   ldb     <$22                     ; 63D6:  A5 22

                        beq     L63df                    ; 63D8:  F0 05

                        ldb     $02eb                    ; 63DA:  AD EB 02

                        bne     L63e4                    ; 63DD:  D0 05

L63df                   dec     $02e8                    ; 63DF:  CE E8 02

                        beq     L63e5                    ; 63E2:  F0 01

L63e4                   rts                              ; 63E4:  60

L63e5                   ldb     #$0a                     ; 63E5:  A9 0A

                        stb     $02e8                    ; 63E7:  8D E8 02

                        exg     d,y                      ; 63EA:  A0 19
                        lda     #0                         
                        ldb     #$19                     ; Immediate
                        exg     d,y                        

                        ldb     <$22                     ; 63EC:  A5 22

                        beq     L63ff                    ; 63EE:  F0 0F

                        exg     d,x                      ; 63F0:  A2 AA
                        lda     #0                         
                        ldb     #$aa                     ; Immediate
                        exg     d,x                        

                        ldb     $021a                    ; 63F2:  AD 1A 02

                        lsrb                             ; 63F5:  4A

                        bcs     L63fa                    ; 63F6:  B0 02

                        exg     d,x                      ; 63F8:  A2 40
                        lda     #0                         
                        ldb     #$40                     ; Immediate
                        exg     d,x                        

L63fa                   exg     d,x                      ; 63FA:  EC 0A 2C
                        cmpb    Pk_SkRes_Rnd             ; Absolute
                        exg     d,x                        

                        bcs     L6402                    ; 63FD:  B0 03

L63ff                   jsr     L645b                    ; 63FF:  20 5B 64

L6402                   exg     d,y                      ; 6402:  84 18
                        stb     <$18                     ; Zero page
                        exg     d,y                        

                        exg     d,x                      ; 6404:  A2 1A
                        lda     #0                         
                        ldb     #$1a                     ; Immediate
                        exg     d,x                        

                        jsr     L4a22                    ; 6406:  20 22 4A

                        jsr     L49e7                    ; 6409:  20 E7 49

                        stb     <$13                     ; 640C:  85 13

                        ldb     <$0c                     ; 640E:  A5 0C

                        stb     <$12                     ; 6410:  85 12

                        ldb     <$18                     ; 6412:  A5 18

                        andcc   #$fe                     ; 6414:  18

                        adcb    #$21                     ; 6415:  69 21

                        lda     #0                       ; 6417:  A8
                        tstb                               
                        tfr     d,y                        

                        exg     d,x                      ; 6418:  A2 3B
                        lda     #0                         
                        ldb     #$3b                     ; Immediate
                        exg     d,x                        

                        jsr     L4a22                    ; 641A:  20 22 4A

                        jsr     L49e7                    ; 641D:  20 E7 49

                        jsr     L4a32                    ; 6420:  20 32 4A

                        stb     <$7a                     ; 6423:  85 7A

                        ldb     <$18                     ; 6425:  A5 18

                        cmpb    #$19                     ; 6427:  C9 19

                        bne     L6442                    ; 6429:  D0 17

                        exg     d,x                      ; 642B:  A6 D3
                        lda     #0                         
                        ldb     <$d3                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 642D:  E0 03
                        cmpb    #$03                     ; Immediate
                        exg     d,x                        

                        bcc     L6433                    ; 642F:  90 02

                        exg     d,x                      ; 6431:  A2 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,x                        

L6433                   ldb     Pk_SkRes_Rnd             ; 6433:  AD 0A 2C

                        andb    $644f,x                  ; 6436:  3D 4F 64

                        bpl     L643e                    ; 6439:  10 03

                        orb     $6453,x                  ; 643B:  1D 53 64

L643e                   adcb    <$7a                     ; 643E:  65 7A

                        stb     <$7a                     ; 6440:  85 7A

L6442                   exg     d,y                      ; 6442:  A0 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,y                        

                        ldb     #$01                     ; 6444:  A9 01

                        stb     <$0f                     ; 6446:  85 0F

                        exg     d,x                      ; 6448:  A6 18
                        lda     #0                         
                        ldb     <$18                     ; Zero page
                        exg     d,x                        

                        stb     <$18                     ; 644A:  85 18

                        jmp     L64c8                    ; 644C:  4C C8 64

                        fcb     $9F,$8F,$8F,$87            
                        fcb     $60,$70,$70,$78            
                        fcb     $F0,$00,$00,$10            
L645b                   exg     d,y                      ; 645B:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

L645c                   ldb     $0200,y                  ; 645C:  B9 00 02

                        bne     L6468                    ; 645F:  D0 07

L6461                   exg     d,y                      ; 6461:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L645c                    ; 6462:  10 F8

                        exg     d,y                      ; 6464:  A0 19
                        lda     #0                         
                        ldb     #$19                     ; Immediate
                        exg     d,y                        

                        orcc    #$01                     ; 6466:  38

                        rts                              ; 6467:  60

L6468                   bmi     L6461                    ; 6468:  30 F7

                        cmpb    #$40                     ; 646A:  C9 40

                        bcc     L6478                    ; 646C:  90 0A

                        lsrb                             ; 646E:  4A

                        lsrb                             ; 646F:  4A

                        lda     #0                       ; 6470:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     $02e8,x                  ; 6471:  BD E8 02

                        bpl     L6461                    ; 6474:  10 EB

                        andcc   #$fe                     ; 6476:  18

                        rts                              ; 6477:  60

L6478                   ldb     $027d                    ; 6478:  AD 7D 02

                        orcc    #$01                     ; 647B:  38

                        sbcb    $0263,y                  ; 647C:  F9 63 02

                        bpl     L6483                    ; 647F:  10 02

                        eorb    #$ff                     ; 6481:  49 FF

L6483                   cmpb    #$08                     ; 6483:  C9 08

                        bcs     L6461                    ; 6485:  B0 DA

                        ldb     $029e                    ; 6487:  AD 9E 02

                        orcc    #$01                     ; 648A:  38

                        sbcb    $0284,y                  ; 648B:  F9 84 02

                        bpl     L6492                    ; 648E:  10 02

                        eorb    #$ff                     ; 6490:  49 FF

L6492                   cmpb    #$08                     ; 6492:  C9 08

                        bcs     L6461                    ; 6494:  B0 CB

                        rts                              ; 6496:  60

L6497                   exg     d,x                      ; 6497:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        ldb     <$22                     ; 6499:  A5 22

                        bne     L64a0                    ; 649B:  D0 03

L649d                   exg     d,x                      ; 649D:  86 FF
                        stb     <$ff                     ; Zero page
                        exg     d,x                        

                        rts                              ; 649F:  60

L64a0                   andb    <$73                     ; 64A0:  24 73

                        bmi     L649d                    ; 64A2:  30 F9

                        andb    <$fe                     ; 64A4:  24 FE

                        bpl     L649d                    ; 64A6:  10 F5

                        ldb     $02eb                    ; 64A8:  AD EB 02

                        bne     L649d                    ; 64AB:  D0 F0

                        inc     <$ff                     ; 64AD:  E6 FF

                        ldb     <$ff                     ; 64AF:  A5 FF

                        cmpb    #$02                     ; 64B1:  C9 02

                        bcc     L64ba                    ; 64B3:  90 05

                        cmpb    #$0f                     ; 64B5:  C9 0F

                        bcs     L649d                    ; 64B7:  B0 E4

                        rts                              ; 64B9:  60

L64ba                   exg     d,x                      ; 64BA:  86 18
                        stb     <$18                     ; Zero page
                        exg     d,x                        

                        ldb     #$03                     ; 64BC:  A9 03

                        stb     <$0f                     ; 64BE:  85 0F

                        exg     d,x                      ; 64C0:  A2 19
                        lda     #0                         
                        ldb     #$19                     ; Immediate
                        exg     d,x                        

                        ldb     <$79                     ; 64C2:  A5 79

                        stb     <$7a                     ; 64C4:  85 7A

                        exg     d,y                      ; 64C6:  A0 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,y                        

L64c8                   ldb     $0219,y                  ; 64C8:  B9 19 02

                        beq     L64d3                    ; 64CB:  F0 06

                        exg     d,y                      ; 64CD:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,y                      ; 64CE:  C4 0F
                        cmpb    <$0f                     ; Zero page
                        exg     d,y                        

                        bne     L64c8                    ; 64D0:  D0 F6

                        rts                              ; 64D2:  60

L64d3                   exg     d,x                      ; 64D3:  86 0E
                        stb     <$0e                     ; Zero page
                        exg     d,x                        

                        ldb     #$12                     ; 64D5:  A9 12

                        stb     $0219,y                  ; 64D7:  99 19 02

                        ldb     <$7a                     ; 64DA:  A5 7A

                        jsr     L70fe                    ; 64DC:  20 FE 70

                        exg     d,x                      ; 64DF:  A6 0E
                        lda     #0                         
                        ldb     <$0e                     ; Zero page
                        exg     d,x                        

                        cmpb    #$80                     ; 64E1:  C9 80

                        rorb                             ; 64E3:  6A

                        stb     <$0a                     ; 64E4:  85 0A

                        andcc   #$fe                     ; 64E6:  18

                        adcb    $0221,x                  ; 64E7:  7D 21 02

                        bmi     L64f4                    ; 64EA:  30 08

                        cmpb    #$70                     ; 64EC:  C9 70

                        bcc     L64fa                    ; 64EE:  90 0A

                        ldb     #$6f                     ; 64F0:  A9 6F

                        bne     L64fa                    ; 64F2:  D0 06

L64f4                   cmpb    #$91                     ; 64F4:  C9 91

                        bcs     L64fa                    ; 64F6:  B0 02

                        ldb     #$91                     ; 64F8:  A9 91

L64fa                   stb     $023a,y                  ; 64FA:  99 3A 02

                        ldb     <$7a                     ; 64FD:  A5 7A

                        jsr     L7101                    ; 64FF:  20 01 71

                        exg     d,x                      ; 6502:  A6 0E
                        lda     #0                         
                        ldb     <$0e                     ; Zero page
                        exg     d,x                        

                        cmpb    #$80                     ; 6504:  C9 80

                        rorb                             ; 6506:  6A

                        stb     <$0d                     ; 6507:  85 0D

                        andcc   #$fe                     ; 6509:  18

                        adcb    $0242,x                  ; 650A:  7D 42 02

                        bmi     L6517                    ; 650D:  30 08

                        cmpb    #$70                     ; 650F:  C9 70

                        bcc     L651d                    ; 6511:  90 0A

                        ldb     #$6f                     ; 6513:  A9 6F

                        bne     L651d                    ; 6515:  D0 06

L6517                   cmpb    #$91                     ; 6517:  C9 91

                        bcs     L651d                    ; 6519:  B0 02

                        ldb     #$91                     ; 651B:  A9 91

L651d                   stb     $025b,y                  ; 651D:  99 5B 02

                        exg     d,x                      ; 6520:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        ldb     <$0a                     ; 6522:  A5 0A

                        bpl     L6527                    ; 6524:  10 01

                        exg     d,y                      ; 6526:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

L6527                   exg     d,x                      ; 6527:  86 09
                        stb     <$09                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 6529:  A6 18
                        lda     #0                         
                        ldb     <$18                     ; Zero page
                        exg     d,x                        

                        cmpb    #$80                     ; 652B:  C9 80

                        rorb                             ; 652D:  6A

                        andcc   #$fe                     ; 652E:  18

                        adcb    <$0a                     ; 652F:  65 0A

                        andcc   #$fe                     ; 6531:  18

                        adcb    $02be,x                  ; 6532:  7D BE 02

                        stb     $02be,y                  ; 6535:  99 BE 02

                        ldb     <$09                     ; 6538:  A5 09

                        adcb    $027c,x                  ; 653A:  7D 7C 02

                        stb     $027c,y                  ; 653D:  99 7C 02

                        exg     d,x                      ; 6540:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        ldb     <$0d                     ; 6542:  A5 0D

                        bpl     L6547                    ; 6544:  10 01

                        exg     d,y                      ; 6546:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

L6547                   exg     d,x                      ; 6547:  86 0C
                        stb     <$0c                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 6549:  A6 18
                        lda     #0                         
                        ldb     <$18                     ; Zero page
                        exg     d,x                        

                        cmpb    #$80                     ; 654B:  C9 80

                        rorb                             ; 654D:  6A

                        andcc   #$fe                     ; 654E:  18

                        adcb    <$0d                     ; 654F:  65 0D

                        andcc   #$fe                     ; 6551:  18

                        adcb    $02df,x                  ; 6552:  7D DF 02

                        stb     $02df,y                  ; 6555:  99 DF 02

                        ldb     <$0c                     ; 6558:  A5 0C

                        adcb    $029d,x                  ; 655A:  7D 9D 02

                        stb     $029d,y                  ; 655D:  99 9D 02

                        exg     d,y                      ; 6560:  A0 27
                        lda     #0                         
                        ldb     #$27                     ; Immediate
                        exg     d,y                        

                        exg     d,x                      ; 6562:  E0 01
                        cmpb    #$01                     ; Immediate
                        exg     d,x                        

                        bcc     L6568                    ; 6564:  90 02

                        exg     d,y                      ; 6566:  A0 1F
                        lda     #0                         
                        ldb     #$1f                     ; Immediate
                        exg     d,y                        

L6568                   jmp     L7717                    ; 6568:  4C 17 77

L656b                   ldb     <$42                     ; 656B:  A5 42

                        andb    <$43                     ; 656D:  25 43

                        bpl     L657b                    ; 656F:  10 0A

                        ldb     <$22                     ; 6571:  A5 22

                        bne     L6578                    ; 6573:  D0 03

                        jsr     L7844                    ; 6575:  20 44 78

L6578                   ldb     #$ff                     ; 6578:  A9 FF

                        rts                              ; 657A:  60

L657b                   ldb     <$21                     ; 657B:  A5 21

                        lsrb                             ; 657D:  4A

                        beq     L6598                    ; 657E:  F0 18

                        exg     d,y                      ; 6580:  A0 01
                        lda     #0                         
                        ldb     #$01                     ; Immediate
                        exg     d,y                        

                        jsr     L7159                    ; 6582:  20 59 71

                        exg     d,y                      ; 6585:  A0 02
                        lda     #0                         
                        ldb     #$02                     ; Immediate
                        exg     d,y                        

                        exg     d,x                      ; 6587:  A6 43
                        lda     #0                         
                        ldb     <$43                     ; Zero page
                        exg     d,x                        

                        bpl     L658c                    ; 6589:  10 01

                        exg     d,y                      ; 658B:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

L658c                   exg     d,y                      ; 658C:  84 1E
                        stb     <$1e                     ; Zero page
                        exg     d,y                        

                        ldb     <$76                     ; 658E:  A5 76

                        andb    #$10                     ; 6590:  29 10

                        bne     L6598                    ; 6592:  D0 04

                        tfr     y,d                      ; 6594:  98
                        tstb                               

                        jsr     L79eb                    ; 6595:  20 EB 79

L6598                   lsr     <$1e                     ; 6598:  46 1E

                        jsr     L6c95                    ; 659A:  20 95 6C

                        exg     d,y                      ; 659D:  A0 02
                        lda     #0                         
                        ldb     #$02                     ; Immediate
                        exg     d,y                        

                        jsr     L7159                    ; 659F:  20 59 71

                        exg     d,y                      ; 65A2:  A0 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,y                        

                        jsr     L7159                    ; 65A4:  20 59 71

                        exg     d,y                      ; 65A7:  A0 04
                        lda     #0                         
                        ldb     #$04                     ; Immediate
                        exg     d,y                        

                        jsr     L7159                    ; 65A9:  20 59 71

                        exg     d,y                      ; 65AC:  A0 05
                        lda     #0                         
                        ldb     #$05                     ; Immediate
                        exg     d,y                        

                        jsr     L7159                    ; 65AE:  20 59 71

                        ldb     #$20                     ; 65B1:  A9 20

                        stb     <$01                     ; 65B3:  85 01

                        ldb     #$64                     ; 65B5:  A9 64

                        exg     d,x                      ; 65B7:  A2 39
                        lda     #0                         
                        ldb     #$39                     ; Immediate
                        exg     d,x                        

                        jsr     L7a1f                    ; 65B9:  20 1F 7A

                        ldb     #$70                     ; 65BC:  A9 70

                        jsr     L7aea                    ; 65BE:  20 EA 7A

                        exg     d,x                      ; 65C1:  A6 1E
                        lda     #0                         
                        ldb     <$1e                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 65C3:  B4 42
                        lda     #0                         
                        ldb     $42,x                    ; Zero page, X
                        exg     d,y                        

                        exg     d,y                      ; 65C5:  84 0C
                        stb     <$0c                     ; Zero page
                        exg     d,y                        

                        tfr     y,d                      ; 65C7:  98
                        tstb                               

                        andcc   #$fe                     ; 65C8:  18

                        adcb    <$41                     ; 65C9:  65 41

                        stb     <$0d                     ; 65CB:  85 0D

                        jsr     L66c5                    ; 65CD:  20 C5 66

                        exg     d,y                      ; 65D0:  A4 0C
                        lda     #0                         
                        ldb     <$0c                     ; Zero page
                        exg     d,y                        

                        exg     d,y                      ; 65D2:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        jsr     L66c5                    ; 65D3:  20 C5 66

                        exg     d,y                      ; 65D6:  A4 0C
                        lda     #0                         
                        ldb     <$0c                     ; Zero page
                        exg     d,y                        

                        exg     d,y                      ; 65D8:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 65D9:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        jsr     L66c5                    ; 65DA:  20 C5 66

                        asl     ShieldSW                 ; 65DD:  0E 03 20

                        rol     <$7b                     ; 65E0:  26 7B

                        ldb     <$7b                     ; 65E2:  A5 7B

                        andb    #$1f                     ; 65E4:  29 1F

                        cmpb    #$07                     ; 65E6:  C9 07

                        bne     L6618                    ; 65E8:  D0 2E

                        inc     <$41                     ; 65EA:  E6 41

                        ldb     <$41                     ; 65EC:  A5 41

                        cmpb    #$03                     ; 65EE:  C9 03

                        bcc     L660c                    ; 65F0:  90 1A

                        exg     d,x                      ; 65F2:  A6 1E
                        lda     #0                         
                        ldb     <$1e                     ; Zero page
                        exg     d,x                        

                        ldb     #$ff                     ; 65F4:  A9 FF

                        stb     $42,x                    ; 65F6:  95 42

L65f8                   exg     d,x                      ; 65F8:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 65FA:  86 1E
                        stb     <$1e                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 65FC:  86 41
                        stb     <$41                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 65FE:  A2 F0
                        lda     #0                         
                        ldb     #$f0                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 6600:  86 77
                        stb     <$77                     ; Zero page
                        exg     d,x                        

                        ldb     <$42                     ; 6602:  A5 42

                        bpl     L6609                    ; 6604:  10 03

                        jsr     L7bc7                    ; 6606:  20 C7 7B

L6609                   jmp     L6c95                    ; 6609:  4C 95 6C

L660c                   inc     <$0d                     ; 660C:  E6 0D

                        exg     d,x                      ; 660E:  A6 0D
                        lda     #0                         
                        ldb     <$0d                     ; Zero page
                        exg     d,x                        

                        ldb     #$f4                     ; 6610:  A9 F4

                        stb     <$77                     ; 6612:  85 77

                        ldb     #$0b                     ; 6614:  A9 0B

                        stb     $44,x                    ; 6616:  95 44

L6618                   ldb     <$77                     ; 6618:  A5 77

                        bne     L6624                    ; 661A:  D0 08

                        ldb     #$ff                     ; 661C:  A9 FF

                        stb     <$42                     ; 661E:  85 42

                        stb     <$43                     ; 6620:  85 43

                        bmi     L65f8                    ; 6622:  30 D4

L6624                   ldb     <$76                     ; 6624:  A5 76

                        andb    #$07                     ; 6626:  29 07

                        bne     L6656                    ; 6628:  D0 2C

                        exg     d,x                      ; 662A:  A6 0D
                        lda     #0                         
                        ldb     <$0d                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 662C:  B4 44
                        lda     #0                         
                        ldb     $44,x                    ; Zero page, X
                        exg     d,y                        

                        andb    RotateLSW                ; 662E:  2C 07 24

                        bpl     L6634                    ; 6631:  10 01

                        exg     d,y                      ; 6633:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

L6634                   andb    RotateRSW                ; 6634:  2C 06 24

                        bpl     L663c                    ; 6637:  10 03

                        exg     d,y                      ; 6639:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bmi     L664c                    ; 663A:  30 10

L663c                   exg     d,y                      ; 663C:  C0 0B
                        cmpb    #$0b                     ; Immediate
                        exg     d,y                        

                        bcs     L664e                    ; 663E:  B0 0E

                        exg     d,y                      ; 6640:  C0 01
                        cmpb    #$01                     ; Immediate
                        exg     d,y                        

                        beq     L6648                    ; 6642:  F0 04

                        exg     d,y                      ; 6644:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        beq     L6654                    ; 6646:  F0 0C

L6648                   exg     d,y                      ; 6648:  A0 0B
                        lda     #0                         
                        ldb     #$0b                     ; Immediate
                        exg     d,y                        

                        bne     L6654                    ; 664A:  D0 08

L664c                   exg     d,y                      ; 664C:  A0 24
                        lda     #0                         
                        ldb     #$24                     ; Immediate
                        exg     d,y                        

L664e                   exg     d,y                      ; 664E:  C0 25
                        cmpb    #$25                     ; Immediate
                        exg     d,y                        

                        bcc     L6654                    ; 6650:  90 02

                        exg     d,y                      ; 6652:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

L6654                   exg     d,y                      ; 6654:  94 44
                        stb     $44,x                    ; Zero page, X
                        exg     d,y                        

L6656                   ldb     #$00                     ; 6656:  A9 00

                        rts                              ; 6658:  60

L6659                   lsr     <$73                     ; 6659:  46 73

                        ldb     <$22                     ; 665B:  A5 22

                        beq     L6680                    ; 665D:  F0 21

                        ldb     $0219                    ; 665F:  AD 19 02

                        bmi     L6680                    ; 6662:  30 1C

                        beq     L6680                    ; 6664:  F0 1A

                        ldb     $02ef                    ; 6666:  AD EF 02

                        beq     L6680                    ; 6669:  F0 15

                        asl     ShieldSW                 ; 666B:  0E 03 20

                        ror     <$73                     ; 666E:  66 73

                        bpl     L6680                    ; 6670:  10 0E

                        exg     d,y                      ; 6672:  A0 57
                        lda     #0                         
                        ldb     #$57                     ; Immediate
                        exg     d,y                        

                        jsr     L7713                    ; 6674:  20 13 77

                        ldb     <$76                     ; 6677:  A5 76

                        andb    #$03                     ; 6679:  29 03

                        bne     L6680                    ; 667B:  D0 03

                        dec     $02ef                    ; 667D:  CE EF 02

L6680                   rts                              ; 6680:  60

L6681                   andb    <$73                     ; 6681:  24 73

                        bpl     L6680                    ; 6683:  10 FB

                        ldb     $02ef                    ; 6685:  AD EF 02

                        andb    #$f0                     ; 6688:  29 F0

                        cmpb    #$60                     ; 668A:  C9 60

                        bcs     L6690                    ; 668C:  B0 02

                        ldb     #$60                     ; 668E:  A9 60

L6690                   pshs    b                        ; 6690:  48

                        exg     d,x                      ; 6691:  A2 12
                        lda     #0                         
                        ldb     #$12                     ; Immediate
                        exg     d,x                        

                        ldb     #$50                     ; 6693:  A9 50

                        exg     d,x                      ; 6695:  86 10
                        stb     <$10                     ; Zero page
                        exg     d,x                        

                        stb     <$11                     ; 6697:  85 11

                        exg     d,x                      ; 6699:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 669B:  86 09
                        stb     <$09                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 669D:  86 0A
                        stb     <$0a                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 669F:  86 12
                        stb     <$12                     ; Zero page
                        exg     d,x                        

                        jsr     L6221                    ; 66A1:  20 21 62

                        exg     d,x                      ; 66A4:  A2 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,x                        

                        puls    b                        ; 66A6:  68

                        stb     <$09                     ; 66A7:  85 09

                        jsr     L6e96                    ; 66A9:  20 96 6E

                        ldb     #$00                     ; 66AC:  A9 00

                        stb     <$09                     ; 66AE:  85 09

                        jmp     L6e96                    ; 66B0:  4C 96 6E

L66b3                   ldb     #$06                     ; 66B3:  A9 06

                        stb     $02ee                    ; 66B5:  8D EE 02

                        exg     d,x                      ; 66B8:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        tfr     x,d                      ; 66BA:  8A
                        tstb                               

L66bb                   stb     $0200,x                  ; 66BB:  9D 00 02

                        stb     $0300,x                  ; 66BE:  9D 00 03

                        exg     d,x                      ; 66C1:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        bne     L66bb                    ; 66C2:  D0 F7

                        rts                              ; 66C4:  60

L66c5                   ldb     $0044,y                  ; 66C5:  B9 44 00

                        aslb                             ; 66C8:  0A

                        lda     #0                       ; 66C9:  A8
                        tstb                               
                        tfr     d,y                        

                        bne     L66d9                    ; 66CA:  D0 0D

                        ldb     <$42                     ; 66CC:  A5 42

                        andb    <$43                     ; 66CE:  25 43

                        bmi     L66d9                    ; 66D0:  30 07

                        exg     d,x                      ; 66D2:  A2 B0
                        lda     #0                         
                        ldb     #$b0                     ; Immediate
                        exg     d,x                        

                        ldb     #$56                     ; 66D4:  A9 56

                        jmp     L7a18                    ; 66D6:  4C 18 7A

L66d9                   jmp     L79f8                    ; 66D9:  4C F8 79

L66dc                   exg     d,x                      ; 66DC:  A2 20
                        lda     #0                         
                        ldb     #$20                     ; Immediate
                        exg     d,x                        

                        ldb     #$00                     ; 66DE:  A9 00

                        stb     <$19                     ; 66E0:  85 19

L66e2                   ldb     $0200,x                  ; 66E2:  BD 00 02

                        bne     L66eb                    ; 66E5:  D0 04

L66e7                   exg     d,y                      ; 66E7:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L66e2                    ; 66E8:  10 F8

                        rts                              ; 66EA:  60

L66eb                   bpl     L6750                    ; 66EB:  10 63

                        jsr     L70b6                    ; 66ED:  20 B6 70

                        lsrb                             ; 66F0:  4A

                        lsrb                             ; 66F1:  4A

                        lsrb                             ; 66F2:  4A

                        lsrb                             ; 66F3:  4A

                        exg     d,x                      ; 66F4:  E0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,x                        

                        bne     L66ff                    ; 66F6:  D0 07

                        ldb     <$76                     ; 66F8:  A5 76

                        andb    #$01                     ; 66FA:  29 01

                        lsrb                             ; 66FC:  4A

                        beq     L6700                    ; 66FD:  F0 01

L66ff                   orcc    #$01                     ; 66FF:  38

L6700                   adcb    $0200,x                  ; 6700:  7D 00 02

                        bmi     L672a                    ; 6703:  30 25

                        exg     d,x                      ; 6705:  E0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,x                        

                        beq     L671c                    ; 6707:  F0 13

                        bcs     L6722                    ; 6709:  B0 17

                        dec     $02e7                    ; 670B:  CE E7 02

                        bne     L6715                    ; 670E:  D0 05

                        exg     d,y                      ; 6710:  A0 7F
                        lda     #0                         
                        ldb     #$7f                     ; Immediate
                        exg     d,y                        

                        exg     d,y                      ; 6712:  8C EC 02
                        stb     $02ec                    ; Absolute
                        exg     d,y                        

L6715                   ldb     #$00                     ; 6715:  A9 00

                        stb     $0200,x                  ; 6717:  9D 00 02

                        beq     L66e7                    ; 671A:  F0 CB

L671c                   jsr     L6a1b                    ; 671C:  20 1B 6A

                        jmp     L6715                    ; 671F:  4C 15 67

L6722                   ldb     $02e9                    ; 6722:  AD E9 02

                        stb     $02e8                    ; 6725:  8D E8 02

                        bne     L6715                    ; 6728:  D0 EB

L672a                   stb     $0200,x                  ; 672A:  9D 00 02

                        andb    #$f0                     ; 672D:  29 F0

                        andcc   #$fe                     ; 672F:  18

                        adcb    #$10                     ; 6730:  69 10

                        exg     d,x                      ; 6732:  E0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,x                        

                        bne     L6738                    ; 6734:  D0 02

                        ldb     #$f0                     ; 6736:  A9 F0

L6738                   lda     #0                       ; 6738:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     $02a5,x                  ; 6739:  BD A5 02

                        stb     <$05                     ; 673C:  85 05

                        ldb     $0263,x                  ; 673E:  BD 63 02

                        stb     <$06                     ; 6741:  85 06

                        ldb     $02c6,x                  ; 6743:  BD C6 02

                        stb     <$07                     ; 6746:  85 07

                        ldb     $0284,x                  ; 6748:  BD 84 02

                        stb     <$08                     ; 674B:  85 08

                        jmp     L67e5                    ; 674D:  4C E5 67

L6750                   stb     <$1b                     ; 6750:  85 1B

                        asl     <$1b                     ; 6752:  06 1B

                        bpl     L676b                    ; 6754:  10 15

                        exg     d,x                      ; 6756:  E0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,x                        

                        bcs     L676b                    ; 6758:  B0 11

                        andb    #$3c                     ; 675A:  29 3C

                        lsrb                             ; 675C:  4A

                        lsrb                             ; 675D:  4A

                        lda     #0                       ; 675E:  A8
                        tstb                               
                        tfr     d,y                        

                        exg     d,y                      ; 675F:  84 1C
                        stb     <$1c                     ; Zero page
                        exg     d,y                        

                        ldb     $02f8,y                  ; 6761:  B9 F8 02

                        stb     <$1d                     ; 6764:  85 1D

                        bmi     L676b                    ; 6766:  30 03

                        jsr     L48be                    ; 6768:  20 BE 48

L676b                   exg     d,y                      ; 676B:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        andcc   #$fe                     ; 676D:  18

                        ldb     $0221,x                  ; 676E:  BD 21 02

                        bpl     L6774                    ; 6771:  10 01

                        exg     d,y                      ; 6773:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

L6774                   adcb    $02a5,x                  ; 6774:  7D A5 02

                        stb     $02a5,x                  ; 6777:  9D A5 02

                        stb     <$05                     ; 677A:  85 05

                        tfr     y,d                      ; 677C:  98
                        tstb                               

                        adcb    $0263,x                  ; 677D:  7D 63 02

                        cmpb    #$20                     ; 6780:  C9 20

                        bcc     L67ae                    ; 6782:  90 2A

                        exg     d,x                      ; 6784:  E0 1A
                        cmpb    #$1a                     ; Immediate
                        exg     d,x                        

                        bne     L678e                    ; 6786:  D0 06

                        jsr     L67eb                    ; 6788:  20 EB 67

L678b                   jmp     L66e7                    ; 678B:  4C E7 66

L678e                   andb    <$1b                     ; 678E:  24 1B

                        bpl     L67ac                    ; 6790:  10 1A

                        exg     d,y                      ; 6792:  A4 1D
                        lda     #0                         
                        ldb     <$1d                     ; Zero page
                        exg     d,y                        

                        bmi     L67ac                    ; 6794:  30 16

                        exg     d,y                      ; 6796:  C0 04
                        cmpb    #$04                     ; Immediate
                        exg     d,y                        

                        bcs     L67ac                    ; 6798:  B0 12

                        dec     $02e7                    ; 679A:  CE E7 02

                        dec     $02ff                    ; 679D:  CE FF 02

                        exg     d,y                      ; 67A0:  A4 1C
                        lda     #0                         
                        ldb     <$1c                     ; Zero page
                        exg     d,y                        

                        ldb     #$00                     ; 67A2:  A9 00

                        stb     $0200,x                  ; 67A4:  9D 00 02

                        stb     $02f8,y                  ; 67A7:  99 F8 02

                        beq     L678b                    ; 67AA:  F0 DF

L67ac                   andb    #$1f                     ; 67AC:  29 1F

L67ae                   stb     $0263,x                  ; 67AE:  9D 63 02

                        andb    #$7f                     ; 67B1:  29 7F

                        stb     <$06                     ; 67B3:  85 06

                        andcc   #$fe                     ; 67B5:  18

                        exg     d,y                      ; 67B6:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        ldb     $0242,x                  ; 67B8:  BD 42 02

                        bpl     L67be                    ; 67BB:  10 01

                        exg     d,y                      ; 67BD:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

L67be                   adcb    $02c6,x                  ; 67BE:  7D C6 02

                        stb     $02c6,x                  ; 67C1:  9D C6 02

                        stb     <$07                     ; 67C4:  85 07

                        tfr     y,d                      ; 67C6:  98
                        tstb                               

                        adcb    $0284,x                  ; 67C7:  7D 84 02

                        cmpb    #$18                     ; 67CA:  C9 18

                        bcc     L67d6                    ; 67CC:  90 08

                        beq     L67d4                    ; 67CE:  F0 04

                        ldb     #$17                     ; 67D0:  A9 17

                        bne     L67d6                    ; 67D2:  D0 02

L67d4                   ldb     #$00                     ; 67D4:  A9 00

L67d6                   stb     $0284,x                  ; 67D6:  9D 84 02

                        stb     <$08                     ; 67D9:  85 08

                        ldb     $0200,x                  ; 67DB:  BD 00 02

                        andb    #$03                     ; 67DE:  29 03

                        lda     #0                       ; 67E0:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     $680c,y                  ; 67E1:  B9 0C 68

                        lda     #0                       ; 67E4:  A8
                        tstb                               
                        tfr     d,y                        

L67e5                   jsr     L6ba8                    ; 67E5:  20 A8 6B

                        jmp     L66e7                    ; 67E8:  4C E7 66

L67eb                   ldb     $02e9                    ; 67EB:  AD E9 02

                        stb     $02e8                    ; 67EE:  8D E8 02

                        tfr     y,d                      ; 67F1:  98
                        tstb                               

                        pshs    b                        ; 67F2:  48

                        exg     d,y                      ; 67F3:  A0 17
                        lda     #0                         
                        ldb     #$17                     ; Immediate
                        exg     d,y                        

                        jsr     L770d                    ; 67F5:  20 0D 77

                        puls    b                        ; 67F8:  68

                        lda     #0                       ; 67F9:  A8
                        tstb                               
                        tfr     d,y                        

L67fa                   ldb     #$00                     ; 67FA:  A9 00

                        stb     $021a                    ; 67FC:  8D 1A 02

                        stb     $023b                    ; 67FF:  8D 3B 02

                        stb     $025c                    ; 6802:  8D 5C 02

                        stb     $027d                    ; 6805:  8D 7D 02

                        stb     $02bf                    ; 6808:  8D BF 02

L680b                   rts                              ; 680B:  60

                        fcb     $00,$E0,$F0,$E0            
L6810                   ldb     <$22                     ; 6810:  A5 22

                        beq     L680b                    ; 6812:  F0 F7

                        ldb     $0219                    ; 6814:  AD 19 02

                        bmi     L680b                    ; 6817:  30 F2

                        bne     L6831                    ; 6819:  D0 16

                        dec     $02eb                    ; 681B:  CE EB 02

                        bne     L680b                    ; 681E:  D0 EB

                        jsr     L68fe                    ; 6820:  20 FE 68

                        bne     L680b                    ; 6823:  D0 E6

                        exg     d,x                      ; 6825:  A2 01
                        lda     #0                         
                        ldb     #$01                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 6827:  8E 19 02
                        stb     $0219                    ; Absolute
                        exg     d,x                        

                        exg     d,x                      ; 682A:  86 8B
                        stb     <$8b                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 682C:  A0 47
                        lda     #0                         
                        ldb     #$47                     ; Immediate
                        exg     d,y                        

                        jmp     L7716                    ; 682E:  4C 16 77

L6831                   ldb     RotateLSW                ; 6831:  AD 07 24

                        bpl     L683a                    ; 6834:  10 04

                        ldb     #$03                     ; 6836:  A9 03

                        bne     L6841                    ; 6838:  D0 07

L683a                   ldb     RotateRSW                ; 683A:  AD 06 24

                        bpl     L6846                    ; 683D:  10 07

                        ldb     #$fd                     ; 683F:  A9 FD

L6841                   andcc   #$fe                     ; 6841:  18

                        adcb    <$79                     ; 6842:  65 79

                        stb     <$79                     ; 6844:  85 79

L6846                   ldb     <$76                     ; 6846:  A5 76

                        lsrb                             ; 6848:  4A

                        bcs     L680b                    ; 6849:  B0 C0

                        ldb     ThrustSW                 ; 684B:  AD 05 24

                        bpl     L6885                    ; 684E:  10 35

                        ldb     #$40                     ; 6850:  A9 40

                        stb     <$12                     ; 6852:  85 12

                        ldb     $023a                    ; 6854:  AD 3A 02

                        jsr     L68b6                    ; 6857:  20 B6 68

                        adcb    <$7c                     ; 685A:  65 7C

                        lda     #0                       ; 685C:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     <$11                     ; 685D:  A5 11

                        adcb    $023a                    ; 685F:  6D 3A 02

                        jsr     L68ea                    ; 6862:  20 EA 68

                        stb     $023a                    ; 6865:  8D 3A 02

                        exg     d,x                      ; 6868:  86 7C
                        stb     <$7c                     ; Zero page
                        exg     d,x                        

                        ldb     #$00                     ; 686A:  A9 00

                        stb     <$12                     ; 686C:  85 12

                        ldb     $025b                    ; 686E:  AD 5B 02

                        jsr     L68b6                    ; 6871:  20 B6 68

                        adcb    <$7d                     ; 6874:  65 7D

                        lda     #0                       ; 6876:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     <$11                     ; 6877:  A5 11

                        adcb    $025b                    ; 6879:  6D 5B 02

                        jsr     L68ea                    ; 687C:  20 EA 68

                        stb     $025b                    ; 687F:  8D 5B 02

                        exg     d,x                      ; 6882:  86 7D
                        stb     <$7d                     ; Zero page
                        exg     d,x                        

                        rts                              ; 6884:  60

L6885                   ldb     #$00                     ; 6885:  A9 00

                        lda     #0                       ; 6887:  AA
                        tstb                               
                        tfr     d,x                        

                        orcc    #$01                     ; 6888:  38

                        sbcb    $023a                    ; 6889:  ED 3A 02

                        aslb                             ; 688C:  0A

                        aslb                             ; 688D:  0A

                        bcc     L6892                    ; 688E:  90 02

                        exg     d,y                      ; 6890:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        andcc   #$fe                     ; 6891:  18

L6892                   adcb    <$7c                     ; 6892:  65 7C

                        stb     <$7c                     ; 6894:  85 7C

                        tfr     x,d                      ; 6896:  8A
                        tstb                               

                        adcb    $023a                    ; 6897:  6D 3A 02

                        stb     $023a                    ; 689A:  8D 3A 02

                        ldb     #$00                     ; 689D:  A9 00

                        lda     #0                       ; 689F:  AA
                        tstb                               
                        tfr     d,x                        

                        orcc    #$01                     ; 68A0:  38

                        sbcb    $025b                    ; 68A1:  ED 5B 02

                        aslb                             ; 68A4:  0A

                        aslb                             ; 68A5:  0A

                        bcc     L68aa                    ; 68A6:  90 02

                        exg     d,y                      ; 68A8:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        andcc   #$fe                     ; 68A9:  18

L68aa                   adcb    <$7d                     ; 68AA:  65 7D

                        stb     <$7d                     ; 68AC:  85 7D

                        tfr     x,d                      ; 68AE:  8A
                        tstb                               

                        adcb    $025b                    ; 68AF:  6D 5B 02

                        stb     $025b                    ; 68B2:  8D 5B 02

                        rts                              ; 68B5:  60

L68b6                   bpl     L68bb                    ; 68B6:  10 03

                        jsr     L70b6                    ; 68B8:  20 B6 70

L68bb                   lsrb                             ; 68BB:  4A

                        lsrb                             ; 68BC:  4A

                        lsrb                             ; 68BD:  4A

                        lda     #0                       ; 68BE:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     $68e1,x                  ; 68BF:  BD E1 68

                        andb    <$73                     ; 68C2:  24 73

                        bpl     L68c7                    ; 68C4:  10 01

                        lsrb                             ; 68C6:  4A

L68c7                   stb     <$11                     ; 68C7:  85 11

                        ldb     <$79                     ; 68C9:  A5 79

                        andcc   #$fe                     ; 68CB:  18

                        adcb    <$12                     ; 68CC:  65 12

                        jsr     L7101                    ; 68CE:  20 01 71

                        jsr     L49bb                    ; 68D1:  20 BB 49

                        exg     d,y                      ; 68D4:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        aslb                             ; 68D6:  0A

                        bcc     L68da                    ; 68D7:  90 01

                        exg     d,y                      ; 68D9:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

L68da                   aslb                             ; 68DA:  0A

                        exg     d,y                      ; 68DB:  84 11
                        stb     <$11                     ; Zero page
                        exg     d,y                        

                        rol     <$11                     ; 68DD:  26 11

                        andcc   #$fe                     ; 68DF:  18

                        rts                              ; 68E0:  60

                        fcb     $80,$70,$60,$50            
                        fcb     $40,$30,$20,$10            
                        fcb     $11                        
L68ea                   bmi     L68f5                    ; 68EA:  30 09

                        cmpb    #$40                     ; 68EC:  C9 40

                        bcc     L68fd                    ; 68EE:  90 0D

                        exg     d,x                      ; 68F0:  A2 FF
                        lda     #0                         
                        ldb     #$ff                     ; Immediate
                        exg     d,x                        

                        ldb     #$3f                     ; 68F2:  A9 3F

                        rts                              ; 68F4:  60

L68f5                   cmpb    #$c1                     ; 68F5:  C9 C1

                        bcs     L68fd                    ; 68F7:  B0 04

                        exg     d,x                      ; 68F9:  A2 01
                        lda     #0                         
                        ldb     #$01                     ; Immediate
                        exg     d,x                        

                        ldb     #$c1                     ; 68FB:  A9 C1

L68fd                   rts                              ; 68FD:  60

L68fe                   ldb     <$76                     ; 68FE:  A5 76

                        andb    #$03                     ; 6900:  29 03

                        bne     L6929                    ; 6902:  D0 25

                        inc     <$de                     ; 6904:  E6 DE

                        bne     L6929                    ; 6906:  D0 21

                        ldb     #$02                     ; 6908:  A9 02

                        stb     <$10                     ; 690A:  85 10

L690c                   exg     d,x                      ; 690C:  A2 18
                        lda     #0                         
                        ldb     #$18                     ; Immediate
                        exg     d,x                        

L690e                   ldb     $0200,x                  ; 690E:  BD 00 02

                        aslb                             ; 6911:  0A

                        bmi     L6922                    ; 6912:  30 0E

                        andb    <$10                     ; 6914:  25 10

                        beq     L6922                    ; 6916:  F0 0A

                        dec     $02e7                    ; 6918:  CE E7 02

                        ldb     #$00                     ; 691B:  A9 00

                        stb     $0200,x                  ; 691D:  9D 00 02

                        beq     L6929                    ; 6920:  F0 07

L6922                   exg     d,y                      ; 6922:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L690e                    ; 6923:  10 E9

                        asl     <$10                     ; 6925:  06 10

                        bpl     L690c                    ; 6927:  10 E3

L6929                   exg     d,x                      ; 6929:  A2 18
                        lda     #0                         
                        ldb     #$18                     ; Immediate
                        exg     d,x                        

L692b                   ldb     $0200,x                  ; 692B:  BD 00 02

                        beq     L694e                    ; 692E:  F0 1E

                        ldb     $0263,x                  ; 6930:  BD 63 02

                        orcc    #$01                     ; 6933:  38

                        sbcb    $027c                    ; 6934:  ED 7C 02

                        cmpb    #$05                     ; 6937:  C9 05

                        bcc     L693f                    ; 6939:  90 04

                        cmpb    #$fb                     ; 693B:  C9 FB

                        bcc     L694e                    ; 693D:  90 0F

L693f                   ldb     $0284,x                  ; 693F:  BD 84 02

                        orcc    #$01                     ; 6942:  38

                        sbcb    $029d                    ; 6943:  ED 9D 02

                        cmpb    #$05                     ; 6946:  C9 05

                        bcc     L6953                    ; 6948:  90 09

                        cmpb    #$fb                     ; 694A:  C9 FB

                        bcs     L6953                    ; 694C:  B0 05

L694e                   exg     d,y                      ; 694E:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L692b                    ; 694F:  10 DA

                        exg     d,x                      ; 6951:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        rts                              ; 6952:  60

L6953                   inc     $02eb                    ; 6953:  EE EB 02

L6956                   rts                              ; 6956:  60

                        fcb     $1C,$10                    
L6959                   exg     d,x                      ; 6959:  A2 18
                        lda     #0                         
                        ldb     #$18                     ; Immediate
                        exg     d,x                        

                        ldb     $02ec                    ; 695B:  AD EC 02

                        beq     L6963                    ; 695E:  F0 03

                        jmp     L69de                    ; 6960:  4C DE 69

L6963                   ldb     <$22                     ; 6963:  A5 22

                        beq     L696e                    ; 6965:  F0 07

                        ldb     $0219                    ; 6967:  AD 19 02

                        beq     L6956                    ; 696A:  F0 EA

                        bmi     L6956                    ; 696C:  30 E8

L696e                   ldb     $021a                    ; 696E:  AD 1A 02

                        bne     L6956                    ; 6971:  D0 E3

                        stb     $02ff                    ; 6973:  8D FF 02

                        exg     d,x                      ; 6976:  A6 1E
                        lda     #0                         
                        ldb     <$1e                     ; Zero page
                        exg     d,x                        

                        stb     $d1,x                    ; 6978:  95 D1

                        exg     d,x                      ; 697A:  A2 06
                        lda     #0                         
                        ldb     #$06                     ; Immediate
                        exg     d,x                        

L697c                   stb     $02f8,x                  ; 697C:  9D F8 02

                        exg     d,y                      ; 697F:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L697c                    ; 6980:  10 FA

                        ldb     Option65                 ; 6982:  AD 01 28

                        andb    #$02                     ; 6985:  29 02

                        orb     #$04                     ; 6987:  09 04

                        andcc   #$fe                     ; 6989:  18

                        adcb    $02f0                    ; 698A:  6D F0 02

                        lda     #0                       ; 698D:  A8
                        tstb                               
                        tfr     d,y                        

                        cmpb    #$0a                     ; 698E:  C9 0A

                        bcc     L6994                    ; 6990:  90 02

                        ldb     #$0a                     ; 6992:  A9 0A

L6994                   stb     <$d9                     ; 6994:  85 D9

                        jsr     L70b6                    ; 6996:  20 B6 70

                        stb     <$db                     ; 6999:  85 DB

                        andcc   #$fe                     ; 699B:  18

                        adcb    #$eb                     ; 699C:  69 EB

                        stb     <$dc                     ; 699E:  85 DC

                        jsr     L70b6                    ; 69A0:  20 B6 70

                        stb     <$da                     ; 69A3:  85 DA

                        exg     d,y                      ; 69A5:  C0 3F
                        cmpb    #$3f                     ; Immediate
                        exg     d,y                        

                        bcc     L69b0                    ; 69A7:  90 07

                        ldb     <$22                     ; 69A9:  A5 22

                        bne     L69b3                    ; 69AB:  D0 06

                        jsr     L66b3                    ; 69AD:  20 B3 66

L69b0                   inc     $02f0                    ; 69B0:  EE F0 02

L69b3                   exg     d,y                      ; 69B3:  C0 09
                        cmpb    #$09                     ; Immediate
                        exg     d,y                        

                        bcc     L69b9                    ; 69B5:  90 02

                        exg     d,y                      ; 69B7:  A0 09
                        lda     #0                         
                        ldb     #$09                     ; Immediate
                        exg     d,y                        

L69b9                   exg     d,y                      ; 69B9:  8C E7 02
                        stb     $02e7                    ; Absolute
                        exg     d,y                        

                        exg     d,y                      ; 69BC:  84 09
                        stb     <$09                     ; Zero page
                        exg     d,y                        

                        exg     d,x                      ; 69BE:  A2 18
                        lda     #0                         
                        ldb     #$18                     ; Immediate
                        exg     d,x                        

                        ldb     $02ee                    ; 69C0:  AD EE 02

                        cmpb    #$0a                     ; 69C3:  C9 0A

                        bcs     L69ca                    ; 69C5:  B0 03

                        inc     $02ee                    ; 69C7:  EE EE 02

L69ca                   exg     d,y                      ; 69CA:  A0 1A
                        lda     #0                         
                        ldb     #$1a                     ; Immediate
                        exg     d,y                        

L69cc                   jsr     L69e7                    ; 69CC:  20 E7 69

                        exg     d,y                      ; 69CF:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        dec     <$09                     ; 69D0:  C6 09

                        bne     L69cc                    ; 69D2:  D0 F8

                        ldb     #$7f                     ; 69D4:  A9 7F

                        stb     $02e8                    ; 69D6:  8D E8 02

                        ldb     #$30                     ; 69D9:  A9 30

                        stb     $02ed                    ; 69DB:  8D ED 02

L69de                   ldb     #$00                     ; 69DE:  A9 00

L69e0                   stb     $0200,x                  ; 69E0:  9D 00 02

                        exg     d,y                      ; 69E3:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L69e0                    ; 69E4:  10 FA

                        rts                              ; 69E6:  60

L69e7                   ldb     Pk_SkRes_Rnd             ; 69E7:  AD 0A 2C

                        andb    #$38                     ; 69EA:  29 38

                        orb     #$04                     ; 69EC:  09 04

                        stb     $0200,x                  ; 69EE:  9D 00 02

                        jsr     L6a3b                    ; 69F1:  20 3B 6A

                        ldb     Pk_SkRes_Rnd             ; 69F4:  AD 0A 2C

                        lsrb                             ; 69F7:  4A

                        andb    #$1f                     ; 69F8:  29 1F

                        bcc     L6a0f                    ; 69FA:  90 13

                        cmpb    #$18                     ; 69FC:  C9 18

                        bcc     L6a02                    ; 69FE:  90 02

                        andb    #$17                     ; 6A00:  29 17

L6a02                   stb     $0284,x                  ; 6A02:  9D 84 02

                        ldb     #$00                     ; 6A05:  A9 00

                        stb     $0263,x                  ; 6A07:  9D 63 02

                        stb     $02a5,x                  ; 6A0A:  9D A5 02

                        beq     L6a1a                    ; 6A0D:  F0 0B

L6a0f                   stb     $0263,x                  ; 6A0F:  9D 63 02

                        ldb     #$00                     ; 6A12:  A9 00

                        stb     $0284,x                  ; 6A14:  9D 84 02

                        stb     $02c6,x                  ; 6A17:  9D C6 02

L6a1a                   rts                              ; 6A1A:  60

L6a1b                   ldb     #$60                     ; 6A1B:  A9 60

                        stb     $02be                    ; 6A1D:  8D BE 02

                        stb     $02df                    ; 6A20:  8D DF 02

                        ldb     #$00                     ; 6A23:  A9 00

                        stb     $023a                    ; 6A25:  8D 3A 02

                        stb     $025b                    ; 6A28:  8D 5B 02

                        ldb     #$10                     ; 6A2B:  A9 10

                        stb     $027c                    ; 6A2D:  8D 7C 02

                        ldb     #$0c                     ; 6A30:  A9 0C

                        stb     $029d                    ; 6A32:  8D 9D 02

                        ldb     #$ff                     ; 6A35:  A9 FF

                        stb     $02ef                    ; 6A37:  8D EF 02

                        rts                              ; 6A3A:  60

L6a3b                   ldb     Pk_SkRes_Rnd             ; 6A3B:  AD 0A 2C

                        andb    #$8f                     ; 6A3E:  29 8F

                        bpl     L6a44                    ; 6A40:  10 02

                        orb     #$f0                     ; 6A42:  09 F0

L6a44                   andcc   #$fe                     ; 6A44:  18

                        adcb    $0221,y                  ; 6A45:  79 21 02

                        jsr     L6a62                    ; 6A48:  20 62 6A

                        stb     $0221,x                  ; 6A4B:  9D 21 02

                        ldb     Pk_SkRes_Rnd             ; 6A4E:  AD 0A 2C

                        andb    #$8f                     ; 6A51:  29 8F

                        bpl     L6a57                    ; 6A53:  10 02

                        orb     #$f0                     ; 6A55:  09 F0

L6a57                   andcc   #$fe                     ; 6A57:  18

                        adcb    $0242,y                  ; 6A58:  79 42 02

                        jsr     L6a62                    ; 6A5B:  20 62 6A

                        stb     $0242,x                  ; 6A5E:  9D 42 02

                        rts                              ; 6A61:  60

L6a62                   bpl     L6a71                    ; 6A62:  10 0D

                        cmpb    <$dc                     ; 6A64:  C5 DC

                        bcs     L6a6a                    ; 6A66:  B0 02

                        ldb     <$dc                     ; 6A68:  A5 DC

L6a6a                   cmpb    <$db                     ; 6A6A:  C5 DB

                        bcc     L6a7d                    ; 6A6C:  90 0F

                        ldb     <$db                     ; 6A6E:  A5 DB

                        rts                              ; 6A70:  60

L6a71                   cmpb    <$d9                     ; 6A71:  C5 D9

                        bcs     L6a77                    ; 6A73:  B0 02

                        ldb     <$d9                     ; 6A75:  A5 D9

L6a77                   cmpb    <$da                     ; 6A77:  C5 DA

                        bcc     L6a7d                    ; 6A79:  90 02

                        ldb     <$da                     ; 6A7B:  A5 DA

L6a7d                   rts                              ; 6A7D:  60

L6a7e                   ldb     <$22                     ; 6A7E:  A5 22

                        beq     L6a8f                    ; 6A80:  F0 0D

                        ldb     #$81                     ; 6A82:  A9 81

                        exg     d,x                      ; 6A84:  A2 C3
                        lda     #0                         
                        ldb     #$c3                     ; Immediate
                        exg     d,x                        

                        jsr     L7cd5                    ; 6A86:  20 D5 7C

                        exg     d,y                      ; 6A89:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        ldb     <$1e                     ; 6A8B:  A5 1E

                        bne     L6a91                    ; 6A8D:  D0 02

L6a8f                   exg     d,y                      ; 6A8F:  A0 10
                        lda     #0                         
                        ldb     #$10                     ; Immediate
                        exg     d,y                        

L6a91                   exg     d,y                      ; 6A91:  84 01
                        stb     <$01                     ; Zero page
                        exg     d,y                        

                        ldb     #$19                     ; 6A93:  A9 19

                        exg     d,x                      ; 6A95:  A2 DB
                        lda     #0                         
                        ldb     #$db                     ; Immediate
                        exg     d,x                        

                        jsr     L7a1f                    ; 6A97:  20 1F 7A

                        ldb     #$70                     ; 6A9A:  A9 70

                        jsr     L7aea                    ; 6A9C:  20 EA 7A

                        ldb     <$22                     ; 6A9F:  A5 22

                        cmpb    #$02                     ; 6AA1:  C9 02

                        bcc     L6ab9                    ; 6AA3:  90 14

                        ldb     <$1e                     ; 6AA5:  A5 1E

                        bne     L6ab9                    ; 6AA7:  D0 10

                        ldb     $0219                    ; 6AA9:  AD 19 02

                        bne     L6ab9                    ; 6AAC:  D0 0B

                        ldb     $02eb                    ; 6AAE:  AD EB 02

                        bmi     L6ab9                    ; 6AB1:  30 06

                        ldb     <$76                     ; 6AB3:  A5 76

                        andb    #$10                     ; 6AB5:  29 10

                        beq     L6ac1                    ; 6AB7:  F0 08

L6ab9                   ldb     #$62                     ; 6AB9:  A9 62

                        exg     d,y                      ; 6ABB:  A0 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,y                        

                        orcc    #$01                     ; 6ABD:  38

                        jsr     L7c95                    ; 6ABE:  20 95 7C

L6ac1                   exg     d,y                      ; 6AC1:  A4 6F
                        lda     #0                         
                        ldb     <$6f                     ; Zero page
                        exg     d,y                        

                        ldb     #$00                     ; 6AC3:  A9 00

                        jsr     L6b74                    ; 6AC5:  20 74 6B

                        ldb     #$28                     ; 6AC8:  A9 28

                        jsr     L7c6f                    ; 6ACA:  20 6F 7C

                        ldb     <$1e                     ; 6ACD:  A5 1E

                        bne     L6adb                    ; 6ACF:  D0 0A

                        ldb     $0219                    ; 6AD1:  AD 19 02

                        bmi     L6adb                    ; 6AD4:  30 05

                        beq     L6adb                    ; 6AD6:  F0 03

                        jsr     L6b89                    ; 6AD8:  20 89 6B

L6adb                   ldb     #$00                     ; 6ADB:  A9 00

                        stb     <$01                     ; 6ADD:  85 01

                        orb     <$24                     ; 6ADF:  05 24

                        orb     <$25                     ; 6AE1:  05 25

                        beq     L6b03                    ; 6AE3:  F0 1E

                        ldb     #$74                     ; 6AE5:  A9 74

                        exg     d,x                      ; 6AE7:  A2 DB
                        lda     #0                         
                        ldb     #$db                     ; Immediate
                        exg     d,x                        

                        jsr     L7a1f                    ; 6AE9:  20 1F 7A

                        ldb     #$50                     ; 6AEC:  A9 50

                        jsr     L7aea                    ; 6AEE:  20 EA 7A

                        ldb     #$23                     ; 6AF1:  A9 23

                        exg     d,y                      ; 6AF3:  A0 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,y                        

                        orcc    #$01                     ; 6AF5:  38

                        jsr     L7c95                    ; 6AF6:  20 95 7C

                        exg     d,y                      ; 6AF9:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        exg     d,y                      ; 6AFB:  84 13
                        stb     <$13                     ; Zero page
                        exg     d,y                        

                        jsr     L79f8                    ; 6AFD:  20 F8 79

                        jsr     L6d42                    ; 6B00:  20 42 6D

L6b03                   ldb     <$22                     ; 6B03:  A5 22

                        beq     L6b1d                    ; 6B05:  F0 16

                        ldb     <$f9                     ; 6B07:  A5 F9

                        bmi     L6b1d                    ; 6B09:  30 12

                        exg     d,y                      ; 6B0B:  A0 0D
                        lda     #0                         
                        ldb     #$0d                     ; Immediate
                        exg     d,y                        

                        ldb     #$00                     ; 6B0D:  A9 00

                        jsr     L7162                    ; 6B0F:  20 62 71

                        ldb     #$68                     ; 6B12:  A9 68

                        andcc   #$fe                     ; 6B14:  18

                        adcb    <$20                     ; 6B15:  65 20

                        exg     d,y                      ; 6B17:  A0 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,y                        

                        orcc    #$01                     ; 6B19:  38

                        jsr     L7c95                    ; 6B1A:  20 95 7C

L6b1d                   exg     d,x                      ; 6B1D:  A2 10
                        lda     #0                         
                        ldb     #$10                     ; Immediate
                        exg     d,x                        

                        ldb     <$22                     ; 6B1F:  A5 22

                        cmpb    #$01                     ; 6B21:  C9 01

                        beq     L6b88                    ; 6B23:  F0 63

                        bcc     L6b2c                    ; 6B25:  90 05

                        ldb     <$1e                     ; 6B27:  A5 1E

                        bne     L6b2c                    ; 6B29:  D0 01

                        lda     #0                       ; 6B2B:  AA
                        tstb                               
                        tfr     d,x                        

L6b2c                   exg     d,x                      ; 6B2C:  86 01
                        stb     <$01                     ; Zero page
                        exg     d,x                        

                        ldb     #$c0                     ; 6B2E:  A9 C0

                        exg     d,x                      ; 6B30:  A2 DB
                        lda     #0                         
                        ldb     #$db                     ; Immediate
                        exg     d,x                        

                        jsr     L7a1f                    ; 6B32:  20 1F 7A

                        ldb     #$50                     ; 6B35:  A9 50

                        jsr     L7aea                    ; 6B37:  20 EA 7A

                        ldb     <$22                     ; 6B3A:  A5 22

                        beq     L6b52                    ; 6B3C:  F0 14

                        ldb     <$1e                     ; 6B3E:  A5 1E

                        beq     L6b52                    ; 6B40:  F0 10

                        ldb     $0219                    ; 6B42:  AD 19 02

                        bne     L6b52                    ; 6B45:  D0 0B

                        ldb     $02eb                    ; 6B47:  AD EB 02

                        bmi     L6b52                    ; 6B4A:  30 06

                        ldb     <$76                     ; 6B4C:  A5 76

                        andb    #$10                     ; 6B4E:  29 10

                        beq     L6b5a                    ; 6B50:  F0 08

L6b52                   ldb     #$65                     ; 6B52:  A9 65

                        exg     d,y                      ; 6B54:  A0 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,y                        

                        orcc    #$01                     ; 6B56:  38

                        jsr     L7c95                    ; 6B57:  20 95 7C

L6b5a                   exg     d,y                      ; 6B5A:  A4 70
                        lda     #0                         
                        ldb     <$70                     ; Zero page
                        exg     d,y                        

                        ldb     #$01                     ; 6B5C:  A9 01

                        jsr     L6b74                    ; 6B5E:  20 74 6B

                        ldb     #$cf                     ; 6B61:  A9 CF

                        jsr     L7c6f                    ; 6B63:  20 6F 7C

                        ldb     <$1e                     ; 6B66:  A5 1E

                        beq     L6b88                    ; 6B68:  F0 1E

                        ldb     $0219                    ; 6B6A:  AD 19 02

                        beq     L6b88                    ; 6B6D:  F0 19

                        bmi     L6b88                    ; 6B6F:  30 17

                        jmp     L6b89                    ; 6B71:  4C 89 6B

L6b74                   eorb    <$1e                     ; 6B74:  45 1E

                        beq     L6b81                    ; 6B76:  F0 09

                        exg     d,x                      ; 6B78:  AE 19 03
                        lda     #0                         
                        ldb     $0319                    ; Absolute
                        exg     d,x                        

                        bmi     L6b7f                    ; 6B7B:  30 02

                        bne     L6b80                    ; 6B7D:  D0 01

L6b7f                   exg     d,y                      ; 6B7F:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

L6b80                   rts                              ; 6B80:  60

L6b81                   exg     d,x                      ; 6B81:  AE 19 02
                        lda     #0                         
                        ldb     $0219                    ; Absolute
                        exg     d,x                        

                        beq     L6b7f                    ; 6B84:  F0 F9

                        bmi     L6b7f                    ; 6B86:  30 F7

L6b88                   rts                              ; 6B88:  60

L6b89                   ldb     <$8b                     ; 6B89:  A5 8B

                        cmpb    #$c0                     ; 6B8B:  C9 C0

                        bcc     L6b90                    ; 6B8D:  90 01

                        rts                              ; 6B8F:  60

L6b90                   pshs    b                        ; 6B90:  48

                        eorb    #$ff                     ; 6B91:  49 FF

                        adcb    #$c1                     ; 6B93:  69 C1

                        stb     <$8b                     ; 6B95:  85 8B

                        ldb     <$79                     ; 6B97:  A5 79

                        pshs    b                        ; 6B99:  48

                        ldb     #$40                     ; 6B9A:  A9 40

                        stb     <$79                     ; 6B9C:  85 79

                        jsr     L6e20                    ; 6B9E:  20 20 6E

                        puls    b                        ; 6BA1:  68

                        stb     <$79                     ; 6BA2:  85 79

                        puls    b                        ; 6BA4:  68

                        stb     <$8b                     ; 6BA5:  85 8B

                        rts                              ; 6BA7:  60

L6ba8                   exg     d,y                      ; 6BA8:  84 01
                        stb     <$01                     ; Zero page
                        exg     d,y                        

                        exg     d,x                      ; 6BAA:  86 0E
                        stb     <$0e                     ; Zero page
                        exg     d,x                        

                        lsr     <$06                     ; 6BAC:  46 06

                        ror     <$05                     ; 6BAE:  66 05

                        lsr     <$06                     ; 6BB0:  46 06

                        ror     <$05                     ; 6BB2:  66 05

                        lsr     <$06                     ; 6BB4:  46 06

                        ror     <$05                     ; 6BB6:  66 05

                        lsr     <$08                     ; 6BB8:  46 08

                        ror     <$07                     ; 6BBA:  66 07

                        lsr     <$08                     ; 6BBC:  46 08

                        ror     <$07                     ; 6BBE:  66 07

                        inc     <$08                     ; 6BC0:  E6 08

                        lsr     <$08                     ; 6BC2:  46 08

                        ror     <$07                     ; 6BC4:  66 07

                        jsr     L6c27                    ; 6BC6:  20 27 6C

                        exg     d,x                      ; 6BC9:  A6 0E
                        lda     #0                         
                        ldb     <$0e                     ; Zero page
                        exg     d,x                        

                        jsr     L6bd1                    ; 6BCB:  20 D1 6B

                        exg     d,x                      ; 6BCE:  A6 0E
                        lda     #0                         
                        ldb     <$0e                     ; Zero page
                        exg     d,x                        

                        rts                              ; 6BD0:  60

L6bd1                   ldb     $0200,x                  ; 6BD1:  BD 00 02

                        bpl     L6be9                    ; 6BD4:  10 13

                        exg     d,x                      ; 6BD6:  E0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,x                        

                        beq     L6be6                    ; 6BD8:  F0 0C

                        andb    #$0c                     ; 6BDA:  29 0C

                        lsrb                             ; 6BDC:  4A

                        lda     #0                       ; 6BDD:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     $4d80,y                  ; 6BDE:  B9 80 4D

                        exg     d,x                      ; 6BE1:  BE 81 4D
                        lda     #0                         
                        ldb     $4d81,y                  ; Absolute, Y
                        exg     d,x                        

                        bne     L6c05                    ; 6BE4:  D0 1F

L6be6                   jmp     L6d5b                    ; 6BE6:  4C 5B 6D

L6be9                   exg     d,x                      ; 6BE9:  E0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,x                        

                        beq     L6c08                    ; 6BEB:  F0 1B

                        exg     d,x                      ; 6BED:  E0 1A
                        cmpb    #$1a                     ; Immediate
                        exg     d,x                        

                        beq     L6c0e                    ; 6BEF:  F0 1D

                        bcs     L6c14                    ; 6BF1:  B0 21

                        aslb                             ; 6BF3:  0A

                        bpl     L6bf9                    ; 6BF4:  10 03

                        jmp     L4a75                    ; 6BF6:  4C 75 4A

L6bf9                   lsrb                             ; 6BF9:  4A

                        lsrb                             ; 6BFA:  4A

                        lsrb                             ; 6BFB:  4A

                        andb    #$06                     ; 6BFC:  29 06

                        lda     #0                       ; 6BFE:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     $779d,y                  ; 6BFF:  B9 9D 77

                        exg     d,x                      ; 6C02:  BE 9E 77
                        lda     #0                         
                        ldb     $779e,y                  ; Absolute, Y
                        exg     d,x                        

L6c05                   jmp     L7cd5                    ; 6C05:  4C D5 7C

L6c08                   jsr     L6681                    ; 6C08:  20 81 66

                        jmp     L6e20                    ; 6C0B:  4C 20 6E

L6c0e                   ldb     #$34                     ; 6C0E:  A9 34

                        exg     d,x                      ; 6C10:  A2 C7
                        lda     #0                         
                        ldb     #$c7                     ; Immediate
                        exg     d,x                        

                        bne     L6c05                    ; 6C12:  D0 F1

L6c14                   ldb     #$70                     ; 6C14:  A9 70

                        exg     d,x                      ; 6C16:  A2 F0
                        lda     #0                         
                        ldb     #$f0                     ; Immediate
                        exg     d,x                        

                        jsr     L7aec                    ; 6C18:  20 EC 7A

                        exg     d,x                      ; 6C1B:  A6 0E
                        lda     #0                         
                        ldb     <$0e                     ; Zero page
                        exg     d,x                        

                        ldb     <$76                     ; 6C1D:  A5 76

                        andb    #$03                     ; 6C1F:  29 03

                        bne     L6c26                    ; 6C21:  D0 03

                        dec     $0200,x                  ; 6C23:  DE 00 02

L6c26                   rts                              ; 6C26:  60

L6c27                   exg     d,x                      ; 6C27:  A2 05
                        lda     #0                         
                        ldb     #$05                     ; Immediate
                        exg     d,x                        

                        jsr     L7a38                    ; 6C29:  20 38 7A

                        ldb     #$70                     ; 6C2C:  A9 70

                        orcc    #$01                     ; 6C2E:  38

                        sbcb    <$01                     ; 6C2F:  E5 01

L6c31                   cmpb    #$a0                     ; 6C31:  C9 A0

                        bcc     L6c41                    ; 6C33:  90 0C

                        pshs    b                        ; 6C35:  48

                        ldb     #$90                     ; 6C36:  A9 90

                        jsr     L7aea                    ; 6C38:  20 EA 7A

                        puls    b                        ; 6C3B:  68

                        orcc    #$01                     ; 6C3C:  38

                        sbcb    #$10                     ; 6C3D:  E9 10

                        bne     L6c31                    ; 6C3F:  D0 F0

L6c41                   jmp     L7aea                    ; 6C41:  4C EA 7A

L6c44                   rorb                             ; 6C44:  6A

                        ror     <$10                     ; 6C45:  66 10

                        lsrb                             ; 6C47:  4A

                        ror     <$10                     ; 6C48:  66 10

                        lsrb                             ; 6C4A:  4A

                        ror     <$10                     ; 6C4B:  66 10

                        lsrb                             ; 6C4D:  4A

                        ror     <$10                     ; 6C4E:  66 10

                        stb     <$11                     ; 6C50:  85 11

                                                         ; 6C52:  F8

                        exg     d,x                      ; 6C53:  86 12
                        stb     <$12                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 6C55:  A6 20
                        lda     #0                         
                        ldb     <$20                     ; Zero page
                        exg     d,x                        

                        ldb     <$10                     ; 6C57:  A5 10

                        andb    #$f0                     ; 6C59:  29 F0

                        andcc   #$fe                     ; 6C5B:  18

                        adcb    $62,x                    ; 6C5C:  75 62

                        stb     $62,x                    ; 6C5E:  95 62

                        ldb     <$11                     ; 6C60:  A5 11

                        adcb    $63,x                    ; 6C62:  75 63

                        stb     $63,x                    ; 6C64:  95 63

                        ldb     #$00                     ; 6C66:  A9 00

                        adcb    $64,x                    ; 6C68:  75 64

                        stb     $64,x                    ; 6C6A:  95 64

                        cmpb    $6a,x                    ; 6C6C:  D5 6A

                        bcc     L6c91                    ; 6C6E:  90 21

                        bne     L6c78                    ; 6C70:  D0 06

                        ldb     $63,x                    ; 6C72:  B5 63

                        cmpb    $69,x                    ; 6C74:  D5 69

                        bcc     L6c91                    ; 6C76:  90 19

L6c78                   andcc   #$fe                     ; 6C78:  18

                        ldb     <$f8                     ; 6C79:  A5 F8

                        adcb    $69,x                    ; 6C7B:  75 69

                        stb     $69,x                    ; 6C7D:  95 69

                        ldb     <$f9                     ; 6C7F:  A5 F9

                        adcb    $6a,x                    ; 6C81:  75 6A

                        stb     $6a,x                    ; 6C83:  95 6A

                        exg     d,x                      ; 6C85:  A6 1E
                        lda     #0                         
                        ldb     <$1e                     ; Zero page
                        exg     d,x                        

                        ldb     $6f,x                    ; 6C87:  B5 6F

                        cmpb    #$0a                     ; 6C89:  C9 0A

                        bcs     L6c91                    ; 6C8B:  B0 04

                        inc     $6f,x                    ; 6C8D:  F6 6F

                        inc     <$7e                     ; 6C8F:  E6 7E

L6c91                                                    ; 6C91:  D8

                        exg     d,x                      ; 6C92:  A6 12
                        lda     #0                         
                        ldb     <$12                     ; Zero page
                        exg     d,x                        

                        rts                              ; 6C94:  60

L6c95                   ldb     <$1e                     ; 6C95:  A5 1E

                        lsrb                             ; 6C97:  4A

                        rorb                             ; 6C98:  6A

                        stb     BankSel                  ; 6C99:  8D 04 3C

                        rts                              ; 6C9C:  60

L6c9d                   exg     d,x                      ; 6C9D:  A6 22
                        lda     #0                         
                        ldb     <$22                     ; Zero page
                        exg     d,x                        

                        bne     L6cbd                    ; 6C9F:  D0 1C

                        ldb     <$77                     ; 6CA1:  A5 77

                        andb    #$04                     ; 6CA3:  29 04

                        beq     L6cbf                    ; 6CA5:  F0 18

L6ca7                   exg     d,x                      ; 6CA7:  86 01
                        stb     <$01                     ; Zero page
                        exg     d,x                        

                        ldb     #$70                     ; 6CA9:  A9 70

                        exg     d,x                      ; 6CAB:  A2 68
                        lda     #0                         
                        ldb     #$68                     ; Immediate
                        exg     d,x                        

                        jsr     L7a1f                    ; 6CAD:  20 1F 7A

                        ldb     #$70                     ; 6CB0:  A9 70

                        jsr     L7aea                    ; 6CB2:  20 EA 7A

                        jsr     L7148                    ; 6CB5:  20 48 71

                        exg     d,y                      ; 6CB8:  A0 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,y                        

                        jsr     L7159                    ; 6CBA:  20 59 71

L6cbd                   andcc   #$fe                     ; 6CBD:  18

                        rts                              ; 6CBE:  60

L6cbf                   ldb     <$23                     ; 6CBF:  A5 23

                        orb     <$24                     ; 6CC1:  05 24

                        orb     <$25                     ; 6CC3:  05 25

                        beq     L6ca7                    ; 6CC5:  F0 E0

                        exg     d,y                      ; 6CC7:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        jsr     L7159                    ; 6CC9:  20 59 71

                        exg     d,x                      ; 6CCC:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 6CCE:  86 10
                        stb     <$10                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 6CD0:  86 13
                        stb     <$13                     ; Zero page
                        exg     d,x                        

                        ldb     #$a7                     ; 6CD2:  A9 A7

                        stb     <$12                     ; 6CD4:  85 12

                        exg     d,x                      ; 6CD6:  A2 23
                        lda     #0                         
                        ldb     #$23                     ; Immediate
                        exg     d,x                        

L6cd8                   ldb     #$10                     ; 6CD8:  A9 10

                        stb     <$01                     ; 6CDA:  85 01

                        exg     d,x                      ; 6CDC:  86 11
                        stb     <$11                     ; Zero page
                        exg     d,x                        

                        ldb     $00,x                    ; 6CDE:  B5 00

                        orb     $01,x                    ; 6CE0:  15 01

                        orb     $02,x                    ; 6CE2:  15 02

                        beq     L6d40                    ; 6CE4:  F0 5A

                        ldb     #$5f                     ; 6CE6:  A9 5F

                        exg     d,x                      ; 6CE8:  A6 12
                        lda     #0                         
                        ldb     <$12                     ; Zero page
                        exg     d,x                        

                        jsr     L7a1f                    ; 6CEA:  20 1F 7A

                        ldb     #$40                     ; 6CED:  A9 40

                        jsr     L7aea                    ; 6CEF:  20 EA 7A

                        ldb     <$10                     ; 6CF2:  A5 10

                                                         ; 6CF4:  F8

                        andcc   #$fe                     ; 6CF5:  18

                        adcb    #$01                     ; 6CF6:  69 01

                                                         ; 6CF8:  D8

                        stb     <$10                     ; 6CF9:  85 10

                        ldb     #$10                     ; 6CFB:  A9 10

                        orcc    #$01                     ; 6CFD:  38

                        exg     d,y                      ; 6CFE:  A0 01
                        lda     #0                         
                        ldb     #$01                     ; Immediate
                        exg     d,y                        

                        jsr     L7c95                    ; 6D00:  20 95 7C

                        ldb     #$40                     ; 6D03:  A9 40

                        lda     #0                       ; 6D05:  AA
                        tstb                               
                        tfr     d,x                        

                        jsr     L7aec                    ; 6D06:  20 EC 7A

                        exg     d,y                      ; 6D09:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        jsr     L79f8                    ; 6D0B:  20 F8 79

                        ldb     <$11                     ; 6D0E:  A5 11

                        exg     d,y                      ; 6D10:  A0 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,y                        

                        orcc    #$01                     ; 6D12:  38

                        jsr     L7c95                    ; 6D13:  20 95 7C

                        exg     d,y                      ; 6D16:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        jsr     L79f8                    ; 6D18:  20 F8 79

                        jsr     L6d42                    ; 6D1B:  20 42 6D

                        ldb     <$10                     ; 6D1E:  A5 10

                        cmpb    #$04                     ; 6D20:  C9 04

                        bcs     L6d30                    ; 6D22:  B0 0C

                        ldb     <$12                     ; 6D24:  A5 12

                        adcb    #$02                     ; 6D26:  69 02

                        lda     #0                       ; 6D28:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     #$b2                     ; 6D29:  A9 B2

                        exg     d,y                      ; 6D2B:  A0 02
                        lda     #0                         
                        ldb     #$02                     ; Immediate
                        exg     d,y                        

                        jsr     L7c71                    ; 6D2D:  20 71 7C

L6d30                   ldb     <$12                     ; 6D30:  A5 12

                        orcc    #$01                     ; 6D32:  38

                        sbcb    #$08                     ; 6D33:  E9 08

                        stb     <$12                     ; 6D35:  85 12

                        exg     d,x                      ; 6D37:  A6 11
                        lda     #0                         
                        ldb     <$11                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 6D39:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        exg     d,x                      ; 6D3A:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        exg     d,x                      ; 6D3B:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        exg     d,x                      ; 6D3C:  E0 41
                        cmpb    #$41                     ; Immediate
                        exg     d,x                        

                        bcc     L6cd8                    ; 6D3E:  90 98

L6d40                   orcc    #$01                     ; 6D40:  38

                        rts                              ; 6D41:  60

L6d42                   jsr     L6d48                    ; 6D42:  20 48 6D

                        jsr     L6d48                    ; 6D45:  20 48 6D

L6d48                   exg     d,y                      ; 6D48:  A4 13
                        lda     #0                         
                        ldb     <$13                     ; Zero page
                        exg     d,y                        

                        jsr     L66c5                    ; 6D4A:  20 C5 66

                        inc     <$13                     ; 6D4D:  E6 13

                        rts                              ; 6D4F:  60

L6d50                   exg     d,x                      ; 6D50:  A2 18
                        lda     #0                         
                        ldb     #$18                     ; Immediate
                        exg     d,x                        

L6d52                   ldb     $0200,x                  ; 6D52:  BD 00 02

                        beq     L6d5a                    ; 6D55:  F0 03

                        exg     d,y                      ; 6D57:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L6d52                    ; 6D58:  10 F8

L6d5a                   rts                              ; 6D5A:  60

L6d5b                   ldb     $0219                    ; 6D5B:  AD 19 02

                        cmpb    #$a2                     ; 6D5E:  C9 A2

                        bcs     L6d9d                    ; 6D60:  B0 3B

                        exg     d,x                      ; 6D62:  A2 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,x                        

L6d64                   ldb     Pk_SkRes_Rnd             ; 6D64:  AD 0A 2C

                        andb    #$07                     ; 6D67:  29 07

                        eorb    <$05                     ; 6D69:  45 05

                        aslb                             ; 6D6B:  0A

                        stb     $0100,x                  ; 6D6C:  9D 00 01

                        ldb     <$06                     ; 6D6F:  A5 06

                        rolb                             ; 6D71:  2A

                        stb     $0110,x                  ; 6D72:  9D 10 01

                        ldb     Pk_SkRes_Rnd             ; 6D75:  AD 0A 2C

                        andb    #$07                     ; 6D78:  29 07

                        eorb    <$07                     ; 6D7A:  45 07

                        aslb                             ; 6D7C:  0A

                        stb     $0108,x                  ; 6D7D:  9D 08 01

                        ldb     <$08                     ; 6D80:  A5 08

                        rolb                             ; 6D82:  2A

                        stb     $0118,x                  ; 6D83:  9D 18 01

                        ldb     Pk_SkRes_Rnd             ; 6D86:  AD 0A 2C

                        andb    #$0f                     ; 6D89:  29 0F

                        adcb    #$f8                     ; 6D8B:  69 F8

                        stb     $0120,x                  ; 6D8D:  9D 20 01

                        jsr     L6e15                    ; 6D90:  20 15 6E

                        stb     $df,x                    ; 6D93:  95 DF

                        jsr     L6e15                    ; 6D95:  20 15 6E

                        stb     $e7,x                    ; 6D98:  95 E7

                        exg     d,y                      ; 6D9A:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L6d64                    ; 6D9B:  10 C7

L6d9d                   ldb     #$07                     ; 6D9D:  A9 07

                        stb     <$12                     ; 6D9F:  85 12

                        stb     <$15                     ; 6DA1:  85 15

L6da3                   exg     d,x                      ; 6DA3:  A6 15
                        lda     #0                         
                        ldb     <$15                     ; Zero page
                        exg     d,x                        

                        ldb     $0219                    ; 6DA5:  AD 19 02

                        jsr     L70b6                    ; 6DA8:  20 B6 70

                        andb    #$f0                     ; 6DAB:  29 F0

                        adcb    #$60                     ; 6DAD:  69 60

                        stb     <$09                     ; 6DAF:  85 09

                        ldb     $ef,x                    ; 6DB1:  B5 EF

                        adcb    $0120,x                  ; 6DB3:  7D 20 01

                        stb     $ef,x                    ; 6DB6:  95 EF

                        lsrb                             ; 6DB8:  4A

                        lsrb                             ; 6DB9:  4A

                        pshs    b                        ; 6DBA:  48

                        lsrb                             ; 6DBB:  4A

                        lsrb                             ; 6DBC:  4A

                        lsrb                             ; 6DBD:  4A

                        andb    #$04                     ; 6DBE:  29 04

                        stb     <$0a                     ; 6DC0:  85 0A

                        orb     <$09                     ; 6DC2:  05 09

                        stb     <$09                     ; 6DC4:  85 09

                        jsr     L6df6                    ; 6DC6:  20 F6 6D

                        stb     <$06                     ; 6DC9:  85 06

                        ldb     <$07                     ; 6DCB:  A5 07

                        stb     <$05                     ; 6DCD:  85 05

                        tfr     x,d                      ; 6DCF:  8A
                        tstb                               

                        andcc   #$fe                     ; 6DD0:  18

                        adcb    #$08                     ; 6DD1:  69 08

                        lda     #0                       ; 6DD3:  AA
                        tstb                               
                        tfr     d,x                        

                        jsr     L6df6                    ; 6DD4:  20 F6 6D

                        jsr     L6c27                    ; 6DD7:  20 27 6C

                        puls    b                        ; 6DDA:  68

                        andb    #$1e                     ; 6DDB:  29 1E

                        lda     #0                       ; 6DDD:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     $506a,x                  ; 6DDE:  BD 6A 50

                        aslb                             ; 6DE1:  0A

                        stb     <$10                     ; 6DE2:  85 10

                        ldb     $506b,x                  ; 6DE4:  BD 6B 50

                        rolb                             ; 6DE7:  2A

                        eorb    #$c0                     ; 6DE8:  49 C0

                        stb     <$11                     ; 6DEA:  85 11

                        exg     d,x                      ; 6DEC:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        jsr     L6221                    ; 6DEE:  20 21 62

                        dec     <$15                     ; 6DF1:  C6 15

                        bpl     L6da3                    ; 6DF3:  10 AE

                        rts                              ; 6DF5:  60

L6df6                   exg     d,y                      ; 6DF6:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        ldb     $df,x                    ; 6DF8:  B5 DF

                        bpl     L6dfd                    ; 6DFA:  10 01

                        exg     d,y                      ; 6DFC:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

L6dfd                   andcc   #$fe                     ; 6DFD:  18

                        adcb    $0100,x                  ; 6DFE:  7D 00 01

                        stb     $0100,x                  ; 6E01:  9D 00 01

                        stb     <$07                     ; 6E04:  85 07

                        tfr     y,d                      ; 6E06:  98
                        tstb                               

                        adcb    $0110,x                  ; 6E07:  7D 10 01

                        andb    #$07                     ; 6E0A:  29 07

                        stb     $0110,x                  ; 6E0C:  9D 10 01

                        lsrb                             ; 6E0F:  4A

                        stb     <$08                     ; 6E10:  85 08

                        ror     <$07                     ; 6E12:  66 07

                        rts                              ; 6E14:  60

L6e15                   ldb     Pk_SkRes_Rnd             ; 6E15:  AD 0A 2C

                        andb    #$07                     ; 6E18:  29 07

                        andcc   #$fe                     ; 6E1A:  18

                        adcb    #$fc                     ; 6E1B:  69 FC

                        adcb    #$00                     ; 6E1D:  69 00

                        rts                              ; 6E1F:  60

L6e20                   ldb     <$8b                     ; 6E20:  A5 8B

                        cmpb    #$c0                     ; 6E22:  C9 C0

                        bcs     L6e70                    ; 6E24:  B0 4A

                        adcb    #$06                     ; 6E26:  69 06

                        stb     <$8b                     ; 6E28:  85 8B

                        ldb     Pk_SkRes_Rnd             ; 6E2A:  AD 0A 2C

                        andb    #$04                     ; 6E2D:  29 04

                        stb     <$09                     ; 6E2F:  85 09

                        ldb     Pk_SkRes_Rnd             ; 6E31:  AD 0A 2C

                        andb    #$04                     ; 6E34:  29 04

                        stb     <$0a                     ; 6E36:  85 0A

                        ldb     Pk_SkRes_Rnd             ; 6E38:  AD 0A 2C

                        andb    #$80                     ; 6E3B:  29 80

                        stb     <$12                     ; 6E3D:  85 12

                        ldb     #$09                     ; 6E3F:  A9 09

                        stb     <$15                     ; 6E41:  85 15

                        ldb     #$4d                     ; 6E43:  A9 4D

                        exg     d,x                      ; 6E45:  A2 87
                        lda     #0                         
                        ldb     #$87                     ; Immediate
                        exg     d,x                        

                        stb     <$11                     ; 6E47:  85 11

                        exg     d,x                      ; 6E49:  86 10
                        stb     <$10                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 6E4B:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        exg     d,x                      ; 6E4D:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

L6e4f                   jsr     L6e96                    ; 6E4F:  20 96 6E

                        ldb     Pk_SkRes_Rnd             ; 6E52:  AD 0A 2C

                        lsrb                             ; 6E55:  4A

                        ldb     #$00                     ; 6E56:  A9 00

                        bcc     L6e5c                    ; 6E58:  90 02

                        ldb     #$70                     ; 6E5A:  A9 70

L6e5c                   orb     <$09                     ; 6E5C:  05 09

                        stb     <$09                     ; 6E5E:  85 09

                        jsr     L6e96                    ; 6E60:  20 96 6E

                        ldb     <$09                     ; 6E63:  A5 09

                        andb    #$04                     ; 6E65:  29 04

                        stb     <$09                     ; 6E67:  85 09

                        dec     <$15                     ; 6E69:  C6 15

                        bpl     L6e4f                    ; 6E6B:  10 E2

                        jsr     L6e96                    ; 6E6D:  20 96 6E

L6e70                   jsr     L6ea5                    ; 6E70:  20 A5 6E

                        jsr     L6221                    ; 6E73:  20 21 62

                        ldb     <$8b                     ; 6E76:  A5 8B

                        andb    #$f0                     ; 6E78:  29 F0

                        cmpb    #$60                     ; 6E7A:  C9 60

                        bcs     L6e80                    ; 6E7C:  B0 02

                        ldb     #$60                     ; 6E7E:  A9 60

L6e80                   orb     <$09                     ; 6E80:  05 09

                        stb     <$09                     ; 6E82:  85 09

                        exg     d,x                      ; 6E84:  A2 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,x                        

                        jsr     L6e96                    ; 6E86:  20 96 6E

                        andb    ThrustSW                 ; 6E89:  2C 05 24

                        bpl     L6ec5                    ; 6E8C:  10 37

                        ldb     <$76                     ; 6E8E:  A5 76

                        andb    #$04                     ; 6E90:  29 04

                        beq     L6ec5                    ; 6E92:  F0 31

                        exg     d,x                      ; 6E94:  A2 01
                        lda     #0                         
                        ldb     #$01                     ; Immediate
                        exg     d,x                        

L6e96                   tfr     y,d                      ; 6E96:  98
                        tstb                               

                        orcc    #$01                     ; 6E97:  38

                        adcb    <$10                     ; 6E98:  65 10

                        stb     <$10                     ; 6E9A:  85 10

                        ldb     #$00                     ; 6E9C:  A9 00

                        adcb    <$11                     ; 6E9E:  65 11

                        stb     <$11                     ; 6EA0:  85 11

                        jmp     L6221                    ; 6EA2:  4C 21 62

L6ea5                   ldb     <$79                     ; 6EA5:  A5 79

                        orcc    #$01                     ; 6EA7:  38

                        sbcb    #$40                     ; 6EA8:  E9 40

                        jsr     L6ec6                    ; 6EAA:  20 C6 6E

                        tfr     y,d                      ; 6EAD:  98
                        tstb                               

                        lsrb                             ; 6EAE:  4A

                        lda     #0                       ; 6EAF:  A8
                        tstb                               
                        tfr     d,y                        

                        exg     d,x                      ; 6EB0:  A2 53
                        lda     #0                         
                        ldb     #$53                     ; Immediate
                        exg     d,x                        

                        ldb     $53bc,y                  ; 6EB2:  B9 BC 53

                        aslb                             ; 6EB5:  0A

                        bcc     L6eba                    ; 6EB6:  90 02

                        exg     d,x                      ; 6EB8:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        andcc   #$fe                     ; 6EB9:  18

L6eba                   adcb    #$c6                     ; 6EBA:  69 C6

                        stb     <$10                     ; 6EBC:  85 10

                        tfr     x,d                      ; 6EBE:  8A
                        tstb                               

                        adcb    #$00                     ; 6EBF:  69 00

                        stb     <$11                     ; 6EC1:  85 11

                        exg     d,x                      ; 6EC3:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

L6ec5                   rts                              ; 6EC5:  60

L6ec6                   lsrb                             ; 6EC6:  4A

                        stb     <$10                     ; 6EC7:  85 10

                        lsrb                             ; 6EC9:  4A

                        lsrb                             ; 6ECA:  4A

                        lsrb                             ; 6ECB:  4A

                        lsrb                             ; 6ECC:  4A

                        lda     #0                       ; 6ECD:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     $6eee,y                  ; 6ECE:  B9 EE 6E

                        aslb                             ; 6ED1:  0A

                        stb     <$12                     ; 6ED2:  85 12

                        ldb     <$10                     ; 6ED4:  A5 10

                        andb    #$0e                     ; 6ED6:  29 0E

                        bcc     L6ede                    ; 6ED8:  90 04

                        eorb    #$0e                     ; 6EDA:  49 0E

                        adcb    #$01                     ; 6EDC:  69 01

L6ede                   lda     #0                       ; 6EDE:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     <$12                     ; 6EDF:  A5 12

                        andb    #$04                     ; 6EE1:  29 04

                        stb     <$09                     ; 6EE3:  85 09

                        asl     <$12                     ; 6EE5:  06 12

                        ldb     <$12                     ; 6EE7:  A5 12

                        andb    #$04                     ; 6EE9:  29 04

                        stb     <$0a                     ; 6EEB:  85 0A

                        rts                              ; 6EED:  60

                        fcb     $00,$A3,$22,$81            
                        fcb     $03,$A0,$21,$82            
L6ef6                   lsr     <$10                     ; 6EF6:  46 10

                        exg     d,x                      ; 6EF8:  A6 22
                        lda     #0                         
                        ldb     <$22                     ; Zero page
                        exg     d,x                        

                        beq     L6f55                    ; 6EFA:  F0 59

                        exg     d,x                      ; 6EFC:  A6 A2
                        lda     #0                         
                        ldb     <$a2                     ; Zero page
                        exg     d,x                        

                        bne     L6f18                    ; 6EFE:  D0 18

                        ldb     <$7e                     ; 6F00:  A5 7E

                        beq     L6f0d                    ; 6F02:  F0 09

                        exg     d,y                      ; 6F04:  A0 2F
                        lda     #0                         
                        ldb     #$2f                     ; Immediate
                        exg     d,y                        

                        jsr     L7716                    ; 6F06:  20 16 77

                        exg     d,x                      ; 6F09:  86 7E
                        stb     <$7e                     ; Zero page
                        exg     d,x                        

                        beq     L6f18                    ; 6F0B:  F0 0B

L6f0d                   ldb     <$dd                     ; 6F0D:  A5 DD

                        beq     L6f18                    ; 6F0F:  F0 07

                        exg     d,y                      ; 6F11:  A0 5F
                        lda     #0                         
                        ldb     #$5f                     ; Immediate
                        exg     d,y                        

                        jsr     L7716                    ; 6F13:  20 16 77

                        exg     d,x                      ; 6F16:  86 DD
                        stb     <$dd                     ; Zero page
                        exg     d,x                        

L6f18                   ldb     $0219                    ; 6F18:  AD 19 02

                        bmi     L6f31                    ; 6F1B:  30 14

                        beq     L6f31                    ; 6F1D:  F0 12

                        asl     ThrustSW                 ; 6F1F:  0E 05 24

                        ror     <$10                     ; 6F22:  66 10

                        ldb     $02e7                    ; 6F24:  AD E7 02

                        beq     L6f31                    ; 6F27:  F0 08

                        ldb     <$83                     ; 6F29:  A5 83

                        beq     L6f38                    ; 6F2B:  F0 0B

                        dec     <$83                     ; 6F2D:  C6 83

                        bne     L6f4d                    ; 6F2F:  D0 1C

L6f31                   ldb     $02ed                    ; 6F31:  AD ED 02

                        stb     <$84                     ; 6F34:  85 84

                        bpl     L6f4d                    ; 6F36:  10 15

L6f38                   dec     <$84                     ; 6F38:  C6 84

                        bne     L6f4d                    ; 6F3A:  D0 11

                        ldb     #$04                     ; 6F3C:  A9 04

                        stb     <$83                     ; 6F3E:  85 83

                        inc     <$82                     ; 6F40:  E6 82

                        ldb     <$82                     ; 6F42:  A5 82

                        andb    #$01                     ; 6F44:  29 01

                        lda     #0                       ; 6F46:  AA
                        tstb                               
                        tfr     d,x                        

                        exg     d,y                      ; 6F47:  BC 60 6F
                        lda     #0                         
                        ldb     $6f60,x                  ; Absolute, X
                        exg     d,y                        

                        jsr     L7713                    ; 6F4A:  20 13 77

L6f4d                   ldb     <$7f                     ; 6F4D:  A5 7F

                        lda     #0                       ; 6F4F:  AA
                        tstb                               
                        tfr     d,x                        

                        andb    #$3f                     ; 6F50:  29 3F

                        beq     L6f55                    ; 6F52:  F0 01

                        exg     d,y                      ; 6F54:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

L6f55                   exg     d,x                      ; 6F55:  86 7F
                        stb     <$7f                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 6F57:  8E 00 36
                        stb     ExplodeCtrl              ; Absolute
                        exg     d,x                        

                        ldb     <$10                     ; 6F5A:  A5 10

                        stb     ThrustSnd                ; 6F5C:  8D 03 3C

                        rts                              ; 6F5F:  60

                        fcb     $07,$0F                    
L6f62                   exg     d,x                      ; 6F62:  86 0E
                        stb     <$0e                     ; Zero page
                        exg     d,x                        

                        ldb     #$50                     ; 6F64:  A9 50

                        stb     $02ea                    ; 6F66:  8D EA 02

                        ldb     $0200,y                  ; 6F69:  B9 00 02

                        andb    #$78                     ; 6F6C:  29 78

                        aslb                             ; 6F6E:  0A

                        bpl     L6f74                    ; 6F6F:  10 03

                        jmp     L4800                    ; 6F71:  4C 00 48

L6f74                   lsrb                             ; 6F74:  4A

                        stb     <$0f                     ; 6F75:  85 0F

                        ldb     $0200,y                  ; 6F77:  B9 00 02

                        andb    #$07                     ; 6F7A:  29 07

                        lsrb                             ; 6F7C:  4A

                        lda     #0                       ; 6F7D:  AA
                        tstb                               
                        tfr     d,x                        

                        beq     L6f82                    ; 6F7E:  F0 02

                        orb     <$0f                     ; 6F80:  05 0F

L6f82                   stb     $0200,y                  ; 6F82:  99 00 02

                        ldb     <$22                     ; 6F85:  A5 22

                        beq     L6f98                    ; 6F87:  F0 0F

                        ldb     <$0e                     ; 6F89:  A5 0E

                        beq     L6f91                    ; 6F8B:  F0 04

                        cmpb    #$04                     ; 6F8D:  C9 04

                        bcc     L6f98                    ; 6F8F:  90 07

L6f91                   ldb     $4d75,x                  ; 6F91:  BD 75 4D

                        andcc   #$fe                     ; 6F94:  18

                        jsr     L6c44                    ; 6F95:  20 44 6C

L6f98                   exg     d,x                      ; 6F98:  BE 00 02
                        lda     #0                         
                        ldb     $0200,y                  ; Absolute, Y
                        exg     d,x                        

                        beq     L6fd1                    ; 6F9B:  F0 34

                        jsr     L6d50                    ; 6F9D:  20 50 6D

                        bmi     L6fd1                    ; 6FA0:  30 2F

                        inc     $02e7                    ; 6FA2:  EE E7 02

                        jsr     L61eb                    ; 6FA5:  20 EB 61

                        jsr     L6a3b                    ; 6FA8:  20 3B 6A

                        ldb     $0221,x                  ; 6FAB:  BD 21 02

                        andb    #$1f                     ; 6FAE:  29 1F

                        aslb                             ; 6FB0:  0A

                        eorb    $02a5,x                  ; 6FB1:  5D A5 02

                        stb     $02a5,x                  ; 6FB4:  9D A5 02

                        jsr     L6d52                    ; 6FB7:  20 52 6D

                        bmi     L6fd1                    ; 6FBA:  30 15

                        inc     $02e7                    ; 6FBC:  EE E7 02

                        jsr     L61eb                    ; 6FBF:  20 EB 61

                        jsr     L6a3b                    ; 6FC2:  20 3B 6A

                        ldb     $0242,x                  ; 6FC5:  BD 42 02

                        andb    #$1f                     ; 6FC8:  29 1F

                        aslb                             ; 6FCA:  0A

                        eorb    $02c6,x                  ; 6FCB:  5D C6 02

                        stb     $02c6,x                  ; 6FCE:  9D C6 02

L6fd1                   exg     d,x                      ; 6FD1:  A6 0E
                        lda     #0                         
                        ldb     <$0e                     ; Zero page
                        exg     d,x                        

                        rts                              ; 6FD3:  60

L6fd4                   ldb     <$22                     ; 6FD4:  A5 22

                        bpl     L7025                    ; 6FD6:  10 4D

                        stb     <$77                     ; 6FD8:  85 77

                        stb     <$42                     ; 6FDA:  85 42

                        stb     <$43                     ; 6FDC:  85 43

                        stb     <$ce                     ; 6FDE:  85 CE

                        jsr     L7844                    ; 6FE0:  20 44 78

                        exg     d,x                      ; 6FE3:  A2 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,x                        

L6fe5                   exg     d,y                      ; 6FE5:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

L6fe7                   ldb     $0023,y                  ; 6FE7:  B9 23 00

                        cmpb    $62,x                    ; 6FEA:  D5 62

                        ldb     $0024,y                  ; 6FEC:  B9 24 00

                        sbcb    $63,x                    ; 6FEF:  F5 63

                        ldb     $0025,y                  ; 6FF1:  B9 25 00

                        sbcb    $64,x                    ; 6FF4:  F5 64

                        bcc     L7026                    ; 6FF6:  90 2E

                        exg     d,y                      ; 6FF8:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 6FF9:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 6FFA:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 6FFB:  C0 1E
                        cmpb    #$1e                     ; Immediate
                        exg     d,y                        

                        bcc     L6fe7                    ; 6FFD:  90 E8

L6fff                   exg     d,y                      ; 6FFF:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,y                      ; 7000:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,y                      ; 7001:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L6fe5                    ; 7002:  10 E1

                        ldb     <$43                     ; 7004:  A5 43

                        bmi     L7016                    ; 7006:  30 0E

                        cmpb    <$42                     ; 7008:  C5 42

                        bcc     L7016                    ; 700A:  90 0A

                        adcb    #$02                     ; 700C:  69 02

                        cmpb    #$1e                     ; 700E:  C9 1E

                        bcc     L7014                    ; 7010:  90 02

                        ldb     #$ff                     ; 7012:  A9 FF

L7014                   stb     <$43                     ; 7014:  85 43

L7016                   exg     d,x                      ; 7016:  A6 CE
                        lda     #0                         
                        ldb     <$ce                     ; Zero page
                        exg     d,x                        

                        bmi     L701f                    ; 7018:  30 05

                        exg     d,y                      ; 701A:  A0 4F
                        lda     #0                         
                        ldb     #$4f                     ; Immediate
                        exg     d,y                        

                        jsr     L7716                    ; 701C:  20 16 77

L701f                   ldb     #$00                     ; 701F:  A9 00

                        stb     <$22                     ; 7021:  85 22

                        stb     <$41                     ; 7023:  85 41

L7025                   rts                              ; 7025:  60

L7026                   exg     d,x                      ; 7026:  86 0C
                        stb     <$0c                     ; Zero page
                        exg     d,x                        

                        tfr     x,d                      ; 7028:  8A
                        tstb                               

                        lsrb                             ; 7029:  4A

                        lda     #0                       ; 702A:  AA
                        tstb                               
                        tfr     d,x                        

                        exg     d,y                      ; 702B:  94 42
                        stb     $42,x                    ; Zero page, X
                        exg     d,y                        

                        exg     d,y                      ; 702D:  84 10
                        stb     <$10                     ; Zero page
                        exg     d,y                        

                        exg     d,y                      ; 702F:  C4 CE
                        cmpb    <$ce                     ; Zero page
                        exg     d,y                        

                        bcs     L7059                    ; 7031:  B0 26

                        exg     d,y                      ; 7033:  84 CE
                        stb     <$ce                     ; Zero page
                        exg     d,y                        

                        ldb     #$00                     ; 7035:  A9 00

                        stb     <$11                     ; 7037:  85 11

                        tfr     y,d                      ; 7039:  98
                        tstb                               

L703a                   orcc    #$01                     ; 703A:  38

                        sbcb    #$03                     ; 703B:  E9 03

                        bcc     L7043                    ; 703D:  90 04

                        inc     <$11                     ; 703F:  E6 11

                        bne     L703a                    ; 7041:  D0 F7

L7043                   ldb     <$11                     ; 7043:  A5 11

                        eorb    #$ff                     ; 7045:  49 FF

                        adcb    #$04                     ; 7047:  69 04

                        stb     <$11                     ; 7049:  85 11

                        asl     <$11                     ; 704B:  06 11

                        adcb    <$11                     ; 704D:  65 11

                        asl     <$11                     ; 704F:  06 11

                        adcb    <$11                     ; 7051:  65 11

                        stb     <$cc                     ; 7053:  85 CC

                        ldb     #$14                     ; 7055:  A9 14

                        stb     <$cb                     ; 7057:  85 CB

L7059                   exg     d,x                      ; 7059:  A2 1B
                        lda     #0                         
                        ldb     #$1b                     ; Immediate
                        exg     d,x                        

L705b                   exg     d,x                      ; 705B:  E4 10
                        cmpb    <$10                     ; Zero page
                        exg     d,x                        

                        beq     L707c                    ; 705D:  F0 1D

                        ldb     $41,x                    ; 705F:  B5 41

                        stb     $44,x                    ; 7061:  95 44

                        ldb     $42,x                    ; 7063:  B5 42

                        stb     $45,x                    ; 7065:  95 45

                        ldb     $43,x                    ; 7067:  B5 43

                        stb     $46,x                    ; 7069:  95 46

                        ldb     $20,x                    ; 706B:  B5 20

                        stb     $23,x                    ; 706D:  95 23

                        ldb     $21,x                    ; 706F:  B5 21

                        stb     $24,x                    ; 7071:  95 24

                        ldb     $22,x                    ; 7073:  B5 22

                        stb     $25,x                    ; 7075:  95 25

                        exg     d,y                      ; 7077:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,y                      ; 7078:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,y                      ; 7079:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bne     L705b                    ; 707A:  D0 DF

L707c                   ldb     #$0b                     ; 707C:  A9 0B

                        stb     $44,x                    ; 707E:  95 44

                        ldb     #$00                     ; 7080:  A9 00

                        stb     $45,x                    ; 7082:  95 45

                        stb     $46,x                    ; 7084:  95 46

                        ldb     #$f0                     ; 7086:  A9 F0

                        stb     <$77                     ; 7088:  85 77

                        exg     d,x                      ; 708A:  A6 0C
                        lda     #0                         
                        ldb     <$0c                     ; Zero page
                        exg     d,x                        

                        ldb     $64,x                    ; 708C:  B5 64

                        stb     $0025,y                  ; 708E:  99 25 00

                        ldb     $63,x                    ; 7091:  B5 63

                        stb     $0024,y                  ; 7093:  99 24 00

                        ldb     $62,x                    ; 7096:  B5 62

                        stb     $0023,y                  ; 7098:  99 23 00

                        jmp     L6fff                    ; 709B:  4C FF 6F

                        fcb     $98,$10,$09,$20            
                        fcb     $B6,$70,$20,$AA            
                        fcb     $70,$4C,$B6,$70            
                        fcb     $A8,$8A,$10,$0E            
                        fcb     $20,$B6,$70,$20            
                        fcb     $BC,$70,$49,$80            
L70b6                   eorb    #$ff                     ; 70B6:  49 FF

                        andcc   #$fe                     ; 70B8:  18

                        adcb    #$01                     ; 70B9:  69 01

                        rts                              ; 70BB:  60

                        fcb     $85,$0D,$98,$C5            
                        fcb     $0D,$90,$0E,$A4            
                        fcb     $0D,$85,$0D,$98            
                        fcb     $20,$D1,$70,$38            
                        fcb     $E9,$40,$4C,$B6            
                        fcb     $70,$20,$EB,$70            
                        fcb     $AA,$BD,$D9,$70            
                        fcb     $60,$00,$02,$05            
                        fcb     $07,$0A,$0C,$0F            
                        fcb     $11,$13,$15,$17            
                        fcb     $19,$1A,$1C,$1D            
                        fcb     $1F,$20,$D5,$A0            
                        fcb     $04,$C5,$0D,$90            
                        fcb     $02,$E5,$0D,$26            
                        fcb     $0C,$0A,$88,$10            
                        fcb     $F4,$A5,$0C,$29            
                        fcb     $1F,$60                    
L70fe                   andcc   #$fe                     ; 70FE:  18

                        adcb    #$40                     ; 70FF:  69 40

L7101                   bpl     L710b                    ; 7101:  10 08

                        andb    #$7f                     ; 7103:  29 7F

                        jsr     L710b                    ; 7105:  20 0B 71

                        jmp     L70b6                    ; 7108:  4C B6 70

L710b                   cmpb    #$41                     ; 710B:  C9 41

                        bcc     L7113                    ; 710D:  90 04

                        eorb    #$7f                     ; 710F:  49 7F

                        adcb    #$00                     ; 7111:  69 00

L7113                   lda     #0                       ; 7113:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     $4b61,x                  ; 7114:  BD 61 4B

                        rts                              ; 7117:  60

L7118                   ldb     #$04                     ; 7118:  A9 04

                        stb     <$76                     ; 711A:  85 76

L711c                   jsr     L4ba2                    ; 711C:  20 A2 4B

                        dec     <$76                     ; 711F:  C6 76

                        bne     L711c                    ; 7121:  D0 F9

                        exg     d,x                      ; 7123:  A2 C9
                        lda     #0                         
                        ldb     #$c9                     ; Immediate
                        exg     d,x                        

                        ldb     #$47                     ; 7125:  A9 47

                        stb     <$04                     ; 7127:  85 04

                        ldb     #$02                     ; 7129:  A9 02

                        stb     <$03                     ; 712B:  85 03

                        ldb     #$c1                     ; 712D:  A9 C1

                        jsr     L7cd5                    ; 712F:  20 D5 7C

                        ldb     #$be                     ; 7132:  A9 BE

                        stb     <$09                     ; 7134:  85 09

                        ldb     #$75                     ; 7136:  A9 75

                        stb     <$0a                     ; 7138:  85 0A

                        ldb     #$00                     ; 713A:  A9 00

                        stb     <$01                     ; 713C:  85 01

                        ldb     #$70                     ; 713E:  A9 70

                        exg     d,x                      ; 7140:  A2 20
                        lda     #0                         
                        ldb     #$20                     ; Immediate
                        exg     d,x                        

                        jsr     L717f                    ; 7142:  20 7F 71

                        jmp     L79d6                    ; 7145:  4C D6 79

L7148                   ldb     #$c5                     ; 7148:  A9 C5

                        exg     d,x                      ; 714A:  A2 C9
                        lda     #0                         
                        ldb     #$c9                     ; Immediate
                        exg     d,x                        

                        jsr     L7cd5                    ; 714C:  20 D5 7C

                        exg     d,x                      ; 714F:  A2 BE
                        lda     #0                         
                        ldb     #$be                     ; Immediate
                        exg     d,x                        

                        ldb     #$75                     ; 7151:  A9 75

                        stb     <$0a                     ; 7153:  85 0A

                        exg     d,x                      ; 7155:  86 09
                        stb     <$09                     ; Zero page
                        exg     d,x                        

                        bne     L7187                    ; 7157:  D0 2E

L7159                   ldb     Option21                 ; 7159:  AD 03 28

                        andb    #$03                     ; 715C:  29 03

                        exg     d,x                      ; 715E:  A2 10
                        lda     #0                         
                        ldb     #$10                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 7160:  86 01
                        stb     <$01                     ; Zero page
                        exg     d,x                        

L7162                   aslb                             ; 7162:  0A

                        lda     #0                       ; 7163:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     $71f1,x                  ; 7164:  BD F1 71

                        stb     <$0a                     ; 7167:  85 0A

                        ldb     $71f0,x                  ; 7169:  BD F0 71

                        stb     <$09                     ; 716C:  85 09

                        ldu     ,u                       ; 716E:  71 09
                        leau    $09,u                      
                        adcb    ,u                         

                        stb     <$09                     ; 7170:  85 09

                        bcc     L7176                    ; 7172:  90 02

                        inc     <$0a                     ; 7174:  E6 0A

L7176                   tfr     y,d                      ; 7176:  98
                        tstb                               

                        aslb                             ; 7177:  0A

                        lda     #0                       ; 7178:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     $71d4,y                  ; 7179:  B9 D4 71

                        exg     d,x                      ; 717C:  BE D5 71
                        lda     #0                         
                        ldb     $71d5,y                  ; Absolute, Y
                        exg     d,x                        

L717f                   jsr     L7a1f                    ; 717F:  20 1F 7A

                        ldb     #$70                     ; 7182:  A9 70

                        jsr     L7aea                    ; 7184:  20 EA 7A

L7187                   exg     d,y                      ; 7187:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        exg     d,x                      ; 7189:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

L718b                   leau    $09,x                    ; 718B:  A1 09
                        ldb     ,u                         

                        stb     <$0c                     ; 718D:  85 0C

                        lsrb                             ; 718F:  4A

                        lsrb                             ; 7190:  4A

                        jsr     L71b0                    ; 7191:  20 B0 71

                        leau    $09,x                    ; 7194:  A1 09
                        ldb     ,u                         

                        rolb                             ; 7196:  2A

                        rol     <$0c                     ; 7197:  26 0C

                        rolb                             ; 7199:  2A

                        ldb     <$0c                     ; 719A:  A5 0C

                        rolb                             ; 719C:  2A

                        aslb                             ; 719D:  0A

                        jsr     L71b6                    ; 719E:  20 B6 71

                        leau    $09,x                    ; 71A1:  A1 09
                        ldb     ,u                         

                        stb     <$0c                     ; 71A3:  85 0C

                        jsr     L71b0                    ; 71A5:  20 B0 71

                        lsr     <$0c                     ; 71A8:  46 0C

                        bcc     L718b                    ; 71AA:  90 DF

L71ac                   exg     d,y                      ; 71AC:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        jmp     L7a55                    ; 71AD:  4C 55 7A

L71b0                   inc     <$09                     ; 71B0:  E6 09

                        bne     L71b6                    ; 71B2:  D0 02

                        inc     <$0a                     ; 71B4:  E6 0A

L71b6                   andb    #$3e                     ; 71B6:  29 3E

                        bne     L71be                    ; 71B8:  D0 04

                        puls    b                        ; 71BA:  68

                        puls    b                        ; 71BB:  68

                        bne     L71ac                    ; 71BC:  D0 EE

L71be                   cmpb    #$0a                     ; 71BE:  C9 0A

                        bcc     L71c4                    ; 71C0:  90 02

                        adcb    #$0d                     ; 71C2:  69 0D

L71c4                   lda     #0                       ; 71C4:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     $56f6,x                  ; 71C5:  BD F6 56

                        ldu     ,u                       ; 71C8:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 71CA:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldb     $56f7,x                  ; 71CB:  BD F7 56

                        ldu     ,u                       ; 71CE:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 71D0:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,x                      ; 71D1:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        rts                              ; 71D3:  60

                        fcb     $68,$B6,$72,$B6            
                        fcb     $0C,$AA,$0C,$A2            
                        fcb     $0C,$9A,$0C,$92            
                        fcb     $68,$C6,$6E,$A7            
                        fcb     $56,$42,$5A,$42            
                        fcb     $58,$42,$68,$32            
                        fcb     $64,$C6,$6E,$D2            
                        fcb     $F8,$71,$AE,$72            
                        fcb     $7D,$73,$38,$74            
                        fcb     $0E,$16,$1C,$32            
                        fcb     $44,$58,$70,$78            
                        fcb     $7E,$8A,$94,$A0            
                        fcb     $A6,$B0,$63,$56            
                        fcb     $60,$6E,$3C,$EC            
                        fcb     $4D,$C0,$A4,$0A            
                        fcb     $EA,$6C,$08,$00            
                        fcb     $EC,$F2,$B0,$6E            
                        fcb     $3C,$EC,$48,$5A            
                        fcb     $B8,$66,$92,$42            
                        fcb     $9A,$82,$C3,$12            
                        fcb     $0E,$12,$90,$4C            
                        fcb     $4D,$F1,$A4,$12            
                        fcb     $2D,$D2,$0A,$64            
                        fcb     $C2,$6C,$0F,$66            
                        fcb     $CD,$82,$6C,$9A            
                        fcb     $C3,$4A,$85,$C0            
                        fcb     $A5,$92,$BD,$C2            
                        fcb     $B4,$F0,$2E,$12            
                        fcb     $0E,$26,$0D,$D2            
                        fcb     $82,$4E,$C0,$60            
                        fcb     $4E,$30,$4D,$80            
                        fcb     $A5,$92,$BD,$C2            
                        fcb     $BB,$1A,$4C,$10            
                        fcb     $0E,$D8,$4C,$82            
                        fcb     $82,$70,$C2,$6C            
                        fcb     $0B,$6E,$09,$E6            
                        fcb     $B5,$92,$3E,$00            
                        fcb     $A5,$92,$BD,$C2            
                        fcb     $BE,$0A,$B6,$00            
                        fcb     $59,$62,$48,$66            
                        fcb     $D2,$6D,$18,$4E            
                        fcb     $9B,$64,$09,$02            
                        fcb     $3D,$92,$43,$70            
                        fcb     $B8,$00,$18,$4E            
                        fcb     $9B,$64,$08,$C2            
                        fcb     $3D,$92,$43,$71            
                        fcb     $20,$4E,$9B,$64            
                        fcb     $B8,$46,$09,$EC            
                        fcb     $4A,$1A,$C0,$00            
                        fcb     $3D,$92,$43,$70            
                        fcb     $B8,$40,$20,$56            
                        fcb     $2C,$52,$0C,$5A            
                        fcb     $93,$62,$CC,$40            
                        fcb     $34,$E4,$CD,$C2            
                        fcb     $2E,$03,$0D,$17            
                        fcb     $1D,$37,$4F,$67            
                        fcb     $7D,$8B,$91,$9D            
                        fcb     $A9,$B5,$BB,$64            
                        fcb     $D2,$3B,$2E,$C2            
                        fcb     $6C,$5A,$4C,$93            
                        fcb     $6F,$BD,$1A,$4C            
                        fcb     $12,$B0,$40,$6B            
                        fcb     $2C,$0A,$6C,$5A            
                        fcb     $4C,$93,$6E,$0B            
                        fcb     $6E,$C0,$52,$6C            
                        fcb     $92,$B8,$50,$4D            
                        fcb     $82,$F2,$58,$90            
                        fcb     $4C,$4D,$F0,$4C            
                        fcb     $80,$33,$70,$C2            
                        fcb     $42,$5A,$4C,$4C            
                        fcb     $82,$BB,$52,$0B            
                        fcb     $58,$B2,$42,$6C            
                        fcb     $9A,$C3,$4A,$82            
                        fcb     $64,$0A,$5A,$90            
                        fcb     $00,$F6,$6C,$09            
                        fcb     $B2,$3B,$2E,$C1            
                        fcb     $4C,$4C,$B6,$2B            
                        fcb     $20,$0D,$A6,$C1            
                        fcb     $70,$48,$50,$B6            
                        fcb     $52,$3B,$D2,$90            
                        fcb     $00,$DA,$64,$90            
                        fcb     $4C,$C9,$D8,$BE            
                        fcb     $0A,$32,$42,$9B            
                        fcb     $C2,$BB,$1A,$4C            
                        fcb     $10,$0A,$2C,$CA            
                        fcb     $4E,$7A,$65,$BE            
                        fcb     $0A,$B6,$1E,$94            
                        fcb     $D2,$A2,$92,$0A            
                        fcb     $2C,$CA,$4E,$7A            
                        fcb     $65,$BD,$1A,$4C            
                        fcb     $12,$92,$13,$18            
                        fcb     $62,$CA,$64,$F2            
                        fcb     $42,$20,$6E,$A3            
                        fcb     $52,$82,$40,$18            
                        fcb     $62,$CA,$64,$F2            
                        fcb     $42,$18,$6E,$A3            
                        fcb     $52,$80,$00,$20            
                        fcb     $62,$CA,$64,$F2            
                        fcb     $64,$08,$C2,$BD            
                        fcb     $1A,$4C,$00,$7D            
                        fcb     $92,$43,$70,$48            
                        fcb     $40,$5A,$60,$42            
                        fcb     $5A,$96,$F2,$B2            
                        fcb     $82,$56,$52,$B0            
                        fcb     $7C,$DA,$5A,$0D            
                        fcb     $E8,$6A,$60,$48            
                        fcb     $00,$0D,$17,$1B            
                        fcb     $33,$43,$59,$71            
                        fcb     $7D,$87,$93,$9F            
                        fcb     $AB,$B1,$8A,$5A            
                        fcb     $84,$12,$CD,$82            
                        fcb     $B9,$E6,$B2,$40            
                        fcb     $74,$F2,$4D,$83            
                        fcb     $D4,$F0,$B2,$42            
                        fcb     $B9,$E6,$B2,$42            
                        fcb     $4D,$F0,$0E,$64            
                        fcb     $0A,$12,$B8,$46            
                        fcb     $10,$62,$4B,$60            
                        fcb     $82,$72,$B5,$C0            
                        fcb     $BE,$A8,$0A,$64            
                        fcb     $C5,$92,$F0,$74            
                        fcb     $9D,$C2,$6C,$9A            
                        fcb     $C3,$4A,$82,$6F            
                        fcb     $A4,$F2,$BD,$D2            
                        fcb     $F0,$6C,$9E,$0A            
                        fcb     $C2,$42,$A4,$F2            
                        fcb     $B0,$74,$9D,$C2            
                        fcb     $6C,$9A,$C3,$4A            
                        fcb     $82,$6F,$A4,$F2            
                        fcb     $BD,$D2,$F0,$6E            
                        fcb     $63,$52,$82,$02            
                        fcb     $AE,$4A,$92,$02            
                        fcb     $82,$70,$C5,$92            
                        fcb     $09,$E6,$B5,$92            
                        fcb     $3E,$13,$2D,$28            
                        fcb     $CF,$52,$B0,$6E            
                        fcb     $CD,$82,$BE,$0A            
                        fcb     $B6,$00,$53,$64            
                        fcb     $0A,$12,$0D,$0A            
                        fcb     $B6,$1A,$48,$00            
                        fcb     $18,$68,$6A,$4E            
                        fcb     $48,$48,$0B,$A6            
                        fcb     $CA,$72,$B5,$C0            
                        fcb     $18,$68,$6A,$4E            
                        fcb     $48,$46,$0B,$A6            
                        fcb     $CA,$72,$B0,$00            
                        fcb     $20,$68,$6A,$4E            
                        fcb     $4D,$C2,$18,$5C            
                        fcb     $9E,$52,$CD,$80            
                        fcb     $3D,$92,$43,$70            
                        fcb     $B8,$40,$20,$5C            
                        fcb     $4E,$78,$0C,$5A            
                        fcb     $93,$62,$CC,$40            
                        fcb     $0D,$13,$19,$33            
                        fcb     $47,$61,$6B,$73            
                        fcb     $7D,$89,$93,$9F            
                        fcb     $A5,$B2,$4E,$9D            
                        fcb     $90,$B8,$00,$76            
                        fcb     $56,$2A,$26,$B0            
                        fcb     $40,$BE,$42,$A6            
                        fcb     $64,$C1,$5C,$48            
                        fcb     $52,$BE,$0A,$0A            
                        fcb     $64,$C5,$92,$0C            
                        fcb     $26,$B8,$50,$6A            
                        fcb     $7C,$0C,$52,$74            
                        fcb     $EC,$4D,$C0,$A4            
                        fcb     $EC,$0A,$8A,$D4            
                        fcb     $EC,$0A,$64,$C5            
                        fcb     $92,$0D,$F2,$B8            
                        fcb     $5A,$93,$4E,$69            
                        fcb     $60,$4D,$C0,$9D            
                        fcb     $2C,$6C,$4A,$0D            
                        fcb     $A6,$C1,$70,$48            
                        fcb     $68,$2D,$8A,$0D            
                        fcb     $D2,$82,$4E,$3B            
                        fcb     $66,$91,$6C,$0C            
                        fcb     $0A,$0C,$12,$C5            
                        fcb     $8B,$9D,$2C,$6C            
                        fcb     $4A,$0D,$D8,$6A            
                        fcb     $60,$40,$00,$A6            
                        fcb     $60,$B9,$6C,$0D            
                        fcb     $F0,$2D,$B1,$76            
                        fcb     $52,$5C,$C2,$C2            
                        fcb     $6C,$8B,$64,$2A            
                        fcb     $27,$18,$54,$69            
                        fcb     $D8,$28,$48,$0B            
                        fcb     $B2,$4A,$E6,$B8            
                        fcb     $00,$18,$54,$69            
                        fcb     $D8,$28,$46,$0B            
                        fcb     $B2,$4A,$E7,$20            
                        fcb     $54,$69,$D8,$2D            
                        fcb     $C2,$18,$5C,$CA            
                        fcb     $56,$98,$00,$3D            
                        fcb     $92,$43,$70,$9D            
                        fcb     $C3,$20,$5C,$CA            
                        fcb     $56,$2D,$C2,$8B            
                        fcb     $64,$6C,$67                
L74e7                   andb    <$73                     ; 74E7:  24 73

                        bpl     L7514                    ; 74E9:  10 29

                        tfr     x,d                      ; 74EB:  8A
                        tstb                               

                        beq     L74f5                    ; 74EC:  F0 07

                        exg     d,y                      ; 74EE:  C0 19
                        cmpb    #$19                     ; Immediate
                        exg     d,y                        

                        bne     L7514                    ; 74F0:  D0 22

                        adcb    #$18                     ; 74F2:  69 18

                        lda     #0                       ; 74F4:  A8
                        tstb                               
                        tfr     d,y                        

L74f5                   ldb     $0200,y                  ; 74F5:  B9 00 02

                        exg     d,y                      ; 74F8:  C0 1A
                        cmpb    #$1a                     ; Immediate
                        exg     d,y                        

                        beq     L7516                    ; 74FA:  F0 1A

                        bcc     L7528                    ; 74FC:  90 2A

                        ldb     #$00                     ; 74FE:  A9 00

                        stb     $0200,y                  ; 7500:  99 00 02

                        exg     d,x                      ; 7503:  A2 E1
                        lda     #0                         
                        ldb     #$e1                     ; Immediate
                        exg     d,x                        

L7505                   puls    b                        ; 7505:  68

                        puls    b                        ; 7506:  68

L7507                   tfr     x,d                      ; 7507:  8A
                        tstb                               

                        adcb    $02ef                    ; 7508:  6D EF 02

                        bcs     L7511                    ; 750B:  B0 04

                        ldb     #$00                     ; 750D:  A9 00

                        stb     <$73                     ; 750F:  85 73

L7511                   stb     $02ef                    ; 7511:  8D EF 02

L7514                   andcc   #$fe                     ; 7514:  18

                        rts                              ; 7515:  60

L7516                   exg     d,x                      ; 7516:  A2 80
                        lda     #0                         
                        ldb     #$80                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 7518:  EC EF 02
                        cmpb    $02ef                    ; Absolute
                        exg     d,x                        

                        bcc     L7523                    ; 751B:  90 06

                        exg     d,x                      ; 751D:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        exg     d,y                      ; 751F:  A0 1A
                        lda     #0                         
                        ldb     #$1a                     ; Immediate
                        exg     d,y                        

                        andcc   #$fe                     ; 7521:  18

                        rts                              ; 7522:  60

L7523                   jsr     L7507                    ; 7523:  20 07 75

                        orcc    #$01                     ; 7526:  38

                        rts                              ; 7527:  60

L7528                   exg     d,x                      ; 7528:  A2 F8
                        lda     #0                         
                        ldb     #$f8                     ; Immediate
                        exg     d,x                        

                        orcc    #$01                     ; 752A:  38

                        ror     <$71                     ; 752B:  66 71

                        exg     d,y                      ; 752D:  C4 72
                        cmpb    <$72                     ; Zero page
                        exg     d,y                        

                        beq     L7505                    ; 752F:  F0 D4

                        exg     d,y                      ; 7531:  84 72
                        stb     <$72                     ; Zero page
                        exg     d,y                        

                        aslb                             ; 7533:  0A

                        andb    #$86                     ; 7534:  29 86

                        stb     <$10                     ; 7536:  85 10

                        bmi     L7554                    ; 7538:  30 1A

                        beq     L7554                    ; 753A:  F0 18

                        ldb     $0221,y                  ; 753C:  B9 21 02

                        cmpb    #$80                     ; 753F:  C9 80

                        rorb                             ; 7541:  6A

                        jsr     L6a62                    ; 7542:  20 62 6A

                        stb     $0221,y                  ; 7545:  99 21 02

                        ldb     $0242,y                  ; 7548:  B9 42 02

                        cmpb    #$80                     ; 754B:  C9 80

                        rorb                             ; 754D:  6A

                        jsr     L6a62                    ; 754E:  20 62 6A

                        stb     $0242,y                  ; 7551:  99 42 02

L7554                   exg     d,x                      ; 7554:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        jsr     L7567                    ; 7556:  20 67 75

                        exg     d,x                      ; 7559:  A2 21
                        lda     #0                         
                        ldb     #$21                     ; Immediate
                        exg     d,x                        

                        tfr     y,d                      ; 755B:  98
                        tstb                               

                        andcc   #$fe                     ; 755C:  18

                        adcb    #$21                     ; 755D:  69 21

                        lda     #0                       ; 755F:  A8
                        tstb                               
                        tfr     d,y                        

                        jsr     L7567                    ; 7560:  20 67 75

                        exg     d,x                      ; 7563:  A2 B0
                        lda     #0                         
                        ldb     #$b0                     ; Immediate
                        exg     d,x                        

                        bne     L7505                    ; 7565:  D0 9E

L7567                   exg     d,x                      ; 7567:  86 11
                        stb     <$11                     ; Zero page
                        exg     d,x                        

                        ldb     $0221,y                  ; 7569:  B9 21 02

                        bmi     L7581                    ; 756C:  30 13

                        ldb     $023a,x                  ; 756E:  BD 3A 02

                        bmi     L758b                    ; 7571:  30 18

                        jsr     L75b1                    ; 7573:  20 B1 75

                        bcc     L758b                    ; 7576:  90 13

L7578                   ldb     #$00                     ; 7578:  A9 00

                        orcc    #$01                     ; 757A:  38

                        sbcb    $0221,y                  ; 757B:  F9 21 02

                        jmp     L759a                    ; 757E:  4C 9A 75

L7581                   ldb     $023a,x                  ; 7581:  BD 3A 02

                        bpl     L758b                    ; 7584:  10 05

                        jsr     L75b1                    ; 7586:  20 B1 75

                        bcc     L7578                    ; 7589:  90 ED

L758b                   ldb     $0221,y                  ; 758B:  B9 21 02

                        andb    <$10                     ; 758E:  24 10

                        bpl     L7599                    ; 7590:  10 07

                        cmpb    #$80                     ; 7592:  C9 80

                        rorb                             ; 7594:  6A

                        adcb    $0221,y                  ; 7595:  79 21 02

                        lsrb                             ; 7598:  4A

L7599                   rolb                             ; 7599:  2A

L759a                   jsr     L68ea                    ; 759A:  20 EA 68

                        bpl     L75a5                    ; 759D:  10 06

                        cmpb    #$fb                     ; 759F:  C9 FB

                        bcc     L75ab                    ; 75A1:  90 08

                        ldb     #$fa                     ; 75A3:  A9 FA

L75a5                   cmpb    #$06                     ; 75A5:  C9 06

                        bcs     L75ab                    ; 75A7:  B0 02

                        ldb     #$06                     ; 75A9:  A9 06

L75ab                   exg     d,x                      ; 75AB:  A6 11
                        lda     #0                         
                        ldb     <$11                     ; Zero page
                        exg     d,x                        

                        stb     $023a,x                  ; 75AD:  9D 3A 02

                        rts                              ; 75B0:  60

L75b1                   ldb     $02a5,y                  ; 75B1:  B9 A5 02

                        cmpb    $02be,x                  ; 75B4:  DD BE 02

                        ldb     $0263,y                  ; 75B7:  B9 63 02

                        sbcb    $027c,x                  ; 75BA:  FD 7C 02

                        rts                              ; 75BD:  60

                        fcb     $1F,$C4,$09,$70            
                        fcb     $2D,$9A,$0B,$64            
                        fcb     $38,$00,$00,$00            
                        fcb     $00,$00,$00,$00            
                        fcb     $01,$08,$00,$00            
                        fcb     $00,$00,$00,$00            
                        fcb     $0F,$08,$00,$00            
                        fcb     $00,$00,$16,$21            
                        fcb     $00,$00,$00,$00            
                        fcb     $2F,$36,$00,$00            
                        fcb     $00,$00,$3D,$44            
                        fcb     $00,$00,$00,$00            
                        fcb     $00,$00,$00,$00            
                        fcb     $00,$00,$00,$00            
                        fcb     $4B,$52,$00,$00            
                        fcb     $00,$00,$28,$21            
                        fcb     $00,$00,$00,$00            
                        fcb     $5D,$64,$00,$00            
                        fcb     $00,$00,$00,$00            
                        fcb     $00,$00,$6F,$7A            
                        fcb     $85,$7A,$90,$A5            
                        fcb     $00,$00,$00,$00            
                        fcb     $90,$B6,$D3,$DE            
                        fcb     $00,$00,$00,$00            
                        fcb     $00,$00,$00,$00            
                        fcb     $00,$00,$00,$00            
                        fcb     $C1,$CC,$00,$01            
                        fcb     $04,$E0,$03,$05            
                        fcb     $00,$00,$01,$04            
                        fcb     $A8,$FF,$05,$00            
                        fcb     $00,$01,$04,$D0            
                        fcb     $03,$05,$00,$00            
                        fcb     $7F,$01,$04,$01            
                        fcb     $10,$01,$14,$FF            
                        fcb     $10,$00,$00,$7F            
                        fcb     $20,$A2,$00,$01            
                        fcb     $00,$00,$7F,$01            
                        fcb     $10,$01,$20,$00            
                        fcb     $00,$01,$02,$0C            
                        fcb     $01,$18,$00,$00            
                        fcb     $01,$10,$A4,$FF            
                        fcb     $03,$00,$00,$01            
                        fcb     $01,$04,$01,$40            
                        fcb     $00,$00,$01,$10            
                        fcb     $A4,$FF,$04,$00            
                        fcb     $00,$01,$F0,$06            
                        fcb     $00,$02,$00,$00            
                        fcb     $0F,$10,$A8,$00            
                        fcb     $01,$10,$A0,$00            
                        fcb     $01,$00,$00,$01            
                        fcb     $02,$50,$01,$70            
                        fcb     $00,$00,$07,$10            
                        fcb     $A8,$00,$01,$10            
                        fcb     $A0,$00,$01,$00            
                        fcb     $00,$0C,$02,$0A            
                        fcb     $01,$03,$04,$0C            
                        fcb     $FF,$02,$00,$00            
                        fcb     $01,$18,$A0,$01            
                        fcb     $05,$18,$A5,$FF            
                        fcb     $05,$00,$00,$18            
                        fcb     $02,$0A,$01,$02            
                        fcb     $02,$0B,$00,$02            
                        fcb     $00,$00,$10,$0C            
                        fcb     $21,$00,$01,$0C            
                        fcb     $18,$00,$01,$00            
                        fcb     $01,$02,$20,$10            
                        fcb     $FF,$04,$30,$02            
                        fcb     $30,$00,$00,$01            
                        fcb     $30,$21,$01,$08            
                        fcb     $00,$01,$80,$84            
                        fcb     $01,$04,$30,$85            
                        fcb     $FF,$04,$00,$00            
                        fcb     $04,$18,$A5,$FF            
                        fcb     $04,$18,$A1,$01            
                        fcb     $04,$00,$00,$10            
                        fcb     $0C,$49,$00,$01            
                        fcb     $0C,$30,$00,$01            
                        fcb     $00,$00,$02,$C0            
                        fcb     $A4,$00,$01,$00            
                        fcb     $00,$01,$01,$F0            
                        fcb     $01,$0F,$01,$FF            
                        fcb     $FF,$0F,$00,$00            
                        fcb     $01,$1F,$A2,$00            
                        fcb     $01,$00,$00                
L770d                   andb    $7741                    ; 770D:  2C 41 77

                        andcc   #$fe                     ; 7710:  18

                        bcc     L771c                    ; 7711:  90 09

L7713                   orcc    #$01                     ; 7713:  38

                        bcs     L7717                    ; 7714:  B0 01

L7716                   andcc   #$fe                     ; 7716:  18

L7717                   ldb     <$22                     ; 7717:  A5 22

                        beq     L770d                    ; 7719:  F0 F2

                                                         ; 771B:  B8

L771c                   tfr     x,d                      ; 771C:  8A
                        tstb                               

                        pshs    b                        ; 771D:  48

                        exg     d,x                      ; 771E:  A2 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,x                        

L7720                   bcc     L7726                    ; 7720:  90 04

                        ldb     $9b,x                    ; 7722:  B5 9B

                        bne     L773b                    ; 7724:  D0 15

L7726                   ldb     $75c8,y                  ; 7726:  B9 C8 75

                        beq     L773b                    ; 7729:  F0 10

                        bvc     L772f                    ; 772B:  50 02

                        ldb     #$00                     ; 772D:  A9 00

L772f                   pshs    b                        ; 772F:  48

                        ldb     #$00                     ; 7730:  A9 00

                        stb     $9b,x                    ; 7732:  95 9B

                        ldb     #$80                     ; 7734:  A9 80

                        stb     $bb,x                    ; 7736:  95 BB

                        puls    b                        ; 7738:  68

                        stb     $9b,x                    ; 7739:  95 9B

L773b                   exg     d,y                      ; 773B:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,y                      ; 773C:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7720                    ; 773D:  10 E1

                        puls    b                        ; 773F:  68

                        lda     #0                       ; 7740:  AA
                        tstb                               
                        tfr     d,x                        

                        rts                              ; 7741:  60

L7742                   exg     d,x                      ; 7742:  A2 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,x                        

L7744                   exg     d,y                      ; 7744:  B4 9B
                        lda     #0                         
                        ldb     $9b,x                    ; Zero page, X
                        exg     d,y                        

                        beq     L7782                    ; 7746:  F0 3A

                        ldb     $bb,x                    ; 7748:  B5 BB

                        bmi     L778d                    ; 774A:  30 41

                        dec     $ab,x                    ; 774C:  D6 AB

                        bne     L7784                    ; 774E:  D0 34

                        dec     $b3,x                    ; 7750:  D6 B3

                        beq     L775d                    ; 7752:  F0 09

                        ldb     $a3,x                    ; 7754:  B5 A3

                        andcc   #$fe                     ; 7756:  18

                        adcb    $762a,y                  ; 7757:  79 2A 76

                        jmp     L776b                    ; 775A:  4C 6B 77

L775d                   exg     d,y                      ; 775D:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 775E:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 775F:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 7760:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

L7761                   exg     d,y                      ; 7761:  94 9B
                        stb     $9b,x                    ; Zero page, X
                        exg     d,y                        

                        ldb     $762b,y                  ; 7763:  B9 2B 76

                        stb     $b3,x                    ; 7766:  95 B3

                        ldb     $7629,y                  ; 7768:  B9 29 76

L776b                   stb     $a3,x                    ; 776B:  95 A3

                        ldb     $7628,y                  ; 776D:  B9 28 76

                        stb     $ab,x                    ; 7770:  95 AB

                        bne     L7784                    ; 7772:  D0 10

                        exg     d,y                      ; 7774:  B4 C3
                        lda     #0                         
                        ldb     $c3,x                    ; Zero page, X
                        exg     d,y                        

                        dec     $bb,x                    ; 7776:  D6 BB

                        bne     L7761                    ; 7778:  D0 E7

                        exg     d,y                      ; 777A:  B4 9B
                        lda     #0                         
                        ldb     $9b,x                    ; Zero page, X
                        exg     d,y                        

                        exg     d,y                      ; 777C:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        bne     L778d                    ; 777D:  D0 0E

L777f                   lda     #0                       ; 777F:  A8
                        tstb                               
                        tfr     d,y                        

                        exg     d,y                      ; 7780:  94 9B
                        stb     $9b,x                    ; Zero page, X
                        exg     d,y                        

L7782                   exg     d,y                      ; 7782:  94 A3
                        stb     $a3,x                    ; Zero page, X
                        exg     d,y                        

L7784                   ldb     $a3,x                    ; 7784:  B5 A3

                        stb     Pk_F1_Pot0,x             ; 7786:  9D 00 2C

                        exg     d,y                      ; 7789:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7744                    ; 778A:  10 B8

                        rts                              ; 778C:  60

L778d                   ldb     $7628,y                  ; 778D:  B9 28 76

                        beq     L777f                    ; 7790:  F0 ED

                        stb     $bb,x                    ; 7792:  95 BB

                        exg     d,y                      ; 7794:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 7795:  94 C3
                        stb     $c3,x                    ; Zero page, X
                        exg     d,y                        

                        bne     L7761                    ; 7797:  D0 C8

                        leau    $e0,x                    ; 7799:  01 E0
                        orb     ,u                         

                        exg     d,y                      ; 779B:  C0 E1
                        cmpb    #$e1                     ; Immediate
                        exg     d,y                        

                        sbcb    <$c3                     ; 779D:  E5 C3

                        exg     d,y                      ; 779F:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        fcb     $C3,$AF,$C3,$94            
                        fcb     $C3,$7F,$02,$04            
                        fcb     $04,$05,$03,$7F            
                        fcb     $7F,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
                        fcb     $FF,$FF,$FF,$FF            
L7844                   ldb     #$00                     ; 7844:  A9 00

                        exg     d,x                      ; 7846:  A2 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,x                        

L7848                   stb     $9b,x                    ; 7848:  95 9B

                        exg     d,y                      ; 784A:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7848                    ; 784B:  10 FB

                        stb     Pk_Ctl_All               ; 784D:  8D 08 2C

                        rts                              ; 7850:  60

IRQ_Handler             andb    $01ff                    ; 7851:  2C FF 01

                        bpl     L7857                    ; 7854:  10 01

                        rti                              ; 7856:  40

L7857                   pshs    b                        ; 7857:  48

                        tfr     y,d                      ; 7858:  98
                        tstb                               

                        pshs    b                        ; 7859:  48

                        tfr     x,d                      ; 785A:  8A
                        tstb                               

                        pshs    b                        ; 785B:  48

                                                         ; 785C:  D8

                        ldb     $01ff                    ; 785D:  AD FF 01

                        orb     $01d0                    ; 7860:  0D D0 01

L7863                   bne     L7863                    ; 7863:  D0 FE

                        inc     <$78                     ; 7865:  E6 78

                        ldb     <$78                     ; 7867:  A5 78

                        andb    #$03                     ; 7869:  29 03

                        bne     L787a                    ; 786B:  D0 0D

                        inc     <$75                     ; 786D:  E6 75

                        ldb     <$75                     ; 786F:  A5 75

                        cmpb    #$03                     ; 7871:  C9 03

                        bcc     L787a                    ; 7873:  90 05

L7875                   bne     L7875                    ; 7875:  D0 FE

                        stb     VGReset                  ; 7877:  8D 00 38

L787a                   exg     d,x                      ; 787A:  A6 22
                        lda     #0                         
                        ldb     <$22                     ; Zero page
                        exg     d,x                        

                        bne     L789b                    ; 787C:  D0 1D

                        ldb     <$42                     ; 787E:  A5 42

                        andb    <$43                     ; 7880:  25 43

                        bpl     L789b                    ; 7882:  10 17

                        exg     d,x                      ; 7884:  8E 0F 2C
                        stb     Pk_SerCtl                ; Absolute
                        exg     d,x                        

                        exg     d,x                      ; 7887:  A2 04
                        lda     #0                         
                        ldb     #$04                     ; Immediate
                        exg     d,x                        

L7889                   exg     d,y                      ; 7889:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bne     L7889                    ; 788A:  D0 FD

                        exg     d,x                      ; 788C:  A2 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 788E:  8E 0F 2C
                        stb     Pk_SerCtl                ; Absolute
                        exg     d,x                        

                        exg     d,x                      ; 7891:  8E 0B 2C
                        stb     Pk_PotGo                 ; Absolute
                        exg     d,x                        

                        ldb     Pk_Ctl_All               ; 7894:  AD 08 2C

                        eorb    #$ff                     ; 7897:  49 FF

                        stb     <$8d                     ; 7899:  85 8D

L789b                   jsr     L7742                    ; 789B:  20 42 77

                        exg     d,x                      ; 789E:  A2 02
                        lda     #0                         
                        ldb     #$02                     ; Immediate
                        exg     d,x                        

L78a0                   ldb     LCoinSW,x                ; 78A0:  BD 00 24

                        aslb                             ; 78A3:  0A

                        ldb     $96,x                    ; 78A4:  B5 96

                        andb    #$1f                     ; 78A6:  29 1F

                        bcc     L78e1                    ; 78A8:  90 37

                        beq     L78bc                    ; 78AA:  F0 10

                        cmpb    #$1b                     ; 78AC:  C9 1B

                        bcs     L78ba                    ; 78AE:  B0 0A

                        lda     #0                       ; 78B0:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     <$78                     ; 78B1:  A5 78

                        andb    #$07                     ; 78B3:  29 07

                        cmpb    #$07                     ; 78B5:  C9 07

                        tfr     y,d                      ; 78B7:  98
                        tstb                               

                        bcc     L78bc                    ; 78B8:  90 02

L78ba                   sbcb    #$01                     ; 78BA:  E9 01

L78bc                   stb     $96,x                    ; 78BC:  95 96

                        ldb     SlamSW                   ; 78BE:  AD 06 20

                        andb    #$80                     ; 78C1:  29 80

                        beq     L78c9                    ; 78C3:  F0 04

                        ldb     #$f0                     ; 78C5:  A9 F0

                        stb     <$8e                     ; 78C7:  85 8E

L78c9                   ldb     <$8e                     ; 78C9:  A5 8E

                        beq     L78d5                    ; 78CB:  F0 08

                        dec     <$8e                     ; 78CD:  C6 8E

                        ldb     #$00                     ; 78CF:  A9 00

                        stb     $96,x                    ; 78D1:  95 96

                        stb     $93,x                    ; 78D3:  95 93

L78d5                   andcc   #$fe                     ; 78D5:  18

                        ldb     $93,x                    ; 78D6:  B5 93

                        beq     L78fd                    ; 78D8:  F0 23

                        dec     $93,x                    ; 78DA:  D6 93

                        bne     L78fd                    ; 78DC:  D0 1F

                        orcc    #$01                     ; 78DE:  38

                        bcs     L78fd                    ; 78DF:  B0 1C

L78e1                   cmpb    #$1b                     ; 78E1:  C9 1B

                        bcs     L78ee                    ; 78E3:  B0 09

                        ldb     $96,x                    ; 78E5:  B5 96

                        adcb    #$20                     ; 78E7:  69 20

                        bcc     L78bc                    ; 78E9:  90 D1

                        beq     L78ee                    ; 78EB:  F0 01

                        andcc   #$fe                     ; 78ED:  18

L78ee                   ldb     #$1f                     ; 78EE:  A9 1F

                        bcs     L78bc                    ; 78F0:  B0 CA

                        stb     $96,x                    ; 78F2:  95 96

                        ldb     $93,x                    ; 78F4:  B5 93

                        beq     L78f9                    ; 78F6:  F0 01

                        orcc    #$01                     ; 78F8:  38

L78f9                   ldb     #$78                     ; 78F9:  A9 78

                        stb     $93,x                    ; 78FB:  95 93

L78fd                   bcc     L7929                    ; 78FD:  90 2A

                        ldb     #$00                     ; 78FF:  A9 00

                        exg     d,x                      ; 7901:  E0 01
                        cmpb    #$01                     ; Immediate
                        exg     d,x                        

                        bcc     L791b                    ; 7903:  90 16

                        beq     L7913                    ; 7905:  F0 0C

                        ldb     <$8d                     ; 7907:  A5 8D

                        andb    #$0c                     ; 7909:  29 0C

                        lsrb                             ; 790B:  4A

                        lsrb                             ; 790C:  4A

                        beq     L791b                    ; 790D:  F0 0C

                        adcb    #$02                     ; 790F:  69 02

                        bne     L791b                    ; 7911:  D0 08

L7913                   ldb     <$8d                     ; 7913:  A5 8D

                        andb    #$10                     ; 7915:  29 10

                        beq     L791b                    ; 7917:  F0 02

                        ldb     #$01                     ; 7919:  A9 01

L791b                   orcc    #$01                     ; 791B:  38

                        pshs    b                        ; 791C:  48

                        adcb    <$99                     ; 791D:  65 99

                        stb     <$99                     ; 791F:  85 99

                        puls    b                        ; 7921:  68

                        orcc    #$01                     ; 7922:  38

                        adcb    <$8f                     ; 7923:  65 8F

                        stb     <$8f                     ; 7925:  85 8F

                        inc     $90,x                    ; 7927:  F6 90

L7929                   exg     d,y                      ; 7929:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bmi     L792f                    ; 792A:  30 03

                        jmp     L78a0                    ; 792C:  4C A0 78

L792f                   ldb     <$8d                     ; 792F:  A5 8D

                        lsrb                             ; 7931:  4A

                        lsrb                             ; 7932:  4A

                        lsrb                             ; 7933:  4A

                        lsrb                             ; 7934:  4A

                        lsrb                             ; 7935:  4A

                        lda     #0                       ; 7936:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     <$99                     ; 7937:  A5 99

                        orcc    #$01                     ; 7939:  38

                        sbcb    $77a5,y                  ; 793A:  F9 A5 77

                        bmi     L7949                    ; 793D:  30 0A

                        stb     <$99                     ; 793F:  85 99

                        inc     <$9a                     ; 7941:  E6 9A

                        exg     d,y                      ; 7943:  C0 03
                        cmpb    #$03                     ; Immediate
                        exg     d,y                        

                        bne     L7949                    ; 7945:  D0 02

                        inc     <$9a                     ; 7947:  E6 9A

L7949                   ldb     <$8d                     ; 7949:  A5 8D

                        andb    #$03                     ; 794B:  29 03

                        lda     #0                       ; 794D:  A8
                        tstb                               
                        tfr     d,y                        

                        beq     L796a                    ; 794E:  F0 1A

                        lsrb                             ; 7950:  4A

                        adcb    #$00                     ; 7951:  69 00

                        eorb    #$ff                     ; 7953:  49 FF

                        orcc    #$01                     ; 7955:  38

                        adcb    <$8f                     ; 7956:  65 8F

                        bcs     L7962                    ; 7958:  B0 08

                        adcb    <$9a                     ; 795A:  65 9A

                        bmi     L796c                    ; 795C:  30 0E

                        stb     <$9a                     ; 795E:  85 9A

                        ldb     #$00                     ; 7960:  A9 00

L7962                   exg     d,y                      ; 7962:  C0 02
                        cmpb    #$02                     ; Immediate
                        exg     d,y                        

                        bcs     L7968                    ; 7964:  B0 02

                        inc     <$8c                     ; 7966:  E6 8C

L7968                   inc     <$8c                     ; 7968:  E6 8C

L796a                   stb     <$8f                     ; 796A:  85 8F

L796c                   ldb     <$78                     ; 796C:  A5 78

                        lsrb                             ; 796E:  4A

                        bcs     L7998                    ; 796F:  B0 27

                        exg     d,y                      ; 7971:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        exg     d,x                      ; 7973:  A2 02
                        lda     #0                         
                        ldb     #$02                     ; Immediate
                        exg     d,x                        

L7975                   ldb     $90,x                    ; 7975:  B5 90

                        beq     L7982                    ; 7977:  F0 09

                        cmpb    #$10                     ; 7979:  C9 10

                        bcc     L7982                    ; 797B:  90 05

                        adcb    #$ef                     ; 797D:  69 EF

                        exg     d,y                      ; 797F:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        stb     $90,x                    ; 7980:  95 90

L7982                   exg     d,y                      ; 7982:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7975                    ; 7983:  10 F0

                        tfr     y,d                      ; 7985:  98
                        tstb                               

                        bne     L7998                    ; 7986:  D0 10

                        exg     d,x                      ; 7988:  A2 02
                        lda     #0                         
                        ldb     #$02                     ; Immediate
                        exg     d,x                        

L798a                   ldb     $90,x                    ; 798A:  B5 90

                        beq     L7995                    ; 798C:  F0 07

                        andcc   #$fe                     ; 798E:  18

                        adcb    #$ef                     ; 798F:  69 EF

                        stb     $90,x                    ; 7991:  95 90

                        bmi     L7998                    ; 7993:  30 03

L7995                   exg     d,y                      ; 7995:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L798a                    ; 7996:  10 F2

L7998                   ldb     <$90                     ; 7998:  A5 90

                        stb     LCount                   ; 799A:  8D 05 3C

                        ldb     <$91                     ; 799D:  A5 91

                        stb     CCount                   ; 799F:  8D 06 3C

                        ldb     <$92                     ; 79A2:  A5 92

                        stb     RCoin                    ; 79A4:  8D 07 3C

                        ldb     <$85                     ; 79A7:  A5 85

                        eorb    #$03                     ; 79A9:  49 03

                        rorb                             ; 79AB:  6A

                        rorb                             ; 79AC:  6A

                        stb     P1LED                    ; 79AD:  8D 00 3C

                        rorb                             ; 79B0:  6A

                        stb     P2LED                    ; 79B1:  8D 01 3C

                        ldb     <$8e                     ; 79B4:  A5 8E

                        beq     L79c2                    ; 79B6:  F0 0A

                        ldb     #$08                     ; 79B8:  A9 08

                        exg     d,y                      ; 79BA:  A0 AF
                        lda     #0                         
                        ldb     #$af                     ; Immediate
                        exg     d,y                        

                        stb     Pk_F1_Pot0               ; 79BC:  8D 00 2C

                        exg     d,y                      ; 79BF:  8C 01 2C
                        stb     Pk_C1_Pot1               ; Absolute
                        exg     d,y                        

L79c2                   ldb     #$00                     ; 79C2:  A9 00

                        asl     FireSW                   ; 79C4:  0E 04 20

                        bcc     L79ce                    ; 79C7:  90 05

                        ldb     <$fe                     ; 79C9:  A5 FE

                        orb     #$08                     ; 79CB:  09 08

                        aslb                             ; 79CD:  0A

L79ce                   stb     <$fe                     ; 79CE:  85 FE

                        puls    b                        ; 79D0:  68

                        lda     #0                       ; 79D1:  AA
                        tstb                               
                        tfr     d,x                        

                        puls    b                        ; 79D2:  68

                        lda     #0                       ; 79D3:  A8
                        tstb                               
                        tfr     d,y                        

                        puls    b                        ; 79D4:  68

                        rti                              ; 79D5:  40

L79d6                   ldb     #$d0                     ; 79D6:  A9 D0

                        bne     L79dc                    ; 79D8:  D0 02

L79da                   ldb     #$b0                     ; 79DA:  A9 B0

L79dc                   exg     d,y                      ; 79DC:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        ldu     ,u                       ; 79DE:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 79E0:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 79E1:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        bne     L7a55                    ; 79E3:  D0 70

L79e5                   bcc     L79eb                    ; 79E5:  90 04

                        andb    #$0f                     ; 79E7:  29 0F

                        beq     L79f0                    ; 79E9:  F0 05

L79eb                   andb    #$0f                     ; 79EB:  29 0F

                        andcc   #$fe                     ; 79ED:  18

                        adcb    #$01                     ; 79EE:  69 01

L79f0                   pshs    cc                       ; 79F0:  08

                        aslb                             ; 79F1:  0A

                        lda     #0                       ; 79F2:  A8
                        tstb                               
                        tfr     d,y                        

                        jsr     L79f8                    ; 79F3:  20 F8 79

                        puls    cc                       ; 79F6:  28

                        rts                              ; 79F7:  60

L79f8                   exg     d,y                      ; 79F8:  C0 4A
                        cmpb    #$4a                     ; Immediate
                        exg     d,y                        

                        bcc     L79fe                    ; 79FA:  90 02

                        exg     d,y                      ; 79FC:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

L79fe                   exg     d,x                      ; 79FE:  BE F9 56
                        lda     #0                         
                        ldb     $56f9,y                  ; Absolute, Y
                        exg     d,x                        

                        ldb     $56f8,y                  ; 7A01:  B9 F8 56

                        jmp     L7cd5                    ; 7A04:  4C D5 7C

                        fcb     $4A,$29,$0F,$09            
                        fcb     $E0                        
L7a0c                   exg     d,y                      ; 7A0C:  A0 01
                        lda     #0                         
                        ldb     #$01                     ; Immediate
                        exg     d,y                        

                        ldu     ,u                       ; 7A0E:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 7A10:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        tfr     x,d                      ; 7A11:  8A
                        tstb                               

                        rorb                             ; 7A12:  6A

                        ldu     ,u                       ; 7A13:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 7A15:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        bne     L7a55                    ; 7A16:  D0 3D

L7a18                   lsrb                             ; 7A18:  4A

                        andb    #$0f                     ; 7A19:  29 0F

                        orb     #$c0                     ; 7A1B:  09 C0

                        bne     L7a0c                    ; 7A1D:  D0 ED

L7a1f                   exg     d,y                      ; 7A1F:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        exg     d,y                      ; 7A21:  84 06
                        stb     <$06                     ; Zero page
                        exg     d,y                        

                        exg     d,y                      ; 7A23:  84 08
                        stb     <$08                     ; Zero page
                        exg     d,y                        

                        aslb                             ; 7A25:  0A

                        rol     <$06                     ; 7A26:  26 06

                        aslb                             ; 7A28:  0A

                        rol     <$06                     ; 7A29:  26 06

                        stb     <$05                     ; 7A2B:  85 05

                        tfr     x,d                      ; 7A2D:  8A
                        tstb                               

                        aslb                             ; 7A2E:  0A

                        rol     <$08                     ; 7A2F:  26 08

                        aslb                             ; 7A31:  0A

                        rol     <$08                     ; 7A32:  26 08

                        stb     <$07                     ; 7A34:  85 07

                        exg     d,x                      ; 7A36:  A2 05
                        lda     #0                         
                        ldb     #$05                     ; Immediate
                        exg     d,x                        

L7a38                   ldb     $02,x                    ; 7A38:  B5 02

                        exg     d,y                      ; 7A3A:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        ldu     ,u                       ; 7A3C:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        ldb     $03,x                    ; 7A3E:  B5 03

                        andb    #$0f                     ; 7A40:  29 0F

                        orb     #$a0                     ; 7A42:  09 A0

                        exg     d,y                      ; 7A44:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 7A45:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        ldb     $00,x                    ; 7A47:  B5 00

                        exg     d,y                      ; 7A49:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 7A4A:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        ldb     $01,x                    ; 7A4C:  B5 01

                        andb    #$0f                     ; 7A4E:  29 0F

                        orb     <$01                     ; 7A50:  05 01

                        exg     d,y                      ; 7A52:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 7A53:  91 03
                        leau    $03,u                      
                        stb     ,u                         

L7a55                   tfr     y,d                      ; 7A55:  98
                        tstb                               

                        orcc    #$01                     ; 7A56:  38

                        adcb    <$03                     ; 7A57:  65 03

                        stb     <$03                     ; 7A59:  85 03

                        bcc     L7a5f                    ; 7A5B:  90 02

                        inc     <$04                     ; 7A5D:  E6 04

L7a5f                   rts                              ; 7A5F:  60

                        fcb     $A2,$00,$A5,$06            
                        fcb     $C9,$80,$90,$0A            
                        fcb     $8A,$E5,$05,$85            
                        fcb     $05,$8A,$E5,$06            
                        fcb     $85,$06,$26,$09            
                        fcb     $A5,$08,$C9,$80            
                        fcb     $90,$0A,$8A,$E5            
                        fcb     $07,$85,$07,$8A            
                        fcb     $E5,$08,$85,$08            
                        fcb     $26,$09,$05,$06            
                        fcb     $F0,$08,$C9,$02            
                        fcb     $B0,$24,$A0,$01            
                        fcb     $D0,$10,$A0,$02            
                        fcb     $A2,$09,$A5,$05            
                        fcb     $05,$07,$F0,$16            
                        fcb     $30,$04,$C8,$0A            
                        fcb     $10,$FC,$98,$AA            
                        fcb     $A5,$06,$06,$05            
                        fcb     $2A,$06,$07,$26            
                        fcb     $08,$88,$D0,$F6            
                        fcb     $85,$06,$8A,$38            
                        fcb     $E9,$0A,$49,$FF            
                        fcb     $0A,$66,$09,$2A            
                        fcb     $66,$09,$2A,$0A            
                        fcb     $85,$09,$A0,$00            
                        fcb     $A5,$07,$91,$03            
                        fcb     $A5,$09,$29,$F4            
                        fcb     $05,$08,$C8,$91            
                        fcb     $03,$A5,$05,$C8            
                        fcb     $91,$03,$A5,$09            
                        fcb     $29,$02,$0A,$05            
                        fcb     $02,$05,$06,$C8            
                        fcb     $91,$03,$4C,$55            
                        fcb     $7A                        
L7ae5                   jsr     L7a1f                    ; 7AE5:  20 1F 7A

                        ldb     #$70                     ; 7AE8:  A9 70

L7aea                   exg     d,x                      ; 7AEA:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

L7aec                   exg     d,y                      ; 7AEC:  A0 01
                        lda     #0                         
                        ldb     #$01                     ; Immediate
                        exg     d,y                        

                        ldu     ,u                       ; 7AEE:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 7AF0:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        tfr     y,d                      ; 7AF1:  98
                        tstb                               

                        ldu     ,u                       ; 7AF2:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 7AF4:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,y                      ; 7AF5:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        ldu     ,u                       ; 7AF6:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 7AF8:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        tfr     x,d                      ; 7AF9:  8A
                        tstb                               

                        ldu     ,u                       ; 7AFA:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        jmp     L7a55                    ; 7AFC:  4C 55 7A

L7aff                   ldb     <$78                     ; 7AFF:  A5 78

                        andb    #$0c                     ; 7B01:  29 0C

                        bne     L7b26                    ; 7B03:  D0 21

                        ldb     <$cd                     ; 7B05:  A5 CD

                        beq     L7b23                    ; 7B07:  F0 1A

                        bpl     L7b27                    ; 7B09:  10 1C

                        exg     d,x                      ; 7B0B:  A6 CB
                        lda     #0                         
                        ldb     <$cb                     ; Zero page
                        exg     d,x                        

                        ldb     #$06                     ; 7B0D:  A9 06

                        stb     EAControl                ; 7B0F:  8D 00 3A

                        stb     LatchEA,x                ; 7B12:  9D 00 32

                        ldb     #$0e                     ; 7B15:  A9 0E

                        dec     <$cb                     ; 7B17:  C6 CB

                        dec     <$cc                     ; 7B19:  C6 CC

                        bne     L7b23                    ; 7B1B:  D0 06

                        exg     d,x                      ; 7B1D:  A2 40
                        lda     #0                         
                        ldb     #$40                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 7B1F:  86 CD
                        stb     <$cd                     ; Zero page
                        exg     d,x                        

L7b21                   inc     <$cb                     ; 7B21:  E6 CB

L7b23                   stb     EAControl                ; 7B23:  8D 00 3A

L7b26                   rts                              ; 7B26:  60

L7b27                   exg     d,y                      ; 7B27:  A4 CC
                        lda     #0                         
                        ldb     <$cc                     ; Zero page
                        exg     d,y                        

                        bne     L7b2d                    ; 7B29:  D0 02

                        exg     d,y                      ; 7B2B:  84 CF
                        stb     <$cf                     ; Zero page
                        exg     d,y                        

L7b2d                   aslb                             ; 7B2D:  0A

                        bpl     L7b65                    ; 7B2E:  10 35

                        ldb     $7bc0,y                  ; 7B30:  B9 C0 7B

                        bpl     L7b41                    ; 7B33:  10 0C

                        stb     <$cc                     ; 7B35:  85 CC

                        inc     <$ce                     ; 7B37:  E6 CE

                        inc     <$ce                     ; 7B39:  E6 CE

                        inc     <$ce                     ; 7B3B:  E6 CE

                        ldb     <$cf                     ; 7B3D:  A5 CF

                        bcc     L7b4c                    ; 7B3F:  90 0B

L7b41                   adcb    <$ce                     ; 7B41:  65 CE

                        lda     #0                       ; 7B43:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     $23,x                    ; 7B44:  B5 23

                        adcb    <$cf                     ; 7B46:  65 CF

                        stb     <$cf                     ; 7B48:  85 CF

                        ldb     $23,x                    ; 7B4A:  B5 23

L7b4c                   inc     <$cc                     ; 7B4C:  E6 CC

                        exg     d,x                      ; 7B4E:  A6 CB
                        lda     #0                         
                        ldb     <$cb                     ; Zero page
                        exg     d,x                        

                        stb     LatchEA,x                ; 7B50:  9D 00 32

                        ldb     #$04                     ; 7B53:  A9 04

                        stb     EAControl                ; 7B55:  8D 00 3A

                        ldb     #$0c                     ; 7B58:  A9 0C

L7b5a                   exg     d,x                      ; 7B5A:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        exg     d,x                      ; 7B5B:  E0 15
                        cmpb    #$15                     ; Immediate
                        exg     d,x                        

                        bcc     L7b21                    ; 7B5D:  90 C2

                        exg     d,x                      ; 7B5F:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 7B61:  86 CD
                        stb     <$cd                     ; Zero page
                        exg     d,x                        

                        beq     L7b23                    ; 7B63:  F0 BE

L7b65                   exg     d,x                      ; 7B65:  A6 CB
                        lda     #0                         
                        ldb     <$cb                     ; Zero page
                        exg     d,x                        

                        ldb     #$08                     ; 7B67:  A9 08

                        stb     LatchEA,x                ; 7B69:  9D 00 32

                        stb     EAControl                ; 7B6C:  8D 00 3A

                        ldb     #$09                     ; 7B6F:  A9 09

                        stb     EAControl                ; 7B71:  8D 00 3A

                        ldb     #$08                     ; 7B74:  A9 08

                        stb     EAControl                ; 7B76:  8D 00 3A

                        exg     d,x                      ; 7B79:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        ldb     $7bc0,y                  ; 7B7B:  B9 C0 7B

                        bpl     L7baa                    ; 7B7E:  10 2A

                        exg     d,x                      ; 7B80:  86 CC
                        stb     <$cc                     ; Zero page
                        exg     d,x                        

                        ldb     EaromRd                  ; 7B82:  AD 40 2C

                        exg     d,x                      ; 7B85:  8E 00 3A
                        stb     EAControl                ; Absolute
                        exg     d,x                        

                        eorb    <$cf                     ; 7B88:  45 CF

                        beq     L7ba2                    ; 7B8A:  F0 16

                        exg     d,y                      ; 7B8C:  A0 02
                        lda     #0                         
                        ldb     #$02                     ; Immediate
                        exg     d,y                        

                        tfr     y,d                      ; 7B8E:  98
                        tstb                               

                        adcb    <$ce                     ; 7B8F:  65 CE

                        lda     #0                       ; 7B91:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     #$00                     ; 7B92:  A9 00

L7b94                   stb     $23,x                    ; 7B94:  95 23

                        stb     $44,x                    ; 7B96:  95 44

                        exg     d,y                      ; 7B98:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,y                      ; 7B99:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7b94                    ; 7B9A:  10 F8

                        inc     <$d0                     ; 7B9C:  E6 D0

L7b9e                   exg     d,x                      ; 7B9E:  A6 CB
                        lda     #0                         
                        ldb     <$cb                     ; Zero page
                        exg     d,x                        

                        bpl     L7b5a                    ; 7BA0:  10 B8

L7ba2                   inc     <$ce                     ; 7BA2:  E6 CE

                        inc     <$ce                     ; 7BA4:  E6 CE

                        inc     <$ce                     ; 7BA6:  E6 CE

                        bpl     L7b9e                    ; 7BA8:  10 F4

L7baa                   adcb    <$ce                     ; 7BAA:  65 CE

                        lda     #0                       ; 7BAC:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     EaromRd                  ; 7BAD:  AD 40 2C

                        exg     d,x                      ; 7BB0:  8E 00 3A
                        stb     EAControl                ; Absolute
                        exg     d,x                        

                        stb     $0023,y                  ; 7BB3:  99 23 00

                        adcb    <$cf                     ; 7BB6:  65 CF

                        stb     <$cf                     ; 7BB8:  85 CF

                        inc     <$cc                     ; 7BBA:  E6 CC

                        ldb     #$00                     ; 7BBC:  A9 00

                        beq     L7b9e                    ; 7BBE:  F0 DE

                        swi                              ; 7BC0:  00

                        leau    $02,x                    ; 7BC1:  01 02
                        orb     ,u                         

                        leau    $22,x                    ; 7BC3:  21 22
                        andb    ,u                         

                        fcb     $23,$FF                    
L7bc7                   exg     d,y                      ; 7BC7:  A4 CD
                        lda     #0                         
                        ldb     <$cd                     ; Zero page
                        exg     d,y                        

                        bne     L7be2                    ; 7BC9:  D0 17

                        ldb     #$08                     ; 7BCB:  A9 08

                        cmpb    <$ce                     ; 7BCD:  C5 CE

                        bcc     L7be2                    ; 7BCF:  90 11

                        ror     <$cd                     ; 7BD1:  66 CD

                        ldb     <$d0                     ; 7BD3:  A5 D0

                        beq     L7be2                    ; 7BD5:  F0 0B

                        exg     d,x                      ; 7BD7:  A2 15
                        lda     #0                         
                        ldb     #$15                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 7BD9:  86 CC
                        stb     <$cc                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 7BDB:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,x                      ; 7BDC:  86 CB
                        stb     <$cb                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 7BDE:  84 CE
                        stb     <$ce                     ; Zero page
                        exg     d,y                        

                        exg     d,y                      ; 7BE0:  84 D0
                        stb     <$d0                     ; Zero page
                        exg     d,y                        

L7be2                   rts                              ; 7BE2:  60

L7be3                   andb    VGHalted                 ; 7BE3:  2C 02 20

                        bmi     L7be3                    ; 7BE6:  30 FB

                        jsr     L7118                    ; 7BE8:  20 18 71

                        ldb     #$b0                     ; 7BEB:  A9 B0

                        stb     $4003                    ; 7BED:  8D 03 40

                        ldb     #$00                     ; 7BF0:  A9 00

                        exg     d,x                      ; 7BF2:  A2 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,x                        

L7bf4                   stb     $61,x                    ; 7BF4:  95 61

                        stb     $64,x                    ; 7BF6:  95 64

                        exg     d,y                      ; 7BF8:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bne     L7bf4                    ; 7BF9:  D0 F9

L7bfb                   stb     $0200,x                  ; 7BFB:  9D 00 02

                        exg     d,x                      ; 7BFE:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        bne     L7bfb                    ; 7BFF:  D0 FA

                        stb     <$dd                     ; 7C01:  85 DD

                        stb     <$d3                     ; 7C03:  85 D3

                        stb     <$fa                     ; 7C05:  85 FA

                        stb     <$fc                     ; 7C07:  85 FC

                        ldb     Option65                 ; 7C09:  AD 01 28

                        andb    #$02                     ; 7C0C:  29 02

                        stb     <$fb                     ; 7C0E:  85 FB

                        stb     <$fd                     ; 7C10:  85 FD

                        ldb     #$01                     ; 7C12:  A9 01

                        jsr     L6300                    ; 7C14:  20 00 63

                        ldb     #$98                     ; 7C17:  A9 98

                        stb     $02e9                    ; 7C19:  8D E9 02

                        stb     $02e8                    ; 7C1C:  8D E8 02

                        ldb     #$7f                     ; 7C1F:  A9 7F

                        stb     $02ec                    ; 7C21:  8D EC 02

                        ldb     #$06                     ; 7C24:  A9 06

                        stb     $02ee                    ; 7C26:  8D EE 02

                        ldb     #$ff                     ; 7C29:  A9 FF

                        stb     <$42                     ; 7C2B:  85 42

                        stb     <$43                     ; 7C2D:  85 43

                        ldb     #$30                     ; 7C2F:  A9 30

                        stb     $02ed                    ; 7C31:  8D ED 02

L7c34                   jsr     L7fcf                    ; 7C34:  20 CF 7F

                        ldb     Option87                 ; 7C37:  AD 00 28

                        andb    #$03                     ; 7C3A:  29 03

                        lda     #0                       ; 7C3C:  A8
                        tstb                               
                        tfr     d,y                        

                        ldb     $7c6b,y                  ; 7C3D:  B9 6B 7C

                        stb     <$f8                     ; 7C40:  85 F8

                        stb     <$69                     ; 7C42:  85 69

                        stb     <$6c                     ; 7C44:  85 6C

                        bmi     L7c4a                    ; 7C46:  30 02

                        ldb     #$01                     ; 7C48:  A9 01

L7c4a                   stb     <$6a                     ; 7C4A:  85 6A

                        stb     <$f9                     ; 7C4C:  85 F9

                        stb     <$6d                     ; 7C4E:  85 6D

                        ldb     #$03                     ; 7C50:  A9 03

                        andb    Option43                 ; 7C52:  2D 02 28

                        lda     #0                       ; 7C55:  AA
                        tstb                               
                        tfr     d,x                        

                        exg     d,x                      ; 7C56:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        exg     d,x                      ; 7C57:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        exg     d,y                      ; 7C58:  C0 03
                        cmpb    #$03                     ; Immediate
                        exg     d,y                        

                        bne     L7c5d                    ; 7C5A:  D0 01

                        exg     d,x                      ; 7C5C:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

L7c5d                   ldb     <$8d                     ; 7C5D:  A5 8D

                        andb    #$03                     ; 7C5F:  29 03

                        cmpb    #$03                     ; 7C61:  C9 03

                        bne     L7c66                    ; 7C63:  D0 01

                        exg     d,x                      ; 7C65:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

L7c66                   exg     d,x                      ; 7C66:  86 6E
                        stb     <$6e                     ; Zero page
                        exg     d,x                        

                        jmp     L7844                    ; 7C68:  4C 44 78

                        fcb     $00,$20,$50,$FF            
L7c6f                   exg     d,x                      ; 7C6F:  A2 D5
                        lda     #0                         
                        ldb     #$d5                     ; Immediate
                        exg     d,x                        

L7c71                   exg     d,y                      ; 7C71:  84 09
                        stb     <$09                     ; Zero page
                        exg     d,y                        

                        exg     d,y                      ; 7C73:  A0 E0
                        lda     #0                         
                        ldb     #$e0                     ; Immediate
                        exg     d,y                        

                        exg     d,y                      ; 7C75:  84 01
                        stb     <$01                     ; Zero page
                        exg     d,y                        

                        jsr     L7a1f                    ; 7C77:  20 1F 7A

                        ldb     #$70                     ; 7C7A:  A9 70

                        jsr     L7aea                    ; 7C7C:  20 EA 7A

                        jmp     L7c89                    ; 7C7F:  4C 89 7C

L7c82                   exg     d,x                      ; 7C82:  A2 CA
                        lda     #0                         
                        ldb     #$ca                     ; Immediate
                        exg     d,x                        

                        ldb     #$a4                     ; 7C84:  A9 A4

                        jsr     L7cd5                    ; 7C86:  20 D5 7C

L7c89                   dec     <$09                     ; 7C89:  C6 09

                        beq     L7c8f                    ; 7C8B:  F0 02

                        bpl     L7c82                    ; 7C8D:  10 F3

L7c8f                   rts                              ; 7C8F:  60

L7c90                   ldb     #$f7                     ; 7C90:  A9 F7

                        exg     d,y                      ; 7C92:  A0 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,y                        

                        orcc    #$01                     ; 7C94:  38

L7c95                   pshs    cc                       ; 7C95:  08

                        exg     d,x                      ; 7C96:  86 1D
                        stb     <$1d                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 7C98:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,y                      ; 7C99:  84 1C
                        stb     <$1c                     ; Zero page
                        exg     d,y                        

                        andcc   #$fe                     ; 7C9B:  18

                        adcb    <$1c                     ; 7C9C:  65 1C

                        stb     <$1b                     ; 7C9E:  85 1B

                        puls    cc                       ; 7CA0:  28

                        lda     #0                       ; 7CA1:  AA
                        tstb                               
                        tfr     d,x                        

L7ca2                   pshs    cc                       ; 7CA2:  08

                        ldb     $00,x                    ; 7CA3:  B5 00

                        lsrb                             ; 7CA5:  4A

                        lsrb                             ; 7CA6:  4A

                        lsrb                             ; 7CA7:  4A

                        lsrb                             ; 7CA8:  4A

                        puls    cc                       ; 7CA9:  28

                        jsr     L79e5                    ; 7CAA:  20 E5 79

                        ldb     <$1c                     ; 7CAD:  A5 1C

                        bne     L7cb2                    ; 7CAF:  D0 01

                        andcc   #$fe                     ; 7CB1:  18

L7cb2                   exg     d,x                      ; 7CB2:  A6 1B
                        lda     #0                         
                        ldb     <$1b                     ; Zero page
                        exg     d,x                        

                        ldb     $00,x                    ; 7CB4:  B5 00

                        jsr     L79e5                    ; 7CB6:  20 E5 79

                        dec     <$1b                     ; 7CB9:  C6 1B

                        exg     d,x                      ; 7CBB:  A6 1B
                        lda     #0                         
                        ldb     <$1b                     ; Zero page
                        exg     d,x                        

                        dec     <$1c                     ; 7CBD:  C6 1C

                        bpl     L7ca2                    ; 7CBF:  10 E1

                        rts                              ; 7CC1:  60

L7cc2                   jsr     L7cc5                    ; 7CC2:  20 C5 7C

L7cc5                   exg     d,x                      ; 7CC5:  A6 0C
                        lda     #0                         
                        ldb     <$0c                     ; Zero page
                        exg     d,x                        

                        dec     <$0c                     ; 7CC7:  C6 0C

                        ldb     Option87,x               ; 7CC9:  BD 00 28

                        andb    #$03                     ; 7CCC:  29 03

L7cce                   jsr     L79eb                    ; 7CCE:  20 EB 79

                        ldb     #$0a                     ; 7CD1:  A9 0A

                        exg     d,x                      ; 7CD3:  A2 CB
                        lda     #0                         
                        ldb     #$cb                     ; Immediate
                        exg     d,x                        

L7cd5                   exg     d,y                      ; 7CD5:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        ldu     ,u                       ; 7CD7:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        exg     d,y                      ; 7CD9:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        tfr     x,d                      ; 7CDA:  8A
                        tstb                               

                        ldu     ,u                       ; 7CDB:  91 03
                        leau    $03,u                      
                        stb     ,u                         

                        jmp     L7a55                    ; 7CDD:  4C 55 7A

Reset_Handler           exg     d,x                      ; 7CE0:  A2 FE
                        lda     #0                         
                        ldb     #$fe                     ; Immediate
                        exg     d,x                        

                        tfr     d,u                      ; 7CE2:  9A
                        tfr     x,d                        
                        tfr     cc,dp                      
                        incb                               
                        tfr     dp,cc                      
                        lda     #0                         
                        tfr     a,dp                       
                        tfr     d,s                        
                        tfr     u,d                        

                                                         ; 7CE3:  D8

                        exg     d,x                      ; 7CE4:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 7CE6:  8E 0F 2C
                        stb     Pk_SerCtl                ; Absolute
                        exg     d,x                        

L7ce9                   ldb     #$11                     ; 7CE9:  A9 11

L7ceb                   stb     $0100,x                  ; 7CEB:  9D 00 01

                        lda     #0                       ; 7CEE:  A8
                        tstb                               
                        tfr     d,y                        

                        eorb    $0100,x                  ; 7CEF:  5D 00 01

                        bne     L7d48                    ; 7CF2:  D0 54

                        tfr     y,d                      ; 7CF4:  98
                        tstb                               

                        aslb                             ; 7CF5:  0A

                        bcc     L7ceb                    ; 7CF6:  90 F3

                        tfr     x,d                      ; 7CF8:  8A
                        tstb                               

                        stb     $00,x                    ; 7CF9:  95 00

                        stb     $0100,x                  ; 7CFB:  9D 00 01

                        stb     $0200,x                  ; 7CFE:  9D 00 02

                        stb     $0300,x                  ; 7D01:  9D 00 03

                        stb     VRAM,x                   ; 7D04:  9D 00 40

                        stb     $4100,x                  ; 7D07:  9D 00 41

                        stb     $4200,x                  ; 7D0A:  9D 00 42

                        stb     $4300,x                  ; 7D0D:  9D 00 43

                        stb     $4400,x                  ; 7D10:  9D 00 44

                        stb     $4500,x                  ; 7D13:  9D 00 45

                        stb     $4600,x                  ; 7D16:  9D 00 46

                        stb     $4700,x                  ; 7D19:  9D 00 47

                        exg     d,y                      ; 7D1C:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bne     L7ce9                    ; 7D1D:  D0 CA

                        stb     WdogReset                ; 7D1F:  8D 00 34

L7d22                   tfr     x,d                      ; 7D22:  8A
                        tstb                               

L7d23                   eorb    $0100,x                  ; 7D23:  5D 00 01

                        bne     L7d48                    ; 7D26:  D0 20

                        stb     $0100,x                  ; 7D28:  9D 00 01

                        exg     d,x                      ; 7D2B:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        andb    SelfTestSW               ; 7D2C:  2C 07 20

                        bpl     L7d36                    ; 7D2F:  10 05

                        tfr     x,d                      ; 7D31:  8A
                        tstb                               

                        bne     L7d23                    ; 7D32:  D0 EF

                        beq     L7d3c                    ; 7D34:  F0 06

L7d36                   exg     d,x                      ; 7D36:  E0 FB
                        cmpb    #$fb                     ; Immediate
                        exg     d,x                        

                        bcc     L7d22                    ; 7D38:  90 E8

                        exg     d,x                      ; 7D3A:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

L7d3c                   tfr     x,d                      ; 7D3C:  8A
                        tstb                               

                        eorb    $00,x                    ; 7D3D:  55 00

                        bne     L7d48                    ; 7D3F:  D0 07

                        ldb     #$11                     ; 7D41:  A9 11

L7d43                   stb     $00,x                    ; 7D43:  95 00

                        lda     #0                       ; 7D45:  A8
                        tstb                               
                        tfr     d,y                        

                        eorb    $00,x                    ; 7D46:  55 00

L7d48                   bne     L7d8b                    ; 7D48:  D0 41

                        tfr     y,d                      ; 7D4A:  98
                        tstb                               

                        aslb                             ; 7D4B:  0A

                        bcc     L7d43                    ; 7D4C:  90 F5

                        exg     d,y                      ; 7D4E:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        exg     d,y                      ; 7D50:  94 00
                        stb     $00,x                    ; Zero page, X
                        exg     d,y                        

                        exg     d,y                      ; 7D52:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bne     L7d3c                    ; 7D53:  D0 E7

                        stb     WdogReset                ; 7D55:  8D 00 34

                        ldb     #$02                     ; 7D58:  A9 02

L7d5a                   stb     <$01                     ; 7D5A:  85 01

L7d5c                   tfr     y,d                      ; 7D5C:  98
                        tstb                               

                        ldu     ,u                       ; 7D5D:  51 00
                        leau    $00,u                      
                        eorb    ,u                         

                        bne     L7d8f                    ; 7D5F:  D0 2E

                        ldb     #$11                     ; 7D61:  A9 11

L7d63                   ldu     ,u                       ; 7D63:  91 00
                        leau    $00,u                      
                        stb     ,u                         

                        lda     #0                       ; 7D65:  AA
                        tstb                               
                        tfr     d,x                        

                        ldu     ,u                       ; 7D66:  51 00
                        leau    $00,u                      
                        eorb    ,u                         

                        bne     L7d8f                    ; 7D68:  D0 25

                        ldu     ,u                       ; 7D6A:  91 00
                        leau    $00,u                      
                        stb     ,u                         

                        tfr     x,d                      ; 7D6C:  8A
                        tstb                               

                        aslb                             ; 7D6D:  0A

                        bcc     L7d63                    ; 7D6E:  90 F3

                        exg     d,y                      ; 7D70:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        bne     L7d5c                    ; 7D71:  D0 E9

                        stb     WdogReset                ; 7D73:  8D 00 34

                        inc     <$01                     ; 7D76:  E6 01

                        exg     d,x                      ; 7D78:  A6 01
                        lda     #0                         
                        ldb     <$01                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 7D7A:  E0 04
                        cmpb    #$04                     ; Immediate
                        exg     d,x                        

                        bcc     L7d5c                    ; 7D7C:  90 DE

                        ldb     #$40                     ; 7D7E:  A9 40

                        exg     d,x                      ; 7D80:  E0 40
                        cmpb    #$40                     ; Immediate
                        exg     d,x                        

                        bcc     L7d5a                    ; 7D82:  90 D6

                        exg     d,x                      ; 7D84:  E0 48
                        cmpb    #$48                     ; Immediate
                        exg     d,x                        

                        bcc     L7d5c                    ; 7D86:  90 D4

                        bcs     L7dfc                    ; 7D88:  B0 72

                        fcb     $64                        
L7d8b                   exg     d,y                      ; 7D8B:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        beq     L7d9d                    ; 7D8D:  F0 0E

L7d8f                   exg     d,y                      ; 7D8F:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        exg     d,x                      ; 7D91:  A6 01
                        lda     #0                         
                        ldb     <$01                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 7D93:  E0 04
                        cmpb    #$04                     ; Immediate
                        exg     d,x                        

                        bcc     L7d9d                    ; 7D95:  90 06

                        exg     d,y                      ; 7D97:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        exg     d,x                      ; 7D98:  E0 44
                        cmpb    #$44                     ; Immediate
                        exg     d,x                        

                        bcc     L7d9d                    ; 7D9A:  90 01

                        exg     d,y                      ; 7D9C:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

L7d9d                   cmpb    #$10                     ; 7D9D:  C9 10

                        rolb                             ; 7D9F:  2A

                        andb    #$1f                     ; 7DA0:  29 1F

                        cmpb    #$02                     ; 7DA2:  C9 02

                        rolb                             ; 7DA4:  2A

                        andb    #$03                     ; 7DA5:  29 03

L7da7                   exg     d,y                      ; 7DA7:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bmi     L7dae                    ; 7DA8:  30 04

                        aslb                             ; 7DAA:  0A

                        aslb                             ; 7DAB:  0A

                        bcc     L7da7                    ; 7DAC:  90 F9

L7dae                   lsrb                             ; 7DAE:  4A

                        exg     d,y                      ; 7DAF:  A0 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,y                        

                        exg     d,y                      ; 7DB1:  8C 0F 2C
                        stb     Pk_SerCtl                ; Absolute
                        exg     d,y                        

                        exg     d,x                      ; 7DB4:  A2 20
                        lda     #0                         
                        ldb     #$20                     ; Immediate
                        exg     d,x                        

                        bcc     L7dba                    ; 7DB6:  90 02

                        exg     d,x                      ; 7DB8:  A2 80
                        lda     #0                         
                        ldb     #$80                     ; Immediate
                        exg     d,x                        

L7dba                   exg     d,x                      ; 7DBA:  8E 00 2C
                        stb     Pk_F1_Pot0               ; Absolute
                        exg     d,x                        

                        exg     d,x                      ; 7DBD:  A2 A8
                        lda     #0                         
                        ldb     #$a8                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 7DBF:  8E 01 2C
                        stb     Pk_C1_Pot1               ; Absolute
                        exg     d,x                        

                        exg     d,x                      ; 7DC2:  A2 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,x                        

L7dc4                   andb    ThreeKHz                 ; 7DC4:  2C 01 20

                        bpl     L7dc4                    ; 7DC7:  10 FB

L7dc9                   andb    ThreeKHz                 ; 7DC9:  2C 01 20

                        bmi     L7dc9                    ; 7DCC:  30 FB

                        exg     d,y                      ; 7DCE:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        stb     WdogReset                ; 7DCF:  8D 00 34

                        bne     L7dc4                    ; 7DD2:  D0 F0

                        exg     d,y                      ; 7DD4:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7dc4                    ; 7DD5:  10 ED

                        exg     d,x                      ; 7DD7:  8E 01 2C
                        stb     Pk_C1_Pot1               ; Absolute
                        exg     d,x                        

                        exg     d,y                      ; 7DDA:  A0 08
                        lda     #0                         
                        ldb     #$08                     ; Immediate
                        exg     d,y                        

L7ddc                   andb    ThreeKHz                 ; 7DDC:  2C 01 20

                        bpl     L7ddc                    ; 7DDF:  10 FB

L7de1                   andb    ThreeKHz                 ; 7DE1:  2C 01 20

                        bmi     L7de1                    ; 7DE4:  30 FB

                        exg     d,y                      ; 7DE6:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        stb     WdogReset                ; 7DE7:  8D 00 34

                        bne     L7ddc                    ; 7DEA:  D0 F0

                        exg     d,y                      ; 7DEC:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bne     L7ddc                    ; 7DED:  D0 ED

                        lda     #0                       ; 7DEF:  AA
                        tstb                               
                        tfr     d,x                        

                        bne     L7dae                    ; 7DF0:  D0 BC

L7df2                   stb     WdogReset                ; 7DF2:  8D 00 34

                        ldb     SelfTestSW               ; 7DF5:  AD 07 20

                        bmi     L7df2                    ; 7DF8:  30 F8

L7dfa                   bpl     L7dfa                    ; 7DFA:  10 FE

L7dfc                   ldb     #$00                     ; 7DFC:  A9 00

                        lda     #0                       ; 7DFE:  A8
                        tstb                               
                        tfr     d,y                        

                        lda     #0                       ; 7DFF:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     #$48                     ; 7E00:  A9 48

L7e02                   stb     <$0a                     ; 7E02:  85 0A

                        ldb     #$07                     ; 7E04:  A9 07

                        stb     <$0c                     ; 7E06:  85 0C

                        ldb     #$55                     ; 7E08:  A9 55

                        andcc   #$fe                     ; 7E0A:  18

L7e0b                   ldu     ,u                       ; 7E0B:  71 09
                        leau    $09,u                      
                        adcb    ,u                         

                        exg     d,y                      ; 7E0D:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        bne     L7e0b                    ; 7E0E:  D0 FB

                        inc     <$0a                     ; 7E10:  E6 0A

                        dec     <$0c                     ; 7E12:  C6 0C

                        bpl     L7e0b                    ; 7E14:  10 F5

                        stb     $10,x                    ; 7E16:  95 10

                        exg     d,x                      ; 7E18:  E8
                        lda     #0                         
                        incb                               
                        exg     d,x                        

                        stb     WdogReset                ; 7E19:  8D 00 34

                        ldb     <$0a                     ; 7E1C:  A5 0A

                        cmpb    #$58                     ; 7E1E:  C9 58

                        bcc     L7e02                    ; 7E20:  90 E0

                        bne     L7e26                    ; 7E22:  D0 02

                        ldb     #$60                     ; 7E24:  A9 60

L7e26                   cmpb    #$80                     ; 7E26:  C9 80

                        bcc     L7e02                    ; 7E28:  90 D8

                        stb     $0300                    ; 7E2A:  8D 00 03

                        stb     BankSel                  ; 7E2D:  8D 04 3C

                        cmpb    $0200                    ; 7E30:  CD 00 02

                        beq     L7e37                    ; 7E33:  F0 02

                        inc     <$1a                     ; 7E35:  E6 1A

L7e37                   ldb     $0300                    ; 7E37:  AD 00 03

                        beq     L7e3e                    ; 7E3A:  F0 02

                        inc     <$1a                     ; 7E3C:  E6 1A

L7e3e                   ldb     #$10                     ; 7E3E:  A9 10

                        stb     <$01                     ; 7E40:  85 01

                        stb     BankSel                  ; 7E42:  8D 04 3C

                        exg     d,x                      ; 7E45:  A2 24
                        lda     #0                         
                        ldb     #$24                     ; Immediate
                        exg     d,x                        

L7e47                   ldb     ThreeKHz                 ; 7E47:  AD 01 20

                        bpl     L7e47                    ; 7E4A:  10 FB

L7e4c                   ldb     ThreeKHz                 ; 7E4C:  AD 01 20

                        bmi     L7e4c                    ; 7E4F:  30 FB

                        exg     d,y                      ; 7E51:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7e47                    ; 7E52:  10 F3

L7e54                   andb    VGHalted                 ; 7E54:  2C 02 20

                        bmi     L7e54                    ; 7E57:  30 FB

                        stb     WdogReset                ; 7E59:  8D 00 34

                        ldb     #$00                     ; 7E5C:  A9 00

                        stb     <$03                     ; 7E5E:  85 03

                        ldb     #$40                     ; 7E60:  A9 40

                        stb     <$04                     ; 7E62:  85 04

                        ldb     SelfTestSW               ; 7E64:  AD 07 20

                        andb    #$80                     ; 7E67:  29 80

                        bne     L7e71                    ; 7E69:  D0 06

                        stb     $01ff                    ; 7E6B:  8D FF 01

                        jmp     L6000                    ; 7E6E:  4C 00 60

L7e71                   ldb     <$1a                     ; 7E71:  A5 1A

                        beq     L7e7c                    ; 7E73:  F0 07

                        exg     d,x                      ; 7E75:  A2 CC
                        lda     #0                         
                        ldb     #$cc                     ; Immediate
                        exg     d,x                        

                        ldb     #$57                     ; 7E77:  A9 57

                        jsr     L7a18                    ; 7E79:  20 18 7A

L7e7c                   exg     d,x                      ; 7E7C:  A2 96
                        lda     #0                         
                        ldb     #$96                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 7E7E:  86 0D
                        stb     <$0d                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 7E80:  A2 05
                        lda     #0                         
                        ldb     #$05                     ; Immediate
                        exg     d,x                        

L7e82                   ldb     $10,x                    ; 7E82:  B5 10

                        beq     L7ea7                    ; 7E84:  F0 21

                        exg     d,x                      ; 7E86:  86 0C
                        stb     <$0c                     ; Zero page
                        exg     d,x                        

                        exg     d,x                      ; 7E88:  A6 0D
                        lda     #0                         
                        ldb     <$0d                     ; Zero page
                        exg     d,x                        

                        tfr     x,d                      ; 7E8A:  8A
                        tstb                               

                        orcc    #$01                     ; 7E8B:  38

                        sbcb    #$08                     ; 7E8C:  E9 08

                        stb     <$0d                     ; 7E8E:  85 0D

                        ldb     #$20                     ; 7E90:  A9 20

                        jsr     L7ae5                    ; 7E92:  20 E5 7A

                        exg     d,x                      ; 7E95:  A6 0C
                        lda     #0                         
                        ldb     <$0c                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 7E97:  BC EE 7F
                        lda     #0                         
                        ldb     $7fee,x                  ; Absolute, X
                        exg     d,y                        

                        jsr     L79f8                    ; 7E9A:  20 F8 79

                        exg     d,x                      ; 7E9D:  A6 0C
                        lda     #0                         
                        ldb     <$0c                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 7E9F:  BC F4 7F
                        lda     #0                         
                        ldb     $7ff4,x                  ; Absolute, X
                        exg     d,y                        

                        jsr     L79f8                    ; 7EA2:  20 F8 79

                        exg     d,x                      ; 7EA5:  A6 0C
                        lda     #0                         
                        ldb     <$0c                     ; Zero page
                        exg     d,x                        

L7ea7                   exg     d,y                      ; 7EA7:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7e82                    ; 7EA8:  10 D8

                        ldb     #$57                     ; 7EAA:  A9 57

                        exg     d,x                      ; 7EAC:  A2 44
                        lda     #0                         
                        ldb     #$44                     ; Immediate
                        exg     d,x                        

                        jsr     L7a18                    ; 7EAE:  20 18 7A

                        ldb     #$93                     ; 7EB1:  A9 93

                        exg     d,x                      ; 7EB3:  A2 A0
                        lda     #0                         
                        ldb     #$a0                     ; Immediate
                        exg     d,x                        

                        jsr     L7ae5                    ; 7EB5:  20 E5 7A

                        exg     d,x                      ; 7EB8:  A2 03
                        lda     #0                         
                        ldb     #$03                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 7EBA:  86 0C
                        stb     <$0c                     ; Zero page
                        exg     d,x                        

                        jsr     L7cc2                    ; 7EBC:  20 C2 7C

                        dec     <$0c                     ; 7EBF:  C6 0C

                        ldb     Option65                 ; 7EC1:  AD 01 28

                        pshs    b                        ; 7EC4:  48

                        andb    #$01                     ; 7EC5:  29 01

                        jsr     L7cce                    ; 7EC7:  20 CE 7C

                        puls    b                        ; 7ECA:  68

                        andb    #$02                     ; 7ECB:  29 02

                        lsrb                             ; 7ECD:  4A

                        jsr     L7cce                    ; 7ECE:  20 CE 7C

                        jsr     L7cc5                    ; 7ED1:  20 C5 7C

                        ldb     #$93                     ; 7ED4:  A9 93

                        exg     d,x                      ; 7ED6:  A2 B0
                        lda     #0                         
                        ldb     #$b0                     ; Immediate
                        exg     d,x                        

                        jsr     L7ae5                    ; 7ED8:  20 E5 7A

                        ldb     #$07                     ; 7EDB:  A9 07

                        stb     Pk_SerCtl                ; 7EDD:  8D 0F 2C

                        stb     Pk_PotGo                 ; 7EE0:  8D 0B 2C

                        ldb     Pk_Ctl_All               ; 7EE3:  AD 08 2C

                        eorb    #$ff                     ; 7EE6:  49 FF

                        stb     <$0c                     ; 7EE8:  85 0C

                        stb     <$8d                     ; 7EEA:  85 8D

                        aslb                             ; 7EEC:  0A

                        rolb                             ; 7EED:  2A

                        rolb                             ; 7EEE:  2A

                        rolb                             ; 7EEF:  2A

                        rol     <$0d                     ; 7EF0:  26 0D

                        andb    #$07                     ; 7EF2:  29 07

                        jsr     L7cce                    ; 7EF4:  20 CE 7C

                        ldb     <$0d                     ; 7EF7:  A5 0D

                        andb    #$01                     ; 7EF9:  29 01

                        jsr     L7cce                    ; 7EFB:  20 CE 7C

                        ldb     <$0c                     ; 7EFE:  A5 0C

                        lsrb                             ; 7F00:  4A

                        lsrb                             ; 7F01:  4A

                        andb    #$03                     ; 7F02:  29 03

                        jsr     L7cce                    ; 7F04:  20 CE 7C

                        ldb     <$0c                     ; 7F07:  A5 0C

                        andb    #$03                     ; 7F09:  29 03

                        jsr     L7cce                    ; 7F0B:  20 CE 7C

                        jsr     L7c34                    ; 7F0E:  20 34 7C

                        exg     d,y                      ; 7F11:  A4 6E
                        lda     #0                         
                        ldb     <$6e                     ; Zero page
                        exg     d,y                        

                        ldb     #$96                     ; 7F13:  A9 96

                        exg     d,x                      ; 7F15:  A2 94
                        lda     #0                         
                        ldb     #$94                     ; Immediate
                        exg     d,x                        

                        exg     d,y                      ; 7F17:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        jsr     L7c71                    ; 7F18:  20 71 7C

                        ldb     #$10                     ; 7F1B:  A9 10

                        stb     <$01                     ; 7F1D:  85 01

                        ldb     <$f9                     ; 7F1F:  A5 F9

                        bmi     L7f2d                    ; 7F21:  30 0A

                        ldb     #$8e                     ; 7F23:  A9 8E

                        exg     d,x                      ; 7F25:  A2 83
                        lda     #0                         
                        ldb     #$83                     ; Immediate
                        exg     d,x                        

                        jsr     L7ae5                    ; 7F27:  20 E5 7A

                        jsr     L7c90                    ; 7F2A:  20 90 7C

L7f2d                   ldb     <$d4                     ; 7F2D:  A5 D4

                        beq     L7f38                    ; 7F2F:  F0 07

                        exg     d,x                      ; 7F31:  A2 CB
                        lda     #0                         
                        ldb     #$cb                     ; Immediate
                        exg     d,x                        

                        ldb     #$f4                     ; 7F33:  A9 F4

                        jsr     L7cd5                    ; 7F35:  20 D5 7C

L7f38                   inc     <$76                     ; 7F38:  E6 76

                        ldb     FireSW                   ; 7F3A:  AD 04 20

                        andb    ThrustSW                 ; 7F3D:  2D 05 24

                        andb    RotateLSW                ; 7F40:  2D 07 24

                        andb    RotateRSW                ; 7F43:  2D 06 24

                        bpl     L7f57                    ; 7F46:  10 0F

                        andb    <$21                     ; 7F48:  24 21

                        bmi     L7f57                    ; 7F4A:  30 0B

                        stb     <$cd                     ; 7F4C:  85 CD

                        stb     <$21                     ; 7F4E:  85 21

                        exg     d,x                      ; 7F50:  A2 15
                        lda     #0                         
                        ldb     #$15                     ; Immediate
                        exg     d,x                        

                        exg     d,x                      ; 7F52:  86 CC
                        stb     <$cc                     ; Zero page
                        exg     d,x                        

                        exg     d,y                      ; 7F54:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        exg     d,x                      ; 7F55:  86 CB
                        stb     <$cb                     ; Zero page
                        exg     d,x                        

L7f57                   ldb     <$21                     ; 7F57:  A5 21

                        beq     L7f77                    ; 7F59:  F0 1C

                        ldb     <$cd                     ; 7F5B:  A5 CD

                        beq     L7f77                    ; 7F5D:  F0 18

                        ldb     #$94                     ; 7F5F:  A9 94

                        exg     d,x                      ; 7F61:  A2 72
                        lda     #0                         
                        ldb     #$72                     ; Immediate
                        exg     d,x                        

                        jsr     L7ae5                    ; 7F63:  20 E5 7A

                        exg     d,x                      ; 7F66:  A2 F2
                        lda     #0                         
                        ldb     #$f2                     ; Immediate
                        exg     d,x                        

                        ldb     #$57                     ; 7F68:  A9 57

                        jsr     L7a18                    ; 7F6A:  20 18 7A

                        jsr     L7aff                    ; 7F6D:  20 FF 7A

                        ldb     <$78                     ; 7F70:  A5 78

                        andcc   #$fe                     ; 7F72:  18

                        adcb    #$04                     ; 7F73:  69 04

                        stb     <$78                     ; 7F75:  85 78

L7f77                   ldb     #$7f                     ; 7F77:  A9 7F

                        lda     #0                       ; 7F79:  AA
                        tstb                               
                        tfr     d,x                        

                        jsr     L7a1f                    ; 7F7A:  20 1F 7A

                        jsr     L79da                    ; 7F7D:  20 DA 79

                        exg     d,y                      ; 7F80:  A0 08
                        lda     #0                         
                        ldb     #$08                     ; Immediate
                        exg     d,y                        

                        ldb     #$00                     ; 7F82:  A9 00

L7f84                   stb     $2bff,y                  ; 7F84:  99 FF 2B

                        exg     d,y                      ; 7F87:  88
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bne     L7f84                    ; 7F88:  D0 FA

                        jsr     L7fa4                    ; 7F8A:  20 A4 7F

                        orb     <$88                     ; 7F8D:  05 88

                        orb     <$87                     ; 7F8F:  05 87

                        orb     <$86                     ; 7F91:  05 86

                        beq     L7f97                    ; 7F93:  F0 02

                        ldb     #$a4                     ; 7F95:  A9 A4

L7f97                   stb     Pk_C1_Pot1               ; 7F97:  8D 01 2C

                        lsrb                             ; 7F9A:  4A

                        stb     Pk_F1_Pot0               ; 7F9B:  8D 00 2C

                        stb     StartVG                  ; 7F9E:  8D 00 30

                        jmp     L7e3e                    ; 7FA1:  4C 3E 7E

L7fa4                   jsr     L7fa7                    ; 7FA4:  20 A7 7F

L7fa7                   exg     d,x                      ; 7FA7:  A2 07
                        lda     #0                         
                        ldb     #$07                     ; Immediate
                        exg     d,x                        

L7fa9                   rol     LCoinSW,x                ; 7FA9:  3E 00 24

                        rorb                             ; 7FAC:  6A

                        exg     d,y                      ; 7FAD:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7fa9                    ; 7FAE:  10 F9

                        jsr     L7fc4                    ; 7FB0:  20 C4 7F

                        exg     d,x                      ; 7FB3:  A2 04
                        lda     #0                         
                        ldb     #$04                     ; Immediate
                        exg     d,x                        

L7fb5                   rol     ShieldSW,x               ; 7FB5:  3E 03 20

                        rorb                             ; 7FB8:  6A

                        exg     d,y                      ; 7FB9:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7fb5                    ; 7FBA:  10 F9

                        exg     d,x                      ; 7FBC:  8E 04 3C
                        stb     BankSel                  ; Absolute
                        exg     d,x                        

                        exg     d,x                      ; 7FBF:  A2 64
                        lda     #0                         
                        ldb     #$64                     ; Immediate
                        exg     d,x                        

L7fc1                   exg     d,y                      ; 7FC1:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bpl     L7fc1                    ; 7FC2:  10 FD

L7fc4                   lda     #0                       ; 7FC4:  AA
                        tstb                               
                        tfr     d,x                        

                        eorb    $0016,y                  ; 7FC5:  59 16 00

                        stb     $0086,y                  ; 7FC8:  99 86 00

                        exg     d,x                      ; 7FCB:  96 16
                        stb     $16,y                    ; Zero page, Y
                        exg     d,x                        

                        exg     d,y                      ; 7FCD:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

                        rts                              ; 7FCE:  60

L7fcf                   ldb     <$76                     ; 7FCF:  A5 76

                        andb    #$03                     ; 7FD1:  29 03

                        lda     #0                       ; 7FD3:  AA
                        tstb                               
                        tfr     d,x                        

                        ldb     Pk_SkRes_Rnd             ; 7FD4:  AD 0A 2C

                        stb     $d5,x                    ; 7FD7:  95 D5

                        exg     d,y                      ; 7FD9:  A0 00
                        lda     #0                         
                        ldb     #$00                     ; Immediate
                        exg     d,y                        

                        exg     d,x                      ; 7FDB:  A2 04
                        lda     #0                         
                        ldb     #$04                     ; Immediate
                        exg     d,x                        

L7fdd                   cmpb    $d4,x                    ; 7FDD:  D5 D4

                        bne     L7fe2                    ; 7FDF:  D0 01

                        exg     d,y                      ; 7FE1:  C8
                        lda     #0                         
                        incb                               
                        exg     d,y                        

L7fe2                   exg     d,y                      ; 7FE2:  CA
                        lda     #0                         
                        decb                               
                        exg     d,y                        

                        bne     L7fdd                    ; 7FE3:  D0 F8

                        exg     d,y                      ; 7FE5:  C0 04
                        cmpb    #$04                     ; Immediate
                        exg     d,y                        

                        ldb     Pk_Ctl_All               ; 7FE7:  AD 08 2C

                        rorb                             ; 7FEA:  6A

                        stb     <$d4                     ; 7FEB:  85 D4

                        rts                              ; 7FED:  60

                        fcb     $38,$30,$1C,$1E            
                        fcb     $24,$28,$06,$06            
                        fcb     $04,$04,$04,$04            
                        fdb     IRQ_Handler              ; 7FFA
                        fdb     Reset_Handler            ; 7FFC
                        fdb     Reset_Handler            ; 7FFE
