;;; 6-sqrt-iter.scm

(load "p16-new-if.scm")

(load "p15-good-enough.scm")
(load "p15-improve.scm")
(load "p16-sqrt.scm")

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))
