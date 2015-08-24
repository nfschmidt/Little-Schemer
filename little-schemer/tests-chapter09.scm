(load "testing.scm")
(load "chapter09.scm")

(print-tests-results (new-test "looking of caviar (6 2 4 caviar 5 7 3) is #t"
			       (looking 'caviar '(6 2 4 caviar 5 7 3)))

		     (new-test "looking of caviar (6 2 grits caviar 5 7 3) is #f"
			       (not (looking 'caviar '(6 2 grits caviar 5 7 3))))

		     (new-test "shift of ((a b) c) is ((a) (b c))"
			       (equal? '(a (b c)) (shift '((a b) c))))

		     (new-test "shift of ((a b) (c d)) is (a (b (c d)))"
			       (equal? '(a (b (c d))) (shift '((a b) (c d)))))

		     (new-test "length* of (a b (c d (e)) f (g)) is 7"
			       (= 7 (length* '(a b (c d (e)) f (g)))))
		     )
