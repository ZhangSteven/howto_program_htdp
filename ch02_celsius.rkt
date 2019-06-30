;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ch02_celsius) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; convert from Fahrenheit to Celcius
;
; read user input from keyboard (Fahrenheit) to Celcius
;
(define (C f)
  (* 5/9
     (- f 32)))


; do (convert 'stdin 'stdout) to read input from command line
;
(define (convert in out)
  (write-file out
              (string-append "\n"
                             (number->string (C (string->number
                                                 (read-file in))))
                             "\n")))
