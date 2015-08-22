(load "testing.scm")
(load "chapter07.scm")

(print-tests-results (new-test "set? of (apple peaches apple plum) is #f"
			       (not (set? '(apple peaches apple plum))))

		     (new-test "set? of (apple peaches pears plum) is #t"
			       (set? '(apple peaches pears plum)))

		     (new-test "set? of () is #t"
			       (set? '()))

		     (new-test "makeset of (apple peach pear peach plum apple lemon peach) is (apple peach pear plum lemon)"
			       (equal? '(apple peach pear plum lemon) (makeset '(apple peach pear peach plum apple lemon peach))))

		     (new-test "subset? of (5 chicken wings) (5 hamburgers 2 pieces fried chicken and light duckling wings) is #t"
			       (subset? '(5 chicken wings) '(5 hamburgers 2 pieces fried chicken and light duckling wings)))

		     (new-test "subset? of (4 pounds of horseradish) (four pounds chicken and 5 ounces horseradish) is #f"
			       (not (subset? '(4 pounds of horseradish) '(four pounds chicken and 5 ounces horseradish))))

		     (new-test "eqset? of (6 large chickens with wings) (6 chickens with large wings) is #t"
			       (eqset? '(6 large chickens with wings) '(6 chickens with large wings)))

		     (new-test "eqset? of (6 large chickens with wings) (six chickens with large wings) is #f"
			       (not (eqset? '(6 large chickens with wings) '(six chickens with large wings))))

		     (new-test "intersect? of (stewed tomatoes and macaroni) (macaroni and cheese) is #t"
			       (intersect? '(stewed tomatoes and macaroni) '(macaroni and cheese)))

		     (new-test "intersect? of (stewed tomatoes and macaroni) (ice cream sandwich) is #t"
			       (not (intersect? '(stewed tomatoes and macaroni) '(ice cream sandwich))))

		     (new-test "intersect of (stewed tomatoes and macaroni) (macaroni and cheese) is (and macaroni)"
			       (equal? '(and macaroni) (intersect '(stewed tomatoes and macaroni) '(macaroni and cheese))))

		     (new-test "union of (stewed tomatoes and macaroni casserole) (macaroni and cheese) is (stewed tomatoes casserole macaroni and cheese)"
			       (equal? '(stewed tomatoes casserole macaroni and cheese) (union '(stewed tomatoes and macaroni casserole) '(macaroni and cheese))))

		     (new-test "intersectall of ((a b c) (c a d e) (e f g h a b)) is (a)"
			       (equal? '(a) (intersectall '((a b c) (c a d e) (e f g h a b)))))

		     (new-test "intersectall of ((6 pears and) (3 peaches and 6 peppers) (8 pears and 6 plums) (and 6 prunes with some apples)) is (6 and)"
			       (equal? '(6 and) (intersectall '((6 pears and) (3 peaches and 6 peppers) (8 pears and 6 plums) (and 6 prunes with some apples)))))

		     (new-test "a-pair? of (pear pear) is #t"
			       (a-pair? '(pear pear)))
		     
		     (new-test "a-pair? of (3 7) is #t"
			       (a-pair? '(3 7)))

		     (new-test "a-pair? of ((2) (pair)) is #t"
			       (a-pair? '((2) (pair))))

		     (new-test "a-pair? of (full (house)) is #t"
			       (a-pair? '(full (house))))

		     (new-test "a-pair? of (1 2 3) is #f"
			       (not (a-pair? '(1 2 3))))

		     (new-test "a-pair? of a is #f"
			       (not (a-pair? 'a)))

		     (new-test "first of (a b) is a"
			       (eq? 'a (first '(a b))))

		     (new-test "second of (a b) is b"
			       (eq? 'b (second '(a b))))

		     (new-test "build of a b is (a b)"
			       (equal? '(a b) (build 'a 'b)))

		     (new-test "build of (a) (b c) is ((a) (b c))"
			       (equal? '((a) (b c)) (build '(a) '(b c))))

		     (new-test "third of (a b c) is c"
			       (eq? 'c (third '(a b c))))

		     (new-test "fun? of ((4 3) (4 2) (7 6) (6 2) (3 4)) is #f"
			       (not (fun? '((4 3) (4 2) (7 6) (6 2) (3 4)))))

		     (new-test "fun? of ((8 3) (4 2) (7 6) (6 2) (3 4)) is #t"
			       (fun? '((8 3) (4 2) (7 6) (6 2) (3 4))))

		     (new-test "revrel of ((8 a) (pumpkin pie) (got sick)) is ((a 8) (pie pumpkin) (sick got))"
			       (equal? '((a 8) (pie pumpkin) (sick got)) (revrel '((8 a) (pumpkin pie) (got sick)))))

		     (new-test "revpair of (a b) is (b a)"
			       (equal? '(b a) (revpair '(a b))))

		     (new-test "seconds of ((a b) (c d) (e f)) is (b d f)"
			       (equal? '(b d f) (seconds '((a b) (c d) (e f)))))

		     
		     (new-test "fullfun? of ((8 3) (4 2) (7 6) (6 2) (3 4)) is #f"
			       (not (fullfun? '((8 3) (4 2) (7 6) (6 2) (3 4))))) 

		     (new-test "fullfun? of ((8 3) (4 8) (7 6) (6 2) (3 4)) is #f"
			       (fullfun? '((8 3) (4 8) (7 6) (6 2) (3 4))))
		     
		     )
