(load "chapter02.scm")
(load "testing.scm")


(print-tests-results (new-test "(Jack Sprat could eat no chicken fat) is a lat"
			       (lat? '(Jack Sprat could eat no chicken fat)))

		     (new-test "((Jack) Sprat could eat no chicken fat) is not a lat"
			       (not (lat? '((Jack) Sprat could eat no chicken fat))))

		     (new-test "The empty list is a lat"
			       (lat? '()))

		     (new-test "tea is member of (coffe tea or milk)"
			       (member? 'tea '(coffe tea or milk)))

		     (new-test "poached is not member of (fried eggs and scambled eggs)"
			       (not (member? 'poached '(fried eggs and scambled eggs))))
		     )



			       
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
