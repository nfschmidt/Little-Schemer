(load "testing.scm")
(load "chapter04.scm")

(print-tests-results (new-test "(o+ 46 12) is 58"
			       (= 58 (o+ 46 12)))

		     (new-test "(o- 14 3) is 11"
			       (= 11 (o- 14 3)))
		     )
