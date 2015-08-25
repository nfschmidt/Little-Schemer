(load "testing.scm")
(load "chapter01.scm")


(print-tests-results

 (test atom? (with-argument 'atom) is #t)

 (test atom? (with-argument 'turkey) is #t)
 
 (test atom? (with-argument 1492) is #t)

 (test atom? (with-argument 'u) is #t)

 (test atom? (with-argument '*abc$) is #t)

 (test list? (with-argument '(atom)) is #t)

 (test list? (with-argument '(atom turkey or)) is #t)
 
 (test list? (with-argument '((atom turkey) or)) is #t)

 (test list? (with-argument '(how are you doing so far)) is #t)

 (test list? (with-argument '(((how) are) ((you) (doing so)) far)) is #t)

 (test list? (with-argument '()) is  #t)

 (test atom? (with-argument '()) is  #f)

 (test list? (with-argument '(() () () ())) is #t)

 (test car (with-argument '(a b c)) is 'a)

 (test car (with-argument '((a b c) x y z)) is '(a b c))

 (test car (with-argument '(((hotdogs)) (and) (pickle) relish)) is '((hotdogs)))

 (test cdr (with-argument '(a b c)) is '(b c))

 (test cdr (with-argument '((a b c) x y z)) is '(x y z))

 (test cdr (with-argument '(hamburger)) is '())

 (test cdr (with-argument '((x) t r)) is '(t r))
 
 )
