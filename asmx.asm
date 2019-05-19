;;;
;;; asmx simple web server written in Assembly x86_64
;;;

	SECTION .data
	  help      db                    "asmx", 0Ah, 0

	SECTION .text
	global _start

	_start:
	  call      quit

	quit:
	  mov       rbx, 0                ; exit code 0
	  mov       rax, 1                ; sys_exit
	  int       80h
	  ret
