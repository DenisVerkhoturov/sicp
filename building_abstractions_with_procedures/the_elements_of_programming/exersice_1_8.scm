(define (improve guess x)
 (/ (+ (/ x (square guess)) (* 2 guess)) 3)
)

(define (good-enough? prev guess)
 (< (abs (/ (- guess prev) prev)) 0.001)
)

(define (cube-root-iter prev guess x)
 (if (good-enough? prev guess)
  guess
  (cube-root-iter guess (improve guess x) x)
 )
)

(define (cube-root x) (cube-root-iter 0.5 1.0 x))
