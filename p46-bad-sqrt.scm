(load "p46-fixed-point.scm")

(define (sqrt x)
  (fixed-point (lambda (y) (/ x y))
               1.0))
