(load "p33-prime.scm")

(define (filtered-accumulate filter
                             combiner
                             null-value
                             term
                             a
                             next
                             b)
  (if (> a b)
      null-value
      (if (filter (term a))
          (combiner (term a)
                    (filtered-accumulate filter
                                         combiner
                                         null-value
                                         term
                                         (next a)
                                         next
                                         b))
          (filtered-accumulate filter
                               combiner
                               null-value
                               term
                               (next a)
                               next
                               b))))

(define (sum x y)
  (+ x y))

(define (identity x) x)

(define (inc x)
  (+ x 1))
