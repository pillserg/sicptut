(define a (* 5 5))
(write (* a a))

(define b (+ a (* a 5)))
(newline)
(write b)

; Bananas comment
(newline)
(write "square part")
(newline)

(define (square x)
  (* x x))

(write ( square 10 ))
(newline)

(define square (lambda (x) (* x x)))

(write "lambda (square 10)")
(newline)
(write (square 10))

(newline)
(write "mean-square")
(newline)

(define (average x y)
  (/ (+ x y) 2))

(define (mean-square x y)
  (average (square x)
           (square y)))

(write (mean-square 2 3))
(newline)

(write "abs")
(newline)

(define (abs x)
  (cond ((< x 0) (- x))
        ((= x 0) 0)
        ((< 0 x) x)))

(write (abs (- 100)))
(newline)

(write "short form of abs")
(newline)

(define (abs x)
  (if (< x 0)
    (- x)
    x))

(write (abs (- 100)))
(newline)

(write 'part-3)
(newline)
(write 'heron-of-alexandria-squarerootfind)
(newline)

(define (try guess x)
  (if (good-enough? guess x)
    guess
    (try (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define treshold 0.001)

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
    treshold))

(define (sqrt_l x) (try 1 x))


(write (sqrt_l 2))

(define (sqrt x)
  (define (improve guess)
    (average guess (/ x guess)))

  (define treshold 0.001)

  (define (good-enough? guess)
    (< (abs (- (square guess) x))
       treshold))

  (define (try guess)
    (if (good-enough? guess)
      guess
      (try (improve guess))))

  (try 1))
    
(newline)
(write (sqrt 2))
(newline)
(write (= (sqrt 2) (sqrt_l 2)))







