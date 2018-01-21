(load "37-cont-frac-rec.scm")

(define (tan-cf x k)
  (define (n k)
    (if (= k 1)
        x
        (- (square x))))
  (define (d k)
    (- (* 2.0 k) 1.0))
  (cont-frac n d k))
