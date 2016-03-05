(write (+ (* 3
       (+ (* 2 4)
          (+ 3 5)))
    (+ (- 10 7)
       6)))

10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))

(define a 3)
(define b (+ a 1))

(+ a b (* a b))
(= a b)

(if (and (< a b) (< (* a b) b))
  b
  a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (< a b) b a))

(* (cond ((< b a) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

'1.2

(/ (+ 5
      4
      (- 2 (- 3 (+ 6 (/ 4 3)))))
   (* 3
      (- 6 2)
      (- 2 7)))
(newline)
'1.3
(define (sum-of-squares-of-largest a b c)
  
  (define (sum-of-squares x y)
    (+ (* x x) (* y y)))

  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
        ((and (< b a) (< b c)) (sum-of-squares a c))
        (else (sum-of-squares a b))))

(write (= 200 (sum-of-squares-of-largest 1 10 10)))
(newline)

'1.4
(define (a-plus-abs-b a b)
  ((if (< 0 b) + -) a b))

(write (= 10 (a-plus-abs-b 9 -1)))
(newline)

'1.5
;(define (p) (p))
;(define (test x y)
;  (if (= 0 x)
;    0
;    y))
;(write (test 0 (p)))
;(newline)

;'newtons-sqrt
;(define (square x)
;  (* x x))
;
;(define (sqrt-iter guess x)
;  (if (good-enough? guess x)
;    guess
;    (sqrt-iter (improve guess x)
;               x)))
;
;(define (improve guess x)
;  (average guess (/ x guess)))
;
;(define (average x y)
;  (/ (+ x y) 2))
;
;(define TRESHOLD 0.001)
;
;(define (good-enough? guess x)
;  (< (abs (- (square guess) x)) TRESHOLD))
;
;(define (sqrt x)
;  (sqrt-iter 1 x))
;
;(write (sqrt 10))
;(newline)

; packed sqrt
(define (square x)
  (* x x))

(define (sqrt x)
  (define (sqrt-iter guess)
    (if (good-enough? guess)
      guess
      (sqrt-iter (improve guess))))
  (define TRESHOLD 0.001)
  (define (good-enough? guess)
    (< (abs (- (square guess) x))
       TRESHOLD))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (average a b)
    (/ (+ a b) 2))
  (sqrt-iter 1))

(write (sqrt 10))
(newline)
;1.6 - inf loop
'1.7

(define (square x)
  (* x x))

(define (average a b)
  (/ (+ a b) 2))


(define (sqrt-imp x)

  (define (sqrt-iter guess)
    (if (good-enough? guess)
      guess
      (sqrt-iter (improve guess))))

  (define TRESHOLD 0.001)

  (define (good-enough? guess)
    (< (abs (- guess (improve guess)))
       (* guess TRESHOLD)))

  (define (improve guess)
    (average guess (/ x guess)))


  (sqrt-iter 1))

(write "old sqrt 0.0001 -> ")
(write (sqrt 0.0001))
(newline)
(write "new sqrt 0.0001 -> ")
(write (sqrt-imp 0.0001))
(newline)

'1.8 ; cube root

(define (cube-root x)
  (define (cube-root-iter guess)
    (if (good-enough? guess)
      guess
      (cube-root-iter (improve guess))))
  (define TRESHOLD 0.001)
  (define (improve guess)
    (/ (+ (/ x (square guess)) (* 2 guess))  
       3))

  (define (good-enough? guess)
    (< (abs (- (* guess guess guess) x))
       (* guess TRESHOLD)))
  (cube-root-iter 1))

(write "cubert 1000 ->")
(write (cube-root 1000))
(newline)
