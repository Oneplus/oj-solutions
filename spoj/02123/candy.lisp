(loop
  (when (= -1 (setq n (read))) (return))
  (progn
    (setq candies nil)
    (setq sum 0)
    (dotimes (i n)
      (setq x (parse-integer (read-line)))
      (incf sum x)
      (push x candies))
    ; notice: when use (apply '+ candies)
    ; clisp argue that `too many arguments given to +`
    (if (/= 0 (mod sum n))
      (princ (format nil "~D~%" -1))
      (progn
        (setq ans 0)
        (setq mean (/ sum n))
        (loop for x in candies
              do
              (incf ans (abs (- x mean))))

        (princ (format nil "~D~%" (/ ans 2)))
      )
    )))
