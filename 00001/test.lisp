(loop
  (when (= 42 (setq n (read))) (return))
  (princ (format nil "~D~%" n)))

