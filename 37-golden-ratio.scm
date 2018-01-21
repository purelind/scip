(load "37-cont-frac-rec.scm")

(define (golden-ratio k)
  (/ 1
     (cont-frac (lambda (i) 1.0)
                (lambda (i) 1.0)
                k)))
