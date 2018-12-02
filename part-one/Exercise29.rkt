;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise29) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; Exercise 29

(define base-attendees 120)
(define base-price 5.0)
(define price-increment 0.1)
(define attendee-increment 15)
(define fixed-cost 0.0)
(define cost-per-attendee 1.50)

(define (attendees ticket-price)
  (- base-attendees (* (- ticket-price base-price) (/ attendee-increment price-increment))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ fixed-cost (* cost-per-attendee (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(profit 3.0) ; $630
(profit 4.0) ; $675
(profit 5.0) ; $420

(define (profit-complex price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
     (+ 0
        (* 1.50
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price)))))))

(profit-complex 3.0) ; $630
(profit-complex 4.0) ; $675
(profit-complex 5.0) ; $420