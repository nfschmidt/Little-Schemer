(load "testing.scm")
(load "chapter01.scm")


(define-tests-suite chapter01

  (test atom? (of 'atom) is #t)

  (test atom? (of 'turkey) is #t)
  
  (test atom? (of 1492) is #t)

  (test atom? (of 'u) is #t)

  (test atom? (of '*abc$) is #t)

  (test list? (of '(atom)) is #t)

  (test list? (of '(atom turkey or)) is #t)
  
  (test list? (of '((atom turkey) or)) is #t)

  (test list? (of '(how are you doing so far)) is #t)

  (test list? (of '(((how) are) ((you) (doing so)) far)) is #t)

  (test list? (of '()) is  #t)

  (test atom? (of '()) is  #f)

  (test list? (of '(() () () ())) is #t)

  (test car (of '(a b c)) is 'a)

  (test car (of '((a b c) x y z)) is '(a b c))

  (test car (of '(((hotdogs)) (and) (pickle) relish)) is '((hotdogs)))

  (test cdr (of '(a b c)) is '(b c))

  (test cdr (of '((a b c) x y z)) is '(x y z))

  (test cdr (of '(hamburger)) is '())

  (test cdr (of '((x) t r)) is '(t r))
  
  )


(print-tests-suite-results chapter01)
