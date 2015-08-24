(load "chapter08.scm")

(define looking
  (lambda (a lat)
    (keep-looking a (pick 1 lat) lat)))


(define keep-looking
  (lambda (a sorn lat)
    (cond ((number? sorn) (keep-looking a (pick sorn lat) lat))
	  (else (eq? sorn a)))))


(define eternity
  (lambda (x)
    (eternity x)))


(define shift
  (lambda (p)
    (build (first (first p))
	   (build (second (first p))
		  (second p)))))


(define length*
  (lambda (l)
    (cond ((null? l) 0)
	  ((atom? (car l)) (add1 (length* (cdr l))))
	  (else (o+ (length* (car l))
		    (length* (cdr l)))))))


(define length0
  (lambda (l)
    (cond ((null? l) 0)
	  (else (add1 (eternity (cdr l)))))))


(define length<=1
  (lambda (l)
    (cond ((null? l) 0)
	  (else (add1 ((lambda (l)
			 (cond ((null? l) 0)
			       (else (add1 (eternity (cdr l)))))) (cdr l)))))))			     


(define length<=2
  (lambda (l)
    (cond ((null? l) 0)
	  (else (add1 ((lambda (l)
			(cond ((null? l) 0)
			      (else (add1 ((lambda (l)
					    (cond ((null? l) 0)
						  (else (add1 (eternity
							       (cdr l))))))
					   (cdr l))))))
		       (cdr l)))))))


(define length0
  ((lambda (length)
     (lambda (l)
       (cond ((null? l) 0)
	     (else (add1 (length (cdr l)))))))
   eternity))


(define length<=1
  ((lambda (length)
     (lambda (l)
       (cond ((null? l) 0)
	     (else (add1 (length (cdr l)))))))
   ((lambda (length)
      (lambda (l)
	(cond ((null? l) 0)
	      (else (add1 (length (cdr l)))))))
    eternity)))


(define length<=2
  ((lambda (length)
     (lambda (l)
       (cond ((null? l) 0)
	     (else (add1 (length (cdr l)))))))
   ((lambda (length)
      (lambda (l)
	(cond ((null? l) 0)
	      (else (add1 (length (cdr l)))))))
    ((lambda (length)
       (lambda (l)
	 (cond ((null? l) 0)
	       (else (add1 (length (cdr l)))))))
     eternity))))


(define length<=1
  ((lambda (mk-length)
     (mk-length (mk-length eternity)))
   (lambda (length)
     (lambda (l)
       (cond ((null? l) 0)
	     (else (add1 (length (cdr l)))))))))


(define length<=2
  ((lambda (mk-length)
     (mk-length (mk-length (mk-length eternity))))
   (lambda (length)
     (lambda (l)
       (cond ((null? l) 0)
	     (else (add1 (length (cdr l)))))))))


(define length<=3
  ((lambda (mk-length)
     (mk-length
      (mk-length
       (mk-length
	(mk-length eternity)))))
   (lambda (length)
     (lambda (l)
       (cond ((null? l) 0)
	     (else (add1 (length (cdr l)))))))))


(define length0
  ((lambda (mk-length)
     (mk-length mk-length))
   (lambda (mk-length)
     (lambda (l)
       (cond ((null? l) 0)
	     (else (add1 (mk-length (cdr l)))))))))


(define length<=1
  ((lambda (mk-length)
     (mk-length mk-length))
   (lambda (mk-length)
     (lambda (l)
       (cond ((null? l) 0)
	     (else (add1 ((mk-length eternity) (cdr l)))))))))


(define length
  ((lambda (mk-length)
     (mk-length mk-length))
   (lambda (mk-length)
     (lambda (l)
       (cond ((null? l) 0)
	     (else (add1 ((mk-length mk-length) (cdr l)))))))))


(define length
  ((lambda (le)
     ((lambda (mk-length)
	(mk-length mk-length))
      (lambda (mk-length)
	(le (lambda (x)
	   ((mk-length mk-length) x))))))
   (lambda (length)
     (lambda (l)
       (cond ((null? l) 0)
	     (else (add1 (length (cdr l)))))))))


(define Y
  (lambda (le)
     ((lambda (f) (f f))
      (lambda (f)
	(le (lambda (x) ((f f) x)))))))
	 
