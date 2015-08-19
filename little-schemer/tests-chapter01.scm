(load "testing.scm")
(load "chapter01.scm")


(print-tests-results (new-test "Harry is an atom"
			       (atom? 'Harry))

		     (new-test "(Harry had a heap of apples) is not an atom"
			       (not (atom? '(Harry had a heap of apples))))

		     (new-test "() is not an atom"
			       (not (atom? '())))

		     )
