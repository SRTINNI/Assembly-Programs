               .model small
.stack 100h
.data 
    ;declare the data
    
.code
main proc  
    
    ;input
    mov ah,1 ; single char input func 1
    int 21h

    ;output 
    mov ah, 2
    mov dl,ah
    int 21h 
    
    
    ;below 11 and 12 line indicate return
    mov ah,4ch
    int 21h 
    main endp
end main
