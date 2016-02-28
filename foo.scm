(define (fac n)
  (if (zero? n)
    1
    (* n (fac (- n 1))) ))

(write (fac 10))
(write "bananas")
(newline)
(write "fac 2")
(write (fac 2))

(newline)
