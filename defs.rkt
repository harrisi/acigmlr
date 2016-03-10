#lang racket

(require (for-syntax syntax/parse))

(provide plus SEVEN def)

(define/contract (plus a b)
  (number? number? . -> . number?)
  (+ a b))

(define SEVEN 7)

(define-syntax (def stx)
  (syntax-parse stx
    [(_ contents ...) (quasisyntax/loc stx (define contents ...))]))