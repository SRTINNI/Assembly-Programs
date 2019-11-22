.model small
.stack 100h
.data
    A dw 2
    B dw 5
    SUM dw $
.code
main proc
    ;import data
    mov ax,@data
    mov ds,ax
    
    ;add the numbers
    mov ax,A
    add ax,B
    mov SUM,ax 
    
    ;exit dos
    mov ah,4ch
    int 21h
    
    main endp
end main      
