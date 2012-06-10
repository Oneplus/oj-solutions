(setq n (read))
(setq a 0)
(dotimes (i n) (incf a (if (< 0 (setq x (read))) x 0)))
(princ (format nil "~D~%" a))
