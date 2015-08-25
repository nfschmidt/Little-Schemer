 
(define new-test
  (lambda (x y)
    (cons x (cons y '()))))


(define get-description car)


(define get-result
  (lambda (test)
    (car (cdr test))))


(define test-passed get-result)


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
  (syntax-rules (with-argument with-arguments without-arguments is)
    ((_ function (with-arguments arg ...) is result)
     (new-test (l->string '(function with arguments arg ... is result))
	       (equal? result (function arg ...))))

    ((_ function (with-argument arg) is result)
     (new-test (l->string '(function with argument arg is result))
	       (equal? result (function arg))))

    ((_ function (without-arguments) is result)
     (new-test (l->string '(function without arguments is result))
	       (equal? result (function))))))
