(load "37-cont-frac-rec.scm")

(define (e-cont-frac k)
  (+ 2
     (cont-frac n d k)))

(define (d k)
  (if (= (remainder (+ k 1) 3)
         0)
      (* 2.0 (/ (+ k 1) 3))
      1.0))

(define (n k) 1.0)
