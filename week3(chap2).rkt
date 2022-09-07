;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |week3(chap2)|) (read-case-sensitive #t) (teachpacks ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;-----------------------------------------------------------------
;week 3 starts from here

;chap 2 section 5
;'stdout

(write-file 'stdout (number->string 4))

;big bang and the interactive program
(define (number->square s)
  (square s "solid" "red"))
(define (eventH_1 keyInput)
  (big-bang 100
    [to-draw number->square]))

(define (eventH_2 keyInput) 
  (big-bang 100
    [to-draw number->square]
    [on-tick sub1]
    [stop-when zero?]))

;big bang Figure 14: A first interaction program

(define BACKGROUND (empty-scene 100 100))
(define DOT (circle 3 "solid" "red"))
 
(define (main y tick-bool)
  (big-bang y
    [on-tick sub1]
    ;[stop-when zero?]
    [to-draw place-dot-at]
    [on-key kE-h]))
 
(define (place-dot-at y)
  (place-image DOT 50 y BACKGROUND))

 
(define (kE-h kE y)
  (if (string=? kE "s")
      (sub1 y)
      y))

(main 100 false)

