(defun join-string-list (string-list)
  (format nil "~{~A~^~}" string-list))

(setq n (read))
(dotimes (i n)
  (setq line (read-line))
  (setq opnd nil)
  (setq optr nil)
  (loop
    for i from 0 to (1- (length line))
    do
    (setq ch (char line i))

    ;(print opnd)
    ;(print optr)

    (if (alpha-char-p ch) (push (string ch) opnd))
    (if (char= #\( ch) (push (string ch) optr))
    (if
      (char= #\) ch)
      (progn
        (loop
          while (string-not-equal "(" (first optr))
          do
          (push
            (concatenate 
              'string 
              (join-string-list (reverse (list (pop opnd) (pop opnd))))
              (pop optr))
            opnd)
          ) ; loop
        (pop optr)
        ) ; progn
      ) ; if
    (if
      (position ch "+-*/^")
      (progn
        (loop
          while (<=
                  (position ch "(+-*/^)")
                  (position (char (first optr) 0) "(+-*/^)"))
          do
          (push
            (concatenate 
              'string
              (join-string-list (reverse (list (pop opnd) (pop opnd))))
              (pop optr))
            opnd))
        (push (string ch) optr)
        ) ; progn
      ); if
    ) ; loop
  (princ (format nil "~A~%" (first opnd)))
  ) ; dotimes
