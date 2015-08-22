(load "testing.scm")
(load "chapter04.scm")

(print-tests-results (new-test "o+ of 46 12) is 58"
			       (= 58 (o+ 46 12)))

		     (new-test "o- of 14 3) is 11"
			       (= 11 (o- 14 3)))

		     (new-test "addtup of (15 6 7 12 3) is 43"
			       (= 43 (addtup '(15 6 7 12 3))))

		     (new-test "X of 13 4 is 52"
			       (= 52 (X 13 4)))

		     (new-test "tup+ of (3 6 9 11 4) (8 5 2 0 7) is (11 11 11 11 11)"
			       (equal? '(11 11 11 11 11) (tup+ '(3 6 9 11 4) '(8 5 2 0 7))))

		     (new-test "tup+ of (3 7) (4 6 8 1) is (7 13 8 1)"
			       (equal? '(7 13 8 1) (tup+ '(3 7) '(4 6 8 1))))

		     (new-test "tup+ of (4 6 8 1) (3 7) is (7 13 8 1)"
			       (equal? '(7 13 8 1) (tup+ '(4 6 8 1) '(3 7))))

		     (new-test "o> of 12 133 is #f"
			       (not (o> 12 133)))

		     (new-test "o> of 120 11 is #t"
			       (o> 120 11))

		     (new-test "o> of 120 120 is #f"
			       (not (o> 120 120)))

		     (new-test "o< of 12 133 is #t"
			       (o< 12 133))

		     (new-test "o< of 120 11 is #f"
			       (not (o< 120 11)))

		     (new-test "o< of 120 120 is #f"
			       (not (o< 120 120)))
		     
		     (new-test "o= of 10 10 is #t"
			       (o= 10 10))

		     (new-test "o= of 10 11 is #f"
			       (not (o= 10 11)))

		     (new-test "^ of 1 1 is 1"
			       (= 1 (^ 1 1)))
		     
		     (new-test "^ of 2 3 is 8"
			       (= 8 (^ 2 3)))

		     (new-test "^ of 5 3 is 125"
			       (= 125 (^ 5 3)))

		     (new-test "div of 45 5 is 9"
			       (= 9 (div 45 5)))

		     (new-test "div of 15 4 is 3"
			       (= 3 (div 15 4)))
		 
		     (new-test "length of (hotdogs with mustard sauerkraut and pickles) is 6"
			       (= 6 (length '(hotdogs with mustard sauerkraut and pickles))))

		     (new-test "length of () is 0"
			       (= 0 (length '())))

		     (new-test "pick of 4 (lasagna spaghetti ravioli macaroni meatball) is macaroni"
			       (eq? 'macaroni (pick 4 '(lasagna spaghetti ravioli macaroni meatball))))

		     (new-test "rempick of 3 (hotdogs with hot mustard) is (hotdogs with mustard)"
			       (equal? '(hotdogs with mustard) (rempick 3 '(hotdogs with hot mustard))))

		     (new-test "no-nums of (5 pears 6 prunes 9 dates) is (pears prunes dates)"
			       (equal? '(pears prunes dates) (no-nums '(5 pears 6 prunes 9 dates))))

		     (new-test "all-nums of (5 pears 6 prunes 9 dates) is (5 6 9)"
			       (equal? '(5 6 9) (all-nums '(5 pears 6 prunes 9 dates))))

		     (new-test "eqan? of 1 1 is #t"
			       (eqan? 1 1))

		     (new-test "eqan? of 1 2 is #f"
			       (not (eqan? 1 2)))

		     (new-test "eqan? of a a is #t"
			       (eqan? 'a 'a))

		     (new-test "eqan? of a b is #f"
			       (not (eqan? 'a 'b)))

		     (new-test "eqan? of a 1 is #f"
			       (not (eqan? 'a 1)))

		     (new-test "eqan? of 1 a is #f"
			       (not (eqan? 1 'a)))

		     (new-test "occur of a (1 a b c 2 a 3 a) is 3"
			       (= 3 (occur 'a '(1 a b c 2 a 3 a))))
		     (new-test "occur of a (1 b b c 2 b 3 b) is 0"
			       (= 0 (occur 'a '(1 b b c 2 b 3 b))))

		     (new-test "one? of 1 is #t"
			       (one? 1))

		     (new-test "one? of 2 is #f"
			       (not (one? 2)))
		     )
