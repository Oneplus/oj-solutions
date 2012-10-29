(defun prime (n)
  (loop with L = ( loop for i from 2 to n collect i)
        for i in L
        collect i
        do (delete-if #'(lambda(x) (= 0 (mod x i))) L)) )

(setq table (prime 31630))

(loop for i in table
      do (print i))

(setq n (read))
(dotimes (j n)
  (setq x (max 2 (read)))
  (setq y ( read))
  (setq L ( loop for i from x to y collect i))
  (loop for i in table
        while (< i y)
        do (delete-if #'(lambda(x) (and (= 0 (mod x i)) (> x i))) L))
  (loop for i in L
        do (princ (format nil "~D~%" i)))
  (if (< j (- n 1)) (princ (format nil "~%")))
)

