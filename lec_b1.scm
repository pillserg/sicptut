(define (sum-of-squares x y)
  (+ (sq x) (sq y)))

(define (sq x)
  (* x x))

(write (sum-of-squares 3 4))

(define expressions 
  '(numbers
   symbols
   (lambda-expressions
    definitions
    conditionals
    combinations)))

(newline)
(write expressions)

(sum-of-squares 3 4)
(+ (sq 3) (sq 4))
(+ (sq 3) (* 4 4))
(+ (sq 3) 16)
(+ (* 3 3) 16)
(newline)
(write (= (+ 9 16) 25))

(if 'predicate
  'consqeutive
  'alternative)

(define (dumb-fib n)
  (if (< n 2)
      n
      (+ (dumb-fib (- n 1))
         (dumb-fib (- n 2)))))
(write (dumb-fib 10))

"
(define (move n from to spare)
  (cond ((= n 0) 'DONE)
        (else 
          (move (- n 1) from spare to)
          (print-move  from to)
          (move (-1 n) spare to from)
"
(newline)
