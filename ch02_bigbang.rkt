;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ch02_bigbang) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; The very first world program
;
; Show a red box with a given dimension 100
(define (number->square s)
  (square s "solid" "red"))


; Show a red box. Because the world state never changes, therefore the
; world program never terminates. We'll see a red box showing there
; forever.
;
;(big-bang 100 [to-draw number->square])


; We can change the state of the world and give it a terminating
; condition. When the world terminates, returns its last state (0)
(big-bang 100
  [to-draw number->square]
  [on-tick sub1]
  [stop-when zero?])