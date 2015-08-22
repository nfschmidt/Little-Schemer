(load "chapter05.scm")

(define numbered?
  (lambda (aexp)
    (cond ((atom? aexp) (number? aexp))
	  (else (and (numbered? (car aexp))
		     (numbered? (car (cdr (cdr aexp)))))))))


(define value
  (lambda (nexp)
    (cond ((atom? nexp) nexp)
	  ((eq? '+ (car (cdr nexp))) (o+ (value (car nexp))
					 (value (car (cdr (cdr nexp))))))
	  ((eq? 'x (car (cdr nexp))) (X (value (car nexp))
					(value (car (cdr (cdr nexp))))))
	  (else (^ (value (car nexp))
		   (value (car (cdr (cdr nexp)))))))))


(define 1st-sub-exp
  (lambda (nexp)
    (car (cdr nexp))))


(define 2nd-sub-exp
  (lambda (nexp)
    (car (cdr (cdr nexp)))))


(define operator
  (lambda (nexp)
    (car nexp)))


(define value-2
  (lambda (nexp)
    (cond ((atom? nexp) nexp)
	  ((eq? '+ (operator nexp)) (o+ (value-2 (1st-sub-exp nexp))
					(value-2 (2nd-sub-exp nexp))))
	  ((eq? 'x (operator nexp)) (X (value-2 (1st-sub-exp nexp))
				       (value-2 (2nd-sub-exp nexp))))
	  (else (^ (value-2 (1st-sub-exp nexp))
		   (value-2 (2nd-sub-exp nexp)))))))


(define sero?
  (lambda (n)
    (null? n)))


(define edd1
  (lambda (n)
    (cons '() n)))


(define zub1
  (lambda (n)
    (cdr n)))


(define oo+
  (lambda (n1 n2)
    (cond ((sero? n2) n1)
	  (else (edd1 (oo+ n1 (zub1 n2)))))))



