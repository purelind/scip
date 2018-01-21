(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (combiner (term a) result))))
  (iter a null-value))

(define (product x y)
  (* x y))

(define (sum x y)
  (+ x y))

(define (cube x)
  (* x x x))

(define (inc x)
  (+ x 1))
