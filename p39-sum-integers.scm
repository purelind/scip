(load "p38-sum-module.scm")

(define (indentity x) x)
(define (inc n) (+ n 1))

(define (sum-integers a b)
  (sum indentity a inc b))
