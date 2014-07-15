(define (mycube_root x)
  (newton_cube_root x 1.0))

(define (newton_cube_root x guess)
  (if (convergence x guess) guess
      (newton_cube_root x (new_guess x guess))))

(define (convergence x guess)
  (< (/ (abs (- (new_guess x guess) guess)) guess) 0.00001))

(define (new_guess x guess) (/ (+ (/ x (* guess guess)) (* 2 guess)) 3.0))
