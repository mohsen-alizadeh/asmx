  ;; void quite()
  quit:
	  mov       rbx, 0            ; exit code 0
	  mov       rax, 1            ; sys_exit
	  int       80h
    ret

  ;; void print(message)
  print:
    push      rax               ; push message to stack
    call      strlen            ; get message len

    mov       rdx, rax          ; message len
    pop       rcx               ; message
    mov       rbx, 1            ; STDOUT
    mov       rax, 4            ; sys_write
    int       80h
    ret

  ;; int strlen(string)
  strlen:
    mov       rcx, rax          ; message
    mov       rax, 0

  .nextChar:
    cmp       byte [rcx], 0
    je        .done
    inc       rcx
    inc       rax
    jmp       .nextChar

  .done:
    ret
