(defun hillC(state goal bucket1L bucket2L)
    (setq currenSt state)
    (if (= (car currentSt) goal) (return 1))
    (loop while (not (= (car currentSt) goal))
            do 
                (print currentSt)
                (setq succ currentState)
                (loop for op in operators
                    do 
                        (setq newState (applyOperator currentSt op))
                        (if (= (car newState) goal) (progn (print newState) (return-from hillC nil)) (progn (setq succ (isBest newState succ))))
                )
                (setq currenSt (isBest currentSt succ))
    )
)
;aplicamos el operador y retornamos un nuevo estado
(defun applyOperator(newState op)
        (cond
                (string= op "A llena") (progn  (setf (car newState) bucket1L) (return newState))
                (string= op "B llena") (progn  (setf (cdr newState) bucket2L) (return newState))
                (string= op "A vacia") (progn  (setf (car newState) 0) (return newState))
                (string= op "B vacia") (progn  (setf (cdr newState) 0) (return newState))
                (string= op "A -> B") (progn  (setf (cdr newState) 0) (return newState))
                (string= op "B -> A") (progn  (setf (cdr newState) 0) (return newState))
        )
)
;pasamos de una jarra a otra segun el espacio disponible
(defun puorIntoTheOther(state bucket1L bucket2L op)
    (cond
        (string= op "A -> B") (progn 
                                )
        (string= op "B -> A") (progn
                                )
    )
)
;hacemo la comparción con ayuda de la funcion heuristica
(defun isBest(st1 st2)
        (if())

)

(defvar state '(0 0))
(defvar operators '("A llena" "B llena" "A vacia" "B vacia" "A -> B" "B -> A"))