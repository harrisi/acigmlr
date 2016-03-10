#lang racket

(require "cuket.rkt")

(def (foo x)
  (plus x SEVEN))

(define (bar x)
  (+ x 8))