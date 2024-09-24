; 1
(defvar first-task nil)
(setq first-task (cons 'A(cons (list 'B (list 'c 'd) ()) (list 7 (list 'c 'd)))))
(print first-task)

; 2
(print (cons first-task))

; 3
(print (cdr first-task))

; 4
(print (third first-task))

; 5
(print (car (last first-task)))

; 6.1.1
(print (atom (nth 1 first-task)))

; 6.1.2
(print (atom (cdr first-task)))

; 6.1.3
(print (atom (car (nthcdr 2 first-task))))

; 6.2.1
(print (listp (second (nth 1 first-task))))

; 6.2.2
(print (listp (first first-task)))

; 6.2.3
(print (listp (third (cdr first-task))))

; 7.1.1
(print (eql (third first-task) 7))

; 7.1.2
(print (eql (cdr first-task) '('C 'D)))

; 7.2.1
(print (equal (car first-task) 'A))

; 7.2.2
(print (equal (second (nth 1 first-task))(first (last first-task))))

; 7.3.1
(print (equalp (third first-task) 7.0))

; 7.3.2
(print (equalp (car first-task) 'a))

; 8
(print (append first-task (second first-task)))

; 15mod8 = 7
(defvar sub-list nil)
(defvar main-list nil)
(setq sub-list '( D E F) main-list(list (list (car sub-list)(cdr sub-list))(last sub-list) 4))
(print main-list)
