;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |week2(chap2)|) (read-case-sensitive #t) (teachpacks ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
; exercise 13: Define the function string-first, which extracts the first 1String from a non-empty string;
; String -> 1String
; Result expects:
; (string-first "hello") retruns "h"
; (string-first "") returns ""

(define (string-first str)
  (if (string=? str "")
      ""
      (string-ith str 0)))

; exercize 15: Define ==>
; bool bool -> bool

(define (==> sunny friday)
  (or sunny friday))

