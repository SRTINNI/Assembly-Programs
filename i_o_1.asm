.model small
.stack 100h
.data 
    ;declare the data
    num db 100
    char db '#'
    msg db "my name is wow$"
    
.code
main proc 
    ; for import data from .data
    mov ax,@data
    mov ds,ax 
    
    ;print num
    mov ah,2 ; single char output func 2
    mov dl,num
    int 21h  
    
    ;for newline
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    ;print char
    ;mov ah,2 ; no need for second time declaration
    mov dl,char
    int 21h
    
    ;for newline
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h 
    
    ;print msg
    mov ah,9 ; multiple char output
    lea dx,msg
    int 21h
    
    ;below 11 and 12 line indicate return
    mov ah,4ch
    int 21h 
    main endp
end main
