(load "p38-sum-module.scm")

(define (inc n)
  (+ n 1))

(define (cube n)
  (* n n n))

(define (sum-cubes a b)
  (sum cube a inc b))
