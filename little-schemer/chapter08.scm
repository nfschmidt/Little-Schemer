(load "chapter07.scm")

(define rember-f-old
  (lambda (test? a l)
    (cond ((null? l) '())
	  ((test? a (car l)) (cdr l))
	  (else (cons (car l)
		      (rember-f-old test? a (cdr l)))))))


(define eq?-c
  (lambda (a)
    (lambda (x)
      (eq? x a))))


(define eq?-salad (eq?-c 'salad))


(define rember-f
  (lambda (test?)
    (lambda (a l)
      (cond ((null? l) '())
	    ((test? a (car l)) (cdr l))
	    (else (cons (car l)
			((rember-f test?) a (cdr l))))))))


(define rember-eq? (rember-f eq?))


(define insertL-f
  (lambda (test?)
    (lambda (new old l)
      (cond ((null? l) '())
	    ((test? (car l) old) (cons new (cons old (cdr l))))
	    (else (cons (car l)
			((insertL-f test?) new old (cdr l))))))))


(define insertR-f
  (lambda (test?)
    (lambda (new old l)
      (cond ((null? l) '())
	    ((test? (car l) old) (cons old (cons new (cdr l))))
	    (else (cons (car l)
			((insertR-f test?) new old (cdr l))))))))


(define insert-g
  (lambda (seq)
    (lambda (new old l)
      (cond ((null? l) '())
	    ((eq? (car l) old) (seq new old (cdr l)))
	    (else (cons (car l)
			((insert-g seq) new old (cdr l))))))))


(define seqL
  (lambda (new old l)
    (cons new (cons old l))))


(define seqR
  (lambda (new old l)
    (cons old (cons new l))))


(define insertL (insert-g seqL))


(define insertR (insert-g seqR))


(define seqS
  (lambda (new old l)
    (cons new l)))


(define subst (insert-g seqS))


(define seqrem
  (lambda (new old l)
    l))


(define rember
  (lambda (a l)
    ((insert-g seqrem) #f a l)))


(define atom-to-function
  (lambda (x)
    (cond ((eq? x '+) o+)
	  ((eq? x 'X) X)
	  (else ^))))


(define value
  (lambda (nexp)
    (cond ((atom? nexp) nexp)
	  (else ((atom-to-function (operator nexp))
		 (value (1st-sub-exp nexp))
		 (value (2nd-sub-exp nexp)))))))
		

(define multirember-f
  (lambda (test?)
    (lambda (a lat)
      (cond ((null? lat) '())
	    ((test? (car lat) a) ((multirember-f test?) a (cdr lat)))
	    (else (cons (car lat)
			((multirember-f test?) a (cdr lat))))))))


(define multirember-eq? (multirember-f eq?))


(define multiremberT
  (lambda (test? lat)
    (cond ((null? lat) '())
	  ((test? (car lat)) (multiremberT test? (cdr lat)))
	  (else (cons (car lat)
		      (multiremberT test? (cdr lat)))))))


(define eq?-tuna (eq?-c 'tuna))
