(load "p46-fixed-point.scm")
(load "p48-average-damp.scm")

(define (cube-root x)
  (fixed-point (average-damp (lambda (y) (/ x (square y))))
               1.0))
