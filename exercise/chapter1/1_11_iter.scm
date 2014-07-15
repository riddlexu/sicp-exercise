(define (f n)
  (if (< n 3) n
      (f_iter (- n 3) 4 2 1)))

(define (f_iter n a b c)
  (if (= n 0) a
      (f_iter (- n 1) (+ a (* 2 b) (* 3 c)) a b)))
