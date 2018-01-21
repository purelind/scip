;;; 7-sqrt.scm

(load "p16-sqrt.scm")
(load "p15-improve.scm")
(load "p15-average.scm")

(load "7-good-enough.scm")

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (sqrt-iter (improve guess x)
		 x)))
