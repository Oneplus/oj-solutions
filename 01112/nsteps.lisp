(setq n (read))
(dotimes (i n)
  (setq x (read))
  (setq y (read))
  (setq xx (+ x y))
  (setq yy (- x y))
  (if
    (and (and (= 0 (rem xx 2)) (>= xx 0)) (or (= 0 yy) (= 2 yy)))
    (princ
      (format nil "~D~%"
              (+
                (+ (* (floor (/ xx 4)) 4) (floor (/ (mod xx 4) 2)))
                (* (expt -1 (floor (/ (mod (+ xx 2) 4) 2))) (floor (/ yy 2)))
                )))
    (princ (format nil "~A~%" "No Number"))
    )
  )
