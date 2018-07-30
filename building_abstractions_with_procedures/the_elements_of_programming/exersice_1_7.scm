(define (average a b) (/ (+ a b) 2))

(define (improve guess x)
 (average guess (/ x guess))
)

(define (good-enough? prev guess)
 (< (abs (/ (- guess prev) prev)) 0.001)
)

(define (sqrt-iter prev guess x)
 (if (good-enough? prev guess)
     guess
     (sqrt-iter guess (improve guess x) x)
 )
)

(define (sqrt x) (sqrt-iter 0.5 1.0 x))
