(defun factorial (n)
  (if (= 0 n)
    1
    (* n (factorial (- n 1)))))

(setq n (parse-integer (read-line)))
(dotimes (i n)
  (princ (format nil "~D~%" (factorial (parse-integer (read-line))))))
