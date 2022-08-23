#lang scheme
;composition
;x -> f(g(x)
;((compose square inc) 6)
;49

(define (compose f g)
  (lambda (x) (f(g x))))

(define (square x)
  (* x x))

(define (inc x)
  (+ x 1))

(square 3)
(inc 4)

((compose square inc) 6)
