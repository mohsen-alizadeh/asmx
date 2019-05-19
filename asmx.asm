;;;
;;; asmx simple web server written in Assembly x86_64
;;;
  %include "utils.asm"

	SECTION .data
	  help      db      "asmx -p PORT -d PATH", 0Ah, 0

	SECTION .text
	global _start

  _start:
    mov         rax, help
    call        print
    call        quit
