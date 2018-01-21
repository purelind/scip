(load "p38-sum-module.scm")

(define (simpson-rule f a b n)
  (define h (/ (- b a) n))

  (define (y-kth k)
    (f (+ a (* k h))))

  (define (factor k)
    (cond ((or (= k 0) (= k n))
           1)
          ((odd? k) 4)
          (else 2)))

  (define (term k)
    (* (factor k)
       (y-kth k)))

  (define (next k)
    (+ k 1))

  (if (not (even? n))
      (error "n must be even")
      (* (/ h 3)
         (sum term 0.0 next n))))

(define (cube x)
  (* x x x))
