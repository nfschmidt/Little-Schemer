(load "testing.scm")
(load "chapter06.scm")

(print-tests-results (new-test "numbered? of (3 + (4 ^ 5)) is #t"
			       (numbered? '(3 + (4 ^ 5))))

		     (new-test "numbered? of (2 X sausage) is #f"
			       (not (numbered? '(2 x sausage))))

		     (new-test "value of 13 is 13"
			       (= 13 (value 13)))

		     (new-test "value of (1 + 3) is 4"
			       (= 4 (value '(1 + 3))))

		     (new-test "value of (1 + (3 ^ 4)) is 82"
			       (= 82 (value '(1 + (3 ^ 4)))))

		     (new-test "1st-sub-exp of (+ 1 2) is 1"
			       (= 1 (1st-sub-exp '(+ 1 2))))

		     (new-test "2nd-sub-exp of (+ 1 2) is 2"
			       (= 2 (2nd-sub-exp '(+ 1 2))))

		     (new-test "operator of (+ 1 2) is +"
			       (eq? '+ (operator '(+ 1 2))))
		     
		     (new-test "value-2 of 13 is 13"
			       (= 13 (value-2 13)))

		     (new-test "value-2 of (+ 1 3) is 4"
			       (= 4 (value-2 '(+ 1 3))))

		     (new-test "value-2 of (+ 1 (^ 3 4)) is 82"
			       (= 82 (value-2 '(+ 1 (^ 3 4)))))

		     (new-test "sero? of () is #t"
			       (sero? '()))

		     (new-test "sero? of (()) is #f"
			       (not (sero? '(()))))

		     (new-test "edd1 of () is (())"
			       (equal? '(()) (edd1 '())))

		     (new-test "edd1 of (()) is (() ())"
			       (equal? '(() ()) (edd1 '(()))))

		     (new-test "zub1 of (()) is ()"
			       (equal? '() (zub1 '(()))))

		     (new-test "zub1 of (() ()) is (())"
			       (equal? '(()) (zub1 '(() ()))))

		     (new-test "oo+ of (()) (() ()) is (() () ())"
			       (equal? '(() () ()) (oo+ '(()) '(() ()))))
		     
		     )
