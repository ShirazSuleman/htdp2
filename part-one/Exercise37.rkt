;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise37) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; Exercise 37

; s is a string
; e.g. "hello"

; string -> string

; Returns the rest of the string excluding the first character

; given: "hello", expected: "ello"
; given: "abcdef", expected: "bcdef"

(define (string-rest s) (substring s 1))

(string-rest "hello")
(string-rest "abcdef")
