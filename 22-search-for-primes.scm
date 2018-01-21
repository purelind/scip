(load "22-continue-primes.scm")

(define (search-for-primes value)
  (let ((start-time (real-time-clock)))
    (continue-primes value 3)
    (- (real-time-clock) start-time)))
