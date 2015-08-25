

(define new-test
  (lambda (x y)
    (cons x (cons y '()))))


(define get-description
  (lambda (test)
    (car test)))


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


(define-syntax test
  (syntax-rules (with-value with-values without-values is)
    ((_ function (with-aruments args ...) is result)
     (new-test (->string '(function with aruments args ... is result))
	       (equal? result (function args ...))))

    ((_ function (with-argument arg) is result)
     (new-test (->string '(function with argument arg is result))
	       (equal? result (function arg))))

    ((_ function (without-arguments) is result)
     (new-test (->string '(function without arguments is result))
	       (equal? result (function))))))
