#lang scheme

(define (sum_two_larger_squares x y z)
  (cond
    [(and (>= x z) (>= y z)) (+ (* x x) (* y y))]
    [(and (>= x y) (>= z y)) (+ (* x x) (* z z))]
    [else (+ (* y y) (* z z))]
  )
)

(sum_two_larger_squares 4 2 5)
