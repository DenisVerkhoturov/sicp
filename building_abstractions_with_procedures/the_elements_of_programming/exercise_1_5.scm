(define (p) (p))

(define (test x y)
 (if (= x 0) 0 y)
)

(test 0 (p))

; Applicative order
; `test` is never actually invoked and the program will never terminate because of falling in an endless reduction
; trying to evaluate the second parameter of the call which is `(p)`.
; Since `p` is defined as `p` itself it never reduces to a simple value.

; Normal order
; The second parameter of the expression is passed to the `test` as is
; and because of the condition will never be evaluated. All the expression reduces in a simple value `0`.
