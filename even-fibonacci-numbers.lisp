;; Euler ID 2

(defun fibonacci (x)
  (cond ((< x 0) nil)
	((equal x 0) 0)
	((equal x 1) 1)
	(t (+ (fibonacci (- x 1))
	      (fibonacci (- x 2))))))

(defun range (start end)
  (if (equal start end)
      nil
      (cons start (range (+ start 1) end))))

(defun fibonacci-even-value (lst value)
  (if (equal lst nil)
      0
      (let ((even (equal 0 (mod (fibonacci (car lst)) 2)))
	    (last-fibonacci (fibonacci (car lst))))
	(if (and even (<= last-fibonacci value))
	    (+ (fibonacci (car lst))
	       (fibonacci-even-value (cdr lst) value))
	    (+ (fibonacci-even-value (cdr lst) value))))))

(fibonacci-even-value (range 0 34) 4000000)
