(load "16-iter-fast-expt.scm")

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))
