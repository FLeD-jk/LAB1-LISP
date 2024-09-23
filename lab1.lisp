; 1
(defvar first-task nil)
(setq first-task (cons 'A(cons (list 'B (list 'c 'd) ()) (list 7 (list 'c 'd)))))
(print first-task)

; 2
(print (CAR first-task))

; 3
(print (cdr first-task))

; 4
(print (THIRD first-task))

; 5
(print (LAST first-task))

; 6.1.1
(print (ATOM (NTH 1 first-task)))

; 6.1.2
(print (ATOM (CDR first-task)))

; 6.1.3
(print (ATOM (CAR (NTHCDR 2 first-task))))

; 6.2.1
(print (LISTP (SECOND (NTH 1 first-task))))

; 6.2.2
(print (LISTP (FIRST first-task)))

; 6.2.3
(print (LISTP (THIRD (CDR first-task))))

; 7.1.1
(print (EQL (THIRD first-task) 7))

; 7.1.2
(print (EQL (CDR first-task) '('C 'D)))

; 7.2.1
(print (EQUAL (CAR first-task) 'A))

; 7.2.2
(print (EQUAL (SECOND (NTH 1 first-task))(FIRST (LAST first-task))))

; 7.3.1
(print (EQUALP (THIRD first-task) 7.0))

; 7.3.2
(print (EQUALP (CAR first-task) 'a))

; 8
(print (APPEND first-task (SECOND first-task)))

; 15mod8 = 7
(defvar sub-list nil)
(defvar main-list nil)
(setq sub-list (list 'D 'E 'F) main-list(list sub-list(cdr sub-list)(last sub-list) 4))
(print main-list)
