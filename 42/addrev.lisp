(setq n (parse-integer (read-line)))
(dotimes (i n)
  (princ (format nil "~A~%" (string-left-trim "0" (reverse 
    (write-to-string (+
        (parse-integer (reverse (write-to-string (read))))
        (parse-integer (reverse (write-to-string (read))))
    ))))
  ))
)
