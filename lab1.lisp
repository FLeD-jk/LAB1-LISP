; 1
CL-USER> (defvar first-task nil)
   (setq first-task (cons 'A
		(cons (list 'B (list 'c 'd) ()) (list 7 (list 'c 'd)))))
(print first-task)

;(A (B (C D) NIL) 7 (C D))

; 2
CL-USER> (CAR first-task)
; A

; 3
CL-USER> (cdr first-task)
; ((B (C D) NIL) 7 (C D))

; 4
CL-USER> (THIRD first-task)
; 7
; 5
CL-USER> (LAST first-task)
; ((C D))

; 6.1.1
CL-USER> (ATOM (NTH 1 first-task))
; NIL

; 6.1.2
CL-USER> (ATOM (CDR first-task))
; NIL

; 6.1.3
CL-USER> (ATOM (CAR (NTHCDR 2 first-task)))
; T

; 6.2.1
CL-USER> (LISTP (SECOND (NTH 1 first-task)))
; T

; 6.2.2
CL-USER> (LISTP (FIRST first-task))
; NIL

; 6.2.3
CL-USER> (LISTP (THIRD (CDR first-task)))
; T

; 7.1.1
CL-USER> (EQL (THIRD first-task) 7)
; T

; 7.1.2
CL-USER>  (EQL (CDR first-task) '('C 'D))
; NIL

; 7.2.1
CL-USER> (EQUAL (CAR first-task) 'A)
; T

; 7.2.2
CL-USER> (EQUAL (SECOND (NTH 1 first-task))(FIRST (LAST first-task)))
; T

; 7.3.1
CL-USER> (EQUALP (THIRD first-task) 7.0)
; T

; 7.3.2
CL-USER>  (EQUALP (CAR first-task) 'a)
; T


; 8
CL-USER> (APPEND first-task (SECOND first-task))
; (A (B (C D) NIL) 7 (C D) B (C D) NIL)

; 15mod8 = 7
CL-USER> (defvar sub-list nil)
CL-USER> (defvar main-list nil)
CL-USER> (setq sub-list (list 'D 'E 'F) 
		   main-list(list sub-list(cdr sub-list)(last sub-list) 4))
CL-USER> (print main-list)

; ((D E F) (E F) (F) 4) 
