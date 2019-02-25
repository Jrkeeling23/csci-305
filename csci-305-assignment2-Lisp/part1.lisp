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
