;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ch02_ex09) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; chapter ex9

; Try (convert (sqrt -1)) to see what happens
(define (convert in)
  (cond
    [(string? in) (string-length in)]
    [(image? in) (area in)]
    [(real? in) (decrement in)]
    [else "don't know what to do"]))


(define (area image)
  (* (image-height image) (image-width image)))


(define (decrement number)
  (non-negative (- number 1)))


(define (non-negative number)
  (if (> number 0) number 0))