(load "chapter02.scm")
 
(define member?-tests
  (lambda (member?-implementation)
    (cons (member?-implementation 'a '(a b c))
	  (cons (not (member?-implementation 'a '()))
		(cons (member?-implementation 'a '(b c a))
		      (cons (not (member?-implementation 'a '(b c (a))))
			    '()))))))

(define lat?-tests
  (lambda (lat?-implementation)
    (cons (lat?-implementation '())
	  (cons (lat?-implementation '(a b c))
		(cons (lat?-implementation '(a a b c))
		      (cons (not (lat?-implementation '(a b (c))))
			    (cons (not (lat?-implementation '(())))
				  '())))))))
		

(define member?-tests-results
  (cons (member?-tests member?)
	(cons (member?-tests member?-2)
	      (cons (member?-tests member?-3)
		    '()))))
