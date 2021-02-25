(define (square x)
  (* x x))

(define (expt b n)
  (cond
   [(= n 0) 1]
   [(even? n) (square (expt b (/ n 2)))]
   [else (* (expt b (- n 1)))]))

(define (binomial_coefficent n k)
  (cond
   [(> k n) 0]
   [(or (= k 0) (= k n)) 1]
   [else (+ (binomial_coefficent (- n 1) (- k 1))
            (binomial_coefficent(- n 1) k))]))

(define (pascal-triangle n k a b)
  (* (binomial_coefficent n k) (expt a (- n k)) (expt b k)))
