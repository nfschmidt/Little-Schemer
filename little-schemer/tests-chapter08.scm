(load "testing.scm")
(load "chapter08.scm")

(print-tests-results (new-test "rember-f-old of = 5 (6 2 5 3) is (6 2 3)"
			       (equal? '(6 2 3) (rember-f-old = 5 '(6 2 5 3))))

		     (new-test "rember-f-old of eq? jelly (jelly beans are good) is (beans are good)"
			       (equal? '(beans are good) (rember-f-old eq? 'jelly '(jelly beans are good))))

		     (new-test "rember-f-old of equal? (pop corn) (lemonade (pop corn) and (cake)) is (lemonade and (cake))"
			       (equal? '(lemonade and (cake)) (rember-f-old equal? '(pop corn) '(lemonade and (cake)))))

		     (new-test "eq?-salad of salad is #t"
			       (eq?-salad 'salad))

		     (new-test "eq?-salad of tuna is #f"
			       (not (eq?-salad 'tuna)))

		     (new-test "rember-eq? of tuna (tuna salad is good) is (salad is good)"
			       (equal? '(salad is good) (rember-eq? 'tuna '(tuna salad is good))))

		     (new-test "(insertL-f eq?) of x b (a b c) is (a x b c)"
			       (equal? '(a x b c) ((insertL-f eq?) 'x 'b '(a b c))))

		     (new-test "(insertR-f eq?) of x b (a b c) is (a b x c)"
			       (equal? '(a b x c) ((insertR-f eq?) 'x 'b '(a b c))))

		     (new-test "insertL of x b (a b c) is (a x b c)"
			       (equal? '(a x b c) (insertL 'x 'b '(a b c))))

		     (new-test "insertR of x b (a b c) is (a b x c)"
			       (equal? '(a b x c) (insertR 'x 'b '(a b c))))

		     (new-test "subst of x b (a b c) is (a x c)"
			       (equal? '(a x c) (subst 'x 'b '(a b c))))

		     (new-test "rember of b (a b c) is (a c)"
			       (equal? '(a c) (rember 'b '(a c))))

		     (new-test "value of (+ 1 (^ 3 4)) is 82"
			       (= 82 (value '(+ 1 (^ 3 4)))))

		     (new-test "multirember-eq? of tuna (shrimp salad tuna salad and tuna) is (shrimp salad salad and)"
			       (equal? '(shrimp salad salad and) (multirember-eq? 'tuna '(shrimp salad tuna salad and tuna))))

		     (new-test "multiremberT of eq?-tuna (shrimp salad tuna salad and tuna) is (shrimp salad salad and)"
			       (equal? '(shrimp salad salad and) (multiremberT eq?-tuna '(shrimp salad tuna salad and tuna))))

		     )
