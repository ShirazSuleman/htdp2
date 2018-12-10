;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise34) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; Exercise 34

; s is a string
; e.g. "hello"

; string -> 1string

; Returns the first character of the input string.

; given: "hello", expected: "h"
; given: "abcdef", expected: "a"

(define (string-first s) (string-ith s 0))

(string-first "hello")
(string-first "abcdef")