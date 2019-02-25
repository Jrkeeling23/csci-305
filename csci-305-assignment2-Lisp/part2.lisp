(defun sumNumbers (list)
    (cond 
        ((null list)
            0)
        ((numberp (car list)) ; checks if it is a number
            (+ (car list) (sumNumbers (cdr list))))
        ((symbolp (car list)) ; symbol predicate. if symbol,returns true
            (sumNumbers (cdr list)))
        (t ; testing if it is a list, or use t as an else
        (+ (sumNumbers (car list)) (sumNumbers (cdr list)))))
        )

;; (setq numberList '(1 2 3 )) ; initialize variable for list. list denoted as '
;; (print numberList); print initial list


(defun getSize (list)
(- (list-length list) 1)
)

(defun setInitial (list)
(defvar large nil)
(defvar largestSeq nil)
(defvar initlist list)
)

(defun setLargestSeq(ls sum)
    (cond
        ((null large)
        (defvar large sum)
        (defvar largestSeq ls))
      (t
      (< sum large (/(defvar large sum)(defvar largestSeq ls)))  
    )
    (newList ls)))


(defun newList (list) 
    (cond
    ((null list)
    0)
    (t
    (list sublist list)
    (setq size (getSize list))
    (print sublist)
    (print (sumNumbers sublist))
    (setq summed (sumNumbers sublist))
    (setLargestSeq sublist summed)
    )))






    