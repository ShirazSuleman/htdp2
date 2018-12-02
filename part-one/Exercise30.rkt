;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise30) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; Exercise 30

(define base-attendees 120)
(define base-price 5.0)
(define price-increment 0.1)
(define attendee-increment 15)
(define fixed-cost 180)
(define cost-per-attendee 0.04)
(define price-attendee-ratio (/ attendee-increment price-increment))

(define (attendees ticket-price)
  (- base-attendees (* (- ticket-price base-price) price-attendee-ratio)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ fixed-cost (* cost-per-attendee (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(profit 1.0) ; $511.2
(profit 2.0) ; $937.2
(profit 3.0) ; $1063.2
(profit 4.0) ; $889.2
(profit 5.0) ; $415.2