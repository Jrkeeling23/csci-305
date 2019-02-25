(defun sumNumbers (list)
    (cond 
        ((null list)
            0)
        ((numberp (car list)) ; checks if it is a number
            (+ (car list) (sumNumbers (cdr list))))
        ((symbolp (car list)) ; symbol predicate. if symbol,returns true
            (sumNumbers (cdr list)))
        (t ; testing if it is a list, or use t as an else
        (+ (sumNumbers (car list)) (sumNumbers (cdr list))))))

(setq numberList '(1 2 3 )) ; initialize variable for list. list denoted as '
(print numberList) ; print initial list
(sumNumbers numberList) ; calls function to sum numbers

(defun m-length (list) (print list)
    (if (null list)
        0
        (+ 1 (m-length (cdr list)))))

(setq numberList '(1 2 3 )) ; initialize list
(m-length numberList) ; calls function to get length
;; or
;; (defun m-length (list)
;; (length list))

(defun print-list (list)
    (if (not (null list))
        (progn
        (printc (car list)))))