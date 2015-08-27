 
(define new-test
  (lambda (x y)
    (cons x (cons y '()))))


(define get-description car)


(define get-result
  (lambda (test)
    (car (cdr test))))


(define test-passed get-result)


(define new-tests-suite list)


(define test->string
  (lambda (test)
    (string-append (get-description test)
		   " ................... "
		   (if (test-passed test)
		       " OK"
		       " FAILED")
		   "\n")))


(define print-test-result
  (lambda (test)
    (display (test->string test))))


(define print-tests-results
  (lambda tests
    (for-each print-test-result tests)))


(define print-tests-suite-results
  (lambda (tests-suite)
    (display (string-append "\n\n*********** TEST SUITE: " (car tests-suite) "\n"))
    (for-each print-test-result (cdr tests-suite))))
     

(define ->string
  (lambda (x)
    (call-with-output-string (lambda (out)
			       (display x out)))))


(define l->string
  (lambda (l)
    (cond ((null? l) "")
	  (else (string-append (->string (car l))
			       " "
			       (l->string (cdr l)))))))


(define-syntax test
  (syntax-rules (of of-nothing is)
    ((_ function (of arg* ...) is result)
     (new-test (l->string '(function of arg* ... is result))
	       (equal? result (function arg* ...))))

    ((_ function of-nothing is result)
     (new-test (l->string '(function of nothing is result))
	       (equal? result (function))))))


(define-syntax define-tests-suite
  (syntax-rules ()
    ((_ name tests* ...)
     (define name
       (new-tests-suite (symbol->string 'name) tests* ...)))))

