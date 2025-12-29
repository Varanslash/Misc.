include "macros.inc"

section "hi", rom0[$0000]      ; i need this thing here
Pythagorean:
    PythagoreanTheorem
    call Freeze
Freeze:                        ; Freezing the assembler
    jr Freeze                  ; INFINITE LOOP HAHAHAHAHAHAHA
; Wait for LY >= 144
section "letters", rom0[$0300]
    db $7e, $7e, $c1, $ff, $c1, $c1, $c1, $c1, $ff, $ff, $c1, $ff, $c1, $c1, $c1, $c1 ; A
    db $fe, $fe, $c1, $ff, $c1, $c1, $fe, $fe, $c1, $ff, $c1, $c1, $c1, $c1, $fe, $fe ; B
    db $7f, $7f, $ff, $ff, $c0, $ff, $c0, $c0, $c0, $c0, $c0, $c0, $ff, $ff, $7f, $7f ; C
    db $fe, $fe, $c1, $ff, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $fe, $fe ; D
    db $ff, $ff, $c0, $ff, $c0, $c0, $ff, $ff, $c0, $ff, $c0, $c0, $c0, $c0, $ff, $ff ; E
    db $ff, $ff, $c0, $ff, $c0, $c0, $ff, $ff, $c0, $ff, $c0, $c0, $c0, $c0, $c0, $c0 ; F
    db $7e, $7e, $c1, $ff, $c0, $c0, $c0, $c0, $de, $de, $c3, $df, $c3, $c3, $7e, $7e ; G
    db $c1, $c1, $c1, $c1, $c1, $c1, $ff, $ff, $ff, $ff, $c1, $ff, $c1, $c1, $c1, $c1 ; H
    db $ff, $ff, $18, $ff, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $ff, $ff ; I
    db $ff, $ff, $18, $ff, $18, $18, $18, $18, $18, $18, $18, $18, $98, $98, $70, $70 ; J
    db $c6, $c6, $cc, $ce, $d8, $dc, $f0, $f8, $f0, $f0, $d8, $f8, $cc, $dc, $c6, $ce ; K
    db $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $ff, $ff ; L
    db $e3, $e3, $f7, $f7, $dd, $ff, $c9, $dd, $c1, $c9, $c1, $c1, $c1, $c1, $c1, $c1 ; M
    db $c1, $c1, $e1, $e1, $f1, $f1, $d9, $f9, $cd, $dd, $c7, $cf, $c3, $c7, $c1, $c3 ; N
    db $7e, $7e, $c3, $ff, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $7e, $7e ; O
    db $fe, $fe, $c1, $ff, $c1, $c1, $c1, $c1, $fe, $ff, $c0, $fe, $c0, $c0, $c0, $c0 ; P
    db $7e, $7e, $ff, $ff, $c3, $ff, $c3, $c3, $cb, $cb, $cf, $cf, $c6, $ce, $7d, $7d ; Q
    db $fe, $fe, $c1, $ff, $c1, $c1, $c1, $c1, $fe, $ff, $f0, $fe, $cc, $fc, $c3, $cf ; R
    db $7f, $7f, $c0, $ff, $c0, $c0, $c0, $c0, $7e, $fe, $03, $7f, $03, $03, $fe, $ff ; S
    db $ff, $ff, $18, $ff, $18, $38, $18, $38, $18, $38, $18, $38, $18, $38, $18, $38 ; T
    db $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $c3, $7e, $7e ; U
    db $81, $81, $c3, $c3, $c3, $c3, $66, $e7, $66, $66, $3c, $7e, $3c, $3c, $18, $3c ; V
    db $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $ff, $76, $76 ; W
    db $c3, $c3, $e7, $e7, $7e, $ff, $3c, $7e, $3c, $3c, $7e, $7e, $e7, $ff, $c3, $e7 ; X
    db $c3, $c3, $e7, $e7, $7e, $ff, $3c, $7e, $18, $3c, $18, $18, $18, $18, $18, $18 ; Y
    db $ff, $ff, $ff, $ff, $0e, $ff, $1c, $1e, $38, $3c, $70, $78, $e0, $f0, $ff, $ff ; Z
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; space
    db $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $00, $00, $18, $18, $18, $18 ; !
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $18, $18, $18 ; .
    db $00, $00, $18, $18, $18, $18, $00, $00, $00, $00, $18, $18, $18, $18, $00, $00 ; :
    db $7c, $7c, $06, $7e, $06, $06, $1c, $1e, $18, $1c, $00, $18, $18, $18, $18, $18 ; ?
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $7e, $7e ; _
    db $18, $18, $30, $38, $30, $30, $30, $30, $30, $30, $30, $30, $30, $30, $18, $18 ; (
    db $18, $18, $0c, $1c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $18, $18 ; )
call Pythagorean
