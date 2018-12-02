;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise5) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; Exercise 5

(define size 2)
(define left-edge (triangle/sss (* 30 size) (* 57 size) (* 48 size) "solid" "seagreen"))
(define center (rectangle (* 60 size) (* 30 size) "solid" "seagreen"))
(define right-edge (triangle/sss (* 56 size) (* 30 size) (* 48 size) "solid" "seagreen"))
(define base (overlay/offset (overlay/offset left-edge (* 53.5 size) 0 center) (* 76.5 size) 0 right-edge))
(define pole (rectangle (* size 10)(* size 24) "solid" "brown"))
(define sail (overlay/offset pole (* 1 size) (* -40 size) (isosceles-triangle (* 80 size) 90 "solid" "blue")))
(overlay/offset base 0 (* size -40) sail)