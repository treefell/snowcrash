; ================ B E G I N N I N G   O F   P R O C E D U R E ================

; Variables:
;    arg_0: int, 8
;    var_C: int32_t, -12
;    var_10: int32_t, -16
;    var_14: int32_t, -20
;    var_18: int32_t, -24
;    var_1C: int32_t, -28
;    var_2C: int32_t, -44
;    var_48: int32_t, -72

ft_des:
push       ebp                                                 ; Begin of unwind block (FDE at 0x8048798), CODE XREF=main+70
mov        ebp, esp
push       edi
sub        esp, 0x44
mov        eax, dword [ebp+arg_0]
mov        dword [esp+0x48+var_48], eax                        ; argument "__s" for method j_strdup
call       j_strdup                                            ; strdup
mov        dword [ebp+var_C], eax
mov        dword [ebp+var_18], 0x0
mov        dword [ebp+var_1C], 0x0
jmp        loc_804855b

loc_804849c:
cmp        dword [ebp+var_18], 0x6                             ; CODE XREF=ft_des+265
jne        loc_80484a9

mov        dword [ebp+var_18], 0x0

loc_80484a9:
mov        eax, dword [ebp+var_1C]                             ; CODE XREF=ft_des+44
and        eax, 0x1
test       al, al
je         loc_80484ff

mov        dword [ebp+var_14], 0x0
jmp        loc_80484ea

loc_80484bc:
mov        eax, dword [ebp+var_1C]                             ; CODE XREF=ft_des+135
mov        edx, dword [ebp+var_C]
add        eax, edx
movzx      edx, byte [eax]
add        edx, 0x1
mov        byte [eax], dl
mov        eax, dword [ebp+var_1C]
mov        edx, dword [ebp+var_C]
add        eax, edx
movzx      eax, byte [eax]
cmp        al, 0x7f
jne        loc_80484e6

mov        eax, dword [ebp+var_1C]
mov        edx, dword [ebp+var_C]
add        eax, edx
mov        byte [eax], 0x20

loc_80484e6:
add        dword [ebp+var_14], 0x1                             ; CODE XREF=ft_des+101

loc_80484ea:
mov        eax, dword [ebp+var_18]                             ; CODE XREF=ft_des+70
add        eax, a0123456                                       ; "0123456"
movzx      eax, byte [eax]
movsx      eax, al
cmp        eax, dword [ebp+var_14]
jg         loc_80484bc

jmp        loc_8048553

loc_80484ff:
mov        eax, dword [ebp+var_1C]                             ; CODE XREF=ft_des+61
and        eax, 0x1
test       eax, eax
jne        loc_8048553

mov        dword [ebp+var_10], 0x0
jmp        loc_8048540

loc_8048512:
mov        eax, dword [ebp+var_1C]                             ; CODE XREF=ft_des+221
mov        edx, dword [ebp+var_C]
add        eax, edx
movzx      edx, byte [eax]
sub        edx, 0x1
mov        byte [eax], dl
mov        eax, dword [ebp+var_1C]
mov        edx, dword [ebp+var_C]
add        eax, edx
movzx      eax, byte [eax]
cmp        al, 0x1f
jne        loc_804853c

mov        eax, dword [ebp+var_1C]
mov        edx, dword [ebp+var_C]
add        eax, edx
mov        byte [eax], 0x7e

loc_804853c:
add        dword [ebp+var_10], 0x1                             ; CODE XREF=ft_des+187

loc_8048540:
mov        eax, dword [ebp+var_18]                             ; CODE XREF=ft_des+156
add        eax, a0123456                                       ; "0123456"
movzx      eax, byte [eax]
movsx      eax, al
cmp        eax, dword [ebp+var_10]
jg         loc_8048512

loc_8048553:
add        dword [ebp+var_1C], 0x1                             ; CODE XREF=ft_des+137, ft_des+147
add        dword [ebp+var_18], 0x1

loc_804855b:
mov        eax, dword [ebp+var_C]                              ; CODE XREF=ft_des+35
mov        dword [ebp+var_2C], 0xffffffff
mov        edx, eax
mov        eax, 0x0
mov        ecx, dword [ebp+var_2C]
mov        edi, edx
repne scasb al, byte [edi]
mov        eax, ecx
not        eax
sub        eax, 0x1
cmp        eax, dword [ebp+var_1C]
ja         loc_804849c

mov        eax, dword [ebp+var_C]
add        esp, 0x44
pop        edi
pop        ebp
ret
; endp
