#lang scheme

; calc length of items, recursive style
(define one-through-four (list 1 2 3 4))

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(length one-through-four)

; calc length of items, iterative style
(define (length2 items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0)
)

(length2 one-through-four)


    