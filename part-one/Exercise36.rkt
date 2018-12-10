;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise36) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; Exercise 36

; img is an image
; e.g. (square 50 "solid" "green")

; image -> number

; Computes the area of the image

; given: (square 50 "solid" "green"), expected: 2500
; given: (rectangle 10 20 "solid" "red"), expected: 200 

(define (image-area img) (* (image-height img) (image-width img)))

(image-area (square 50 "solid" "green"))
(image-area (rectangle 10 20 "solid" "red"))