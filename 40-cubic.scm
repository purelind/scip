(load "p50-newtons-method.scm")

(define (cubic a b c)
  (lambda (x)
    (+ (* x x x)
       (* a (square x))
       (* b x)
       c)))

(define (zero-of-cubic a b c)
  (newtons-method (cubic a b c) 1))
