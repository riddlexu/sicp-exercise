(define (mysqrt x)
  (newton_sqrt x 1.0))

(define (newton_sqrt x guess)
  (if (convergence x guess) guess
      (newton_sqrt x (new_guess x guess))))

(define (convergence x guess)
  (< (/ (abs (- (new_guess x guess) guess)) guess) 0.00001))

(define (new_guess x guess) (/ (+ guess (/ x guess)) 2.0))
