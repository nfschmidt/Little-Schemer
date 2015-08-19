
(define new-pair
  (lambda (x y)
    (cons x (cons y '()))))

 
(define new-test
  (lambda (description result)
    (new-pair description result)))


(define get-description
  (lambda (test)
    (car test)))


(define get-result
  (lambda (test)
    (car (cdr test))))


(define test-passed
  (lambda (test)
    (get-result test)))


(define print-test-result
  (lambda (test)
    (display (string-append (get-description test)
			    " ................... "
			    (if (test-passed test)
				" OK"
				" FAILED")
			    "\n"))))


(define print-tests-results
  (lambda tests
    (for-each print-test-result tests)))


