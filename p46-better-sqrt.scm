(load "p46-fixed-point.scm")

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))

(define (average x y)
  (/ (+ x y) 2))
