(load "43-repeated.scm")

(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x 0.00001))
          (f x)
          (f (+ x 0.00001)))
       3)))

(define (smooth-repeated-n smooth n)
  (repeated smooth n))
