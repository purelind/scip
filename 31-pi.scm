(load "31-iter-product.scm")
(load "31-numer-term.scm")
(load "31-denom-term.scm")

(define (pi n)
  (* 4.0
     (/ (product numer-term 1 inc n)
        (product denom-term 1 inc n))))

(define (inc x)
  (+ x 1))
