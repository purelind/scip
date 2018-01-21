;;;guess a y, (/ (+ y(/ x y)) 2) will be a better guess
(load "p15-good-enough.scm")
(load "p15-improve.scm")
(load "p15-good-enough.scm")

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
		 x)))



