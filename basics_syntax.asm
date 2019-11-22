.model small  ;memory size definition
.stack 100h   ;stack definition
.data
    ;all variable will be declared
.code
    ;code segment 
main proc
    ;statements
    
    ;below 11 and 12 line indicate return
    mov ah,4ch
    int 21h 
    main endp
end main
