; Corrected version with bounds checking
mov ecx, someValue ; Example value
mov ebx, someBaseAddress ; Example base address

; Check for potential overflow
mov eax, ecx
mul dword 4 ; Calculate ECX*4
jo overflow_handler ; Jump if overflow occurs

; Check if resulting address is within bounds
add eax, ebx ; Calculate final address
cmp eax, validMemoryStart ; Compare with start of valid memory
jb address_out_of_bounds ; Jump if below valid memory
cmp eax, validMemoryEnd ; Compare with end of valid memory
ja address_out_of_bounds ; Jump if above valid memory

mov eax, [eax] ; Access memory safely if checks passed
jmp end_of_code

overflow_handler:
; Handle overflow error
jmp end_of_code

address_out_of_bounds:
; Handle address out of bounds error
jmp end_of_code

end_of_code:
; Continue program execution