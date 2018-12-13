; 1.1.1

486

(+ 137 349)

(- 1000 334)

(* 5 99)

(/ 10 5)

(+ 2.7 10)

(+ 21 35 12 7)

(* 25 4 12)

(+ (* 3 5) (- 10 6))

(+ (* 3 
      (+ (* 2 4) 
           (+ 3 5))) 
    (+ (- 10 7) 
       6))

; 1.1.2

(define size 2)

size

(* 5 size)

(define pi 3.14159)
(define radius 10)

(* pi (* radius radius))

(define circumference (* 2 pi radius))

circumference

; 1.1.3

; 1.1.4

(define (square x) (* x x))

(square 21)

(square ( + 2 5))

(square (square 3))

(define (sum-of-squares x y) (+ (square x) (square y)))

(sum-of-squares 3 4)

(define (f a) (sum-of-squares (+ a 1) (* a 2)))

(f 5)

; 1.1.5

; 1.1.6

(define (abs x)
  (cond ((> x 0) x)
  ((= x 0) 0)
  ((< x 0) (- x))))

(abs -5)

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

(abs -5)

(define (abs x)
  (if (< x 0) (- x) x))

(abs -6)

(define (>= x y) (or (> x y) (= x y)))

(>= 5 6)

(define (>= x y) (not (< x y)))

(>= 7 7)

; Exercise 1.1

10

(+ 5 3 4)

(- 9 1)

(/ 6 2)

(+ (* 2 4) (- 4 6))

(define a 3)

(define b (+ a 1))

(+ a b (* a b))

(= a b)

(if (and (> b a) (< b (* a b))) b a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
        ((< a b) b)
        (else -1))
    (+ a 1))

; Exercise 1.2

(/ 
  (+ 5 
     4 
     (- 2 
       (- 3 
         (+ 6 
           (/ 4 5))))) 
  (* 3 
     (- 6 2) 
     (- 2 7)))

; Exercise 1.3

(define (two-largest a b c) 
        (if (or (> a b) (> a c))
          (sum-of-squares a (if (> b c) b c))
          (sum-of-squares b c)))

(two-largest 6 4 5)

; Exercise 1.4

; Exercise 1.5

; 1.1,7

(define (average x y)   
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x) 
         guess
         (sqrt-iter (improve guess x) x)))

(define (sqrt-x)
  (sqrt-iter 1.0 x))

(sqrt 9)

(sqrt 49)

; Exercise 1.8


(define (cube-root x) 
  (define (cubed x) (* x x x))
  (define (cubed-good-enough? guess x)
    (< (abs (- (cubed guess) x)) 0.001))
  (define (cube-improve guess x)
    (/
      (+ 
        (/ x (square guess)) 
        (* 2 guess)
        )
      3))
  (define (cube-root-iter guess x)
    (if (cubed-good-enough? guess x)
      guess
      (cube-root-iter (cube-improve guess x) x)))
  (cube-root-iter 1 x))

(cube-root 8)

(cube-root 27)





