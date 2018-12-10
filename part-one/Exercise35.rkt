;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise35) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; Exercise 35

; s is a string
; e.g. "hello"

; string -> 1string

; Returns the last character of the input string

; given: "hello", expected: "o"
; given: "abcdef", expected: "f"

(define (string-last s) (string-ith s (sub1 (string-length s))))

(string-last "hello")
(string-last "abcdef")