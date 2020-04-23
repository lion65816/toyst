ROMBoot_008000:
    SEI                         ;8000; Block Interrupts
    CLC                         ;8001; \ Set Native mode.
    XCE                         ;8002; /
    CLD                         ;8003; > Set hexadecimal addressing.
    REP #$30                    ;8004; 16-bit A and X/Y
    LDA #$0000                  ;8006; \ Set direct page at 000000.
    TCD                         ;8009; /
    LDA #$01FE                  ;800A; \ Set stack at 0001FE.
    TCS                         ;800D; /

    PEA $8080                   ;800E; \
    PLB                         ;8011; | Move to Banks $80-9F for faster speed.
    PLB                         ;8012; /
    JSL RegInit                 ;8013; Initialize SNES registers

    SEP #$20                    ;8017; 8bit Accumulator

    LDA #$01                    ;8019; \ Enable FastROM
    STA $420D                   ;801B; /
	
    REP #$30                    ;801E; 16bit A and X/Y

    JMP +                       ;8020; Jump ahead. Remnant of old code? Cycle buffer?

+   SEP #$20                    ;8023; 8bit Accumulator

    LDA #$01                    ;8025; \ Enable FastROM
    STA $420D                   ;8027; /
	
    REP #$30                    ;802A; 16bit A and X/Y

	LDX #$000A                  ;802C; \
	LDA #$0000                  ;802F; |
-   STA $00,X                   ;8032; |
	INX                         ;8034; | Initialize RAM.
	INX                         ;8035; |
	CPX #$2000                  ;8036; |
	BMI -                       ;8039; /

	LDA $000002                 ;803B;
	CMP #$1827                  ;803B;
	BNE label_C0805F            ;803B;
	LDA $000006                 ;803B;
	CMP #$0005                  ;803B;
	BPL label_C0805F            ;803B;
	LDA $000004                 ;803B;
	CMP #$0002                  ;803B;
	BPL label_C0805F            ;803B;
	LDA $000008                 ;803B;
	BIT #$7FFE                  ;803B;
	BEQ label_C0807B            ;803B;

label_C0805F:
	LDA #$1827
	STA $000002
	LDA #$0002
	STA $000006
	LDA #$0001
	STA $000008
	LDA #$0000
	STA $000004

label_C0807B:
	LDA #$0040
	STA $80D7
	STZ $80D9
	JSL $97D525
	LDA #$80E6
	STA $16
	LDA #$0080
	STA $18
	STZ $10
	STZ $1A
	LDA #$0004
	STA $1C
	LDA #$0005
	SEC
	SBC $000006
	STA $00001E
	JSL $99E88F
	LDA #$0022
	STA $00001A
	LDA #$0000
	STA $00000E
	JML $87E073
	LDA #$0000
	STA $000010
	STA $000012
	LDA #$0000
	STA $00001A
	JML $92F8DC
	JML $98B97B
	REP #$30
	PHA
	LDA $004211
	BIT #$00FF
	BEQ label_C080E6
	JMP [$0016]

label_C080E6:
	PLA
	RTI