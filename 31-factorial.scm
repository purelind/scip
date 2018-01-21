(load "31-rec-product.scm")

(define (factorial n)
  (product identity 1 inc n))

(define (inc x) (+ x 1))

(define (identity x) x)
