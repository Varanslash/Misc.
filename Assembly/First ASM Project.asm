section "hi", rom0[$0000] ; i need this thing here
myFirstRoutine: ; my first routine! (camelCase)
    ld bc, $d000 ; Load memory address d000
    ld a, [hl] ; Load the value of d000 (in bc) to accumulator
; this comment comes after line 12
    ld e, $01 ; load 1 to e
    ld b, $00ff ; load 255 to b
; numbers
    add a, e ; add e to accumulator
    add a, b ; add b to accumulator
    ld [hl], a ; Load a back into d000
; my goal is to put a comment in every line
Freeze: ; Freezing the assembler
    jr Freeze ; INFINITE LOOP HAHAHAHAHAHAHA
section "hi again", ROMX[$4000], BANK[2]
; this is an empty line
call myFirstRoutine ; call said routine, pretty cool huh?
call Freeze ; stop, this is not obvious at all trust
nop
; i needed an even number
