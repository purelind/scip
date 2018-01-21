(load "45-damped-nth-root.scm")
(load "45-least-damp-num.scm")

(define (nth-root n)
  (damped-nth-root n (least-damp-num n)))
