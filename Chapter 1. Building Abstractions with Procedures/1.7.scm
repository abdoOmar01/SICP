#lang sicp

(define (sqrt-iter guess prev-guess x)
    (if (good-enough? guess prev-guess x)
        guess
        (sqrt-iter (improve guess x) guess x)))

(define (good-enough? guess prev-guess x)
    (and (< (abs (- (square guess) x)) 0.0001)
         (if (= prev-guess 0) #t (< (abs (- guess prev-guess)) (* guess 0.00000001)))))
(define (square x) (* x x))

(define (improve guess x)
    (average guess (/ x guess)))
(define (average x y)
    (/ (+ x y) 2.0))

(define (sqrt x)
    (sqrt-iter 1.0 0 x))

(sqrt 2)
(sqrt 4)
(sqrt 0.000000001)
