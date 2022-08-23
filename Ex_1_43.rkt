#lang scheme
;((repeated square 2) 5)
;625

(define (compose f g)
  (lambda (x) (f(g x))))

(define (square x)
  (* x x))

(define (buildfn f n)
  (cond ((= n 1) f)
        (else (buildfn (compose f f) (- n 1)))))
  
(define (repeated f n)
  (buildfn f n))

((repeated square 2) 5)
