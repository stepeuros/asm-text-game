section .bss
player_x resb 1
player_y resb 1
enemy_flag resb 1

section .text
global _start

_start:
    mov byte [player_x], 2
    mov byte [player_y], 3
    mov byte [enemy_flag], 0

game_loop:
    ; pretend input logic
    ; move player UP
    inc byte [player_y]

    ; check for enemy encounter
    mov al, [player_y]
    cmp al, 5
    jne no_enemy

    mov byte [enemy_flag], 1

no_enemy:
    ; pretend output logic (text display)
    ; loop
    jmp game_loop
