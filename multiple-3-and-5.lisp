;; Euler ID 1
(defun range (start end)
  "Return a list from `start' to `end'."
  (if (equal start end)
      nil
      (cons start (range (+ start 1) end))))

(defun mult-3-or-5 (num)
  "Verify if `num' is multiple of 3 or 5."
  (cond ((equal 0 (mod num 3)) num)
	((equal 0 (mod num 5)) num)
	(t 0)))

(defun asum (lst)
  "Acumulative sum, return a sum of the numbers
multiple of 3 and 5 of the `lst'."
  (if (equal lst nil)
      0
      (+ (mult-3-or-5 (car lst))
	 (asum (cdr lst)))))

(asum (range 0 1000))
