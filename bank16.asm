

RegInit:
    SEP #$30                    ;9A67;
    LDA #$80                    ;9A69;
    PHA                         ;9A6B;
    PLB                         ;9A6C;
    STA $2100                   ;9A6D;
    LDA #$00                    ;9A70;
    STA $2101                   ;9A72;
    LDA #$00                    ;9A75;
    STA $2102                   ;9A77;
    STA $2103                   ;9A7A;
    STA $2105                   ;9A7D;
    STA $2106                   ;9A80;
    STA $2107                   ;9A83;
    STA $2108                   ;9A86;
    STA $2109                   ;9A89;
    STA $210A                   ;9A8C;
    STA $210B                   ;9A8F;
    STA $210C                   ;9A92;
    STA $210D                   ;9A95;
    STA $210D                   ;9A98;
    STA $210E                   ;9A9B;
    STA $210E                   ;9A9E;
    STA $210F                   ;9AA1;
    STA $210F                   ;9AA4;
    STA $2110                   ;9AA7;
    STA $2110                   ;9AAA;
    STA $2111                   ;9AAD;
    STA $2111                   ;9A70;
    STA $2112                   ;9A70;
    STA $2112                   ;9A70;
    STA $2113                   ;9A70;
    STA $2113                   ;9A70;
    STA $2114                   ;9A70;
    STA $2114                   ;9A70;
    LDA #$80                    ;9A70;
    STA $2115                   ;9A70;
    LDA #$00                    ;9A70;
    STA $2116                   ;9A70;
    STA $2117                   ;9A70;
    STA $211A                   ;9A70;
    STA $211B                   ;9A70;
    INC A                       ;9A70;
    STA $211B                   ;9A70;
    DEC A                       ;9A70;
    STA $211C                   ;9A70;
    STA $211C                   ;9A70;
    STA $211D                   ;9A70;
    STA $211D                   ;9A70;
    STA $211E                   ;9A70;
    INC A                       ;9A70;
    STA $211E                   ;9A70;
    DEC A                       ;9A70;
    STA $211F                   ;9A70;
    STA $211F                   ;9A70;
    STA $2120                   ;9A70;
    STA $2120                   ;9A70;
    STA $2121                   ;9A70;
    STA $2123                   ;9B00;
    STA $2124                   ;9B03;
    STA $2125                   ;9B06;
    STA $2126                   ;9B09;
    STA $2127                   ;9B0C;
    STA $2128                   ;9B0F;
    STA $2129                   ;9B12;
    STA $212A                   ;9B15;
    STA $212B                   ;9B18;
    LDA #$13                    ;9B1B;
    STA $212C                   ;9B1D;
    LDA #$00                    ;9B20;
    STA $212D                   ;9B22;
    LDA #$00                    ;9B25;
    STA $212E                   ;9B27;
    STA $212F                   ;9B2A;
    LDA #$30                    ;9B2D;
    STA $2130                   ;9B2F;
    LDA #$00                    ;9B32;
    STA $2131                   ;9B34;
    LDA #$E0                    ;9B37;
    STA $2132                   ;9B39;
    LDA #$00                    ;9B3C;
    STA $2133                   ;9B3E;
    STA $4200                   ;9B41;
    LDA #$FF                    ;9B44;
    STA $4201                   ;9B46;
    STZ $4202                   ;9B49;
    STZ $4203                   ;9B4C;
    STZ $4204                   ;9B4F;
    STZ $4205                   ;9B52;
    STZ $4206                   ;9B55;
    STZ $4207                   ;9B58;
    STZ $4208                   ;9B5B;
    STZ $4209                   ;9B5E;
    STZ $420A                   ;9B61;
    STZ $420B                   ;9B64;
    STZ $420C                   ;9B67;
    STZ $2131                   ;9B6A;
    STZ $2130                   ;9B6D;
    LDA #$01                    ;9B70;
    STZ $420D                   ;9B72;
    LDA #$40                    ;9B75;
    STA $8080E7                 ;9B77;
    REP #$20                    ;9B7B;
    RTL                         ;9B7D;