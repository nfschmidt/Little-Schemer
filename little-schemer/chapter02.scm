(load "chapter01.scm")

(define lat?
  (lambda (l)
    (cond ((null? l) #t)
	  ((atom? (car l)) (lat? (cdr l)))
	  (else #f))))


(define lat?-2
  (lambda (l)
    (or (null? l)
	(and (atom? (car l))
	     (lat?-2 (cdr l))))))


(define member?
  (lambda (a lat)
    (cond ((null? lat) #f)
	  (else (or (eq? a (car lat))
		    (member? a (cdr lat)))))))


(define member?-2
  (lambda (a lat)
    (cond ((null? lat) #f)
	  ((eq? a (car lat)) #t)
	  (else (member?-2 a (cdr lat))))))


(define member?-3
  (lambda (a lat)
    (and (not (null? lat))
	 (or (eq? a (car lat))
	     (member?-3 a (cdr lat))))))
