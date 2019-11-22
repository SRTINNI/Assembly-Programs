 .model small
.stack 100h
.data 
    ;declare the data
    num1 db 'd' ;d means 100
    num2 db ? ; ? means donn' know
    char db '#'
    str db "my name is wow"
    char2 db ?
    
.code
main proc 
    ; for import data from .data
    mov ax,@data
    mov ds,ax
    
    
    ;below 11 and 12 line indicate return
    mov ah,4ch
    int 21h 
    main endp
end main
