#lang sicp

(define x 4)
(+ x 2)

(define (square x) (* x x))
(square 5)

(define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))

(define (abs-2 x)
    (cond ((< x 0) (- x))
          (else x)))

(define (abs-3 x)
    (if (< x 0) (- x) x))

(define (<= x y)
    (or (< x y) (= x y)))

(define (>= x y)
    (or (> x y) (= x y)))

(define (<> x y z)
    (and (>= x y) (<= x z)))

(define (!= x y)
    (not (= x y)))

(abs 0)
(abs 1)
(abs -1)

(abs-2 0)
(abs-2 1)
(abs-2 -1)

(abs-3 0)
(abs-3 1)
(abs-3 -1)

(<= 1 2)
(<= 1 1)
(<= 2 1)

(<> 2 1 3)
(<> 15 10 20)

(!= 1 2)
