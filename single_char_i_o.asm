.model small
.stack 100h
.data ;optional 
.code
main proc
    mov dl,'?'
    mov ah,2
    int 21h
    
    ;for newline
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov ah,1
    int 21h
    mov dl,al 
    
    mov ah,2
    int 21h 
    
    mov ah,4ch
    int 21h
    
    main endp
end main