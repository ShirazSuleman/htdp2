;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercises) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; Exercise 1

(define (distance x y) (sqrt (+ (expt x 2) (expt y 2))))

(distance 12 5)

; Exercise 2

(define prefix "hello")
(define suffix "world")

(define (concat prefix suffix) (string-append prefix "_" suffix))

(concat prefix suffix)