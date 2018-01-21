(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

(define (product x y)
  (* x y))

(define (sum x y)
  (+ x y))

(define (cube x)
  (* x x x))

(define (inc x)
  (+ x 1))
