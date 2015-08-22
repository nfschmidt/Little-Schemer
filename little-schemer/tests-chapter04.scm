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

		     

		     )
