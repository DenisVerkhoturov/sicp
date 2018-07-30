(define (average a b) (/ (+ a b) 2))

(define (improve guess x)
 (average guess (/ x guess))
)

(define (good-enough? guess x)
 (< (abs (- (square guess) x)) 0.001)
)

(define (new-if predicate then-clause else-clause)
 (cond (predicate then-clause)
       (else      else-clause)
 )
)

(define (sqrt-iter guess x)
 (new-if (good-enough? guess x)
         guess
         (sqrt-iter (improve guess x) x)
 )
)

(define (sqrt x) (sqrt-iter 1.0 x))

; Because of an applicative order of execution, such version of the conditional operator will drop the program into
; an endless loop of reduction. Since it requires to evaluate both `then` and `else` clauses before actually
; invoke `new-if` function. That is the reason why such implementation works the diffenebt way.
