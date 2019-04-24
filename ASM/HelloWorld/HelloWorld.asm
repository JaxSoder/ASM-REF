section .data
    text db "Hello, Emma",10
 
section .text
    global _start
 
_start:
	
	call _printText
        

    mov rax, 60
    mov rdi, 0
    syscall

_printText:
    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, 14
    syscall
    ret
    
