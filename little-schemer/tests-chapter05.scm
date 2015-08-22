(load "testing.scm")
(load "chapter05.scm")


(print-tests-results (new-test "rember* of cup ((coffee) cup ((tea) cup) (and (hick)) cup) is ((coffee) ((tea)) (and (hick)))"
			       (equal? '((coffee) ((tea)) (and (hick))) (rember* 'cup '((coffee) cup ((tea) cup) (and (hick)) cup))))

		     (new-test "rember* of sauce (((tomato sauce)) ((bean) sauce) (and ((flying)) sauce)) is (((tomato)) ((bean)) (and ((flying))))"
			       (equal? '(((tomato)) ((bean)) (and ((flying)))) (rember* 'sauce '(((tomato sauce)) ((bean) sauce) (and ((flying)) sauce)))))

		      (new-test "insertR* of roast chuck ((how much (wood)) could ((a (wood) chuck)) (((chuck))) (if (a) ((wood chuck))) could chuck wood) is ((how much (wood)) could ((a (wood) chuck roast)) (((chuck roast))) (if (a) ((wood chuck roast))) could chuck roast wood)"
			       (equal? '((how much (wood)) could ((a (wood) chuck roast)) (((chuck roast))) (if (a) ((wood chuck roast))) could chuck roast wood) (insertR*  'roast 'chuck '((how much (wood)) could ((a (wood) chuck)) (((chuck))) (if (a) ((wood chuck))) could chuck wood))))

		      (new-test "occur* of banana ((banana) (split ((((banana ice))) (cream (banana)) sherbet)) (banana) (bread) (banana brandy)) is 5"
				(= 5 (occur* 'banana '((banana) (split ((((banana ice))) (cream (banana)) sherbet)) (banana) (bread) (banana brandy)))))

		      (new-test "occur* of banana (() (split ((((ice))) (cream ()) sherbet)) () (bread) (brandy)) is 0"
				(= 0 (occur* 'banana '(() (split ((((ice))) (cream ()) sherbet)) () (bread) (brandy)))))

		      (new-test "subst* of orange banana ((banana) (split ((((banana ice))) (cream (banana)) sherbet)) (banana) (bread) (banana brandy)) is ((orange) (split ((((orange ice))) (cream (orange)) sherbet)) (orange) (bread) (orange brandy))"
				(equal? '((orange) (split ((((orange ice))) (cream (orange)) sherbet)) (orange) (bread) (orange brandy)) (subst* 'orange 'banana '((banana) (split ((((banana ice))) (cream (banana)) sherbet)) (banana) (bread) (banana brandy)))))

		      (new-test "insertL* of pecker chuck ((how much (wood)) could ((a (wood) chuck)) (( (chuck))) (if (a) ((wood chuck))) could chuck wood) is ((how much (wood)) could ((a (wood) pecker chuck)) (((pecker chuck))) (if (a) ((wood pecker chuck))) could pecker chuck wood)"
				(equal? '((how much (wood)) could ((a (wood) pecker chuck)) (((pecker chuck))) (if (a) ((wood pecker chuck))) could pecker chuck wood) (insertL* 'pecker 'chuck '((how much (wood)) could ((a (wood) chuck)) (( (chuck))) (if (a) ((wood chuck))) could chuck wood))))

		      (new-test "member* of chips ((potato) (chips ((with) fish) (chips))) is #t"
				(member* 'chips '((potato) (chips ((with) fish) (chips)))))

		      (new-test "member* of chips ((potato) (((with) fish) ())) is #f"
				(not (member* 'chips '((potato) (((with) fish) ())))))

		      (new-test "leftmost of ((potato) (chips ((with) fish) (chips))) is potato"
				(eq? 'potato (leftmost '((potato) (chips ((with) fish) (chips))))))

		      (new-test "eqlist? of (strawberry ice cream) (strawberry ice cream) is #t"
				(eqlist? '(strawberry ice cream) '(strawberry ice cream)))

		      (new-test "eqlist? of (strawberry ice cream) (strawberry cream ice) is #f"
				(not (eqlist? '(strawberry ice cream) '(strawberry cream ice))))

		      (new-test "eqlist? of (beef ((sausage)) (and (soda))) (beef ((salami)) (and (soda))) is  #f"
				(not (eqlist? '(beef ((sausage)) (and (soda))) '(beef ((salami)) (and (soda))))))

		      (new-test "eqlist? of (beef ((sausage)) (and (soda))) (beef ((sausage)) (and (soda))) is  #t"
				(eqlist? '(beef ((sausage)) (and (soda))) '(beef ((sausage)) (and (soda)))))

		      (new-test "rember of (a b c) (a b c (a b c) a b c) is (a b c a b c)"
				(equal? '(a b c a b c) (rember '(a b c) '(a b c (a b c) a b c))))
		      
		      )
