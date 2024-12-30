

INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "sum of all odd numbers is:",0


.code
asmfunc PROC arr:DWORD, p2:DWORD  
    
    mov eax,0
    mov ebx,0
    mov ecx,p2        ;size of array
    mov esi, arr       ;move the first index of array
    
    next:
        mov ax,[esi]
         test ax,1
         jz movetonext                            ;if there is even value then move to next

         add bx,ax                                ;sum the odd the value if found  
        
        movetonext:
                   add esi,TYPE arr               ;here we are moving to the next index bcz value was even
                   loop next

                 movzx eax,bx                      ;RETURN VALUE TO C FILE

        call crlf
    
    ret
asmfunc ENDP
end