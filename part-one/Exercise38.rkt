;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise38) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; Exercise 38

; s is a string
; e.g. "hello"

; string -> string

; Returns the input string exclusing the last character

; given: "hello", expected: "hell"
; given: "abcdef", expected" "abcde"

(define (string-remove-last s) (substring s 0 (sub1 (string-length s))))

(string-remove-last "hello")
(string-remove-last "abcdef")