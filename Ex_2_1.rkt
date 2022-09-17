#lang scheme
(define (make-rat n d) (cons n d))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat-orig x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define (print-rat x)
  (define n (numer x))
  (define d (denom x))
  (define z
    (cond
      [(or (and (>= n 0) (>= d 0)) (and (> 0 n) (> 0 d))) (make-rat (abs n) (abs d))]
      [else (make-rat (- (abs n)) (abs d))]))
  (newline)
  (display (numer z))
  (display "/")
  (display (denom z)))

(print-rat (make-rat 2 3))   ;  2/3
(print-rat (make-rat -2 3))  ; -2/3
(print-rat (make-rat -2 -3)) ;  2/3
(print-rat (make-rat 2 -3))  ; -2/3
