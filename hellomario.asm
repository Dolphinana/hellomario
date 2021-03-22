.segment "HEADER"
.byte "NES"
.byte $1a
.byte $02 ; 2 * 16KB PRG ROM
.byte $01 ; 1 * 8KB CHR ROM
.byte %00000000 ; mapper and mirroring
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00, $00, $00, $00, $00, ; filler bytes
.segment "ZEROPAGE" ; LSB 0 - FF
.segment "STARTUP"
Reset:
    
Loop:
	JMP Loop

NMI:

.segment "VECTORS"
	.word NMI
	.word Reset
	; 
.segment "CHARS"
    .incbin "hellomario.chr"
