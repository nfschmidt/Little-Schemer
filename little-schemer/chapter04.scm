(load "chapter03.scm")

(define add1
  (lambda (n)
    (+ n 1)))


(define sub1
  (lambda (n)
    (- n 1)))


(define o+
  (lambda (n m)
    (cond ((zero? m) n)
	  (else (add1 (o+ n (sub1 m)))))))


(define o-
  (lambda (n m)
    (cond ((zero? m) n)
	  (else (sub1 (o- n (sub1 m)))))))


(define addtup
  (lambda (tup)
    (cond ((null? tup) 0)
	  (else (o+ (car tup) (addtup (cdr tup)))))))


(define X
  (lambda (n m)
    (cond ((zero? m) 0)
	  (else (o+ n (X n (sub1 m)))))))


(define tup+
  (lambda (tup1 tup2)
    (cond ((null? tup1) tup2)
	  ((null? tup2) tup1)
	  (else (cons (o+ (car tup1) (car tup2))
		      (tup+ (cdr tup1) (cdr tup2)))))))

(define o>
  (lambda (n m)
    (cond ((zero? n) #f)
	  ((zero? m) #t)
	  (else (o> (sub1 n) (sub1 m))))))


(define o<
  (lambda (n m)
    (cond ((zero? m) #f)
	  ((zero? n) #t)
	  (else (o< (sub1 n) (sub1 m))))))


(define o=
  (lambda (n m)
    (not (or (o> n m) (o> m n)))))


(define ^
  (lambda (n m)
    (cond ((zero? m) 1)
	  (else (X n (^ n (sub1 m)))))))


(define div
  (lambda (n m)
    (cond ((o< n m) 0)
	  (else (add1 (div (o- n m) m))))))
	  

(define length
  (lambda (lat)
    (cond ((null? lat) 0)
	  (else (add1 (length (cdr lat)))))))


(define pick
  (lambda (n lat)
    (cond ((zero? (sub1 n)) (car lat))
	  (else (pick (sub1 n) (cdr lat))))))


(define rempick
  (lambda (n lat)
    (cond ((zero? (sub1 n)) (cdr lat))
	  (else (cons (car lat)
		      (rempick (sub1 n) (cdr lat)))))))
