(load "testing.scm")
(load "chapter03.scm")

(print-tests-results (new-test "(rember 'mint '(lamb chops and mint jelly)) is '(lamb chops and jelly)"
			       (equal? '(lamb chops and jelly) (rember 'mint '(lamb chops and mint jelly))))

		     (new-test "(rember 'toast '(bacon lettuce and tomato)) is '(bacon lettuce and tomato)"
			       (equal? '(bacon lettuce and tomato) (rember 'toast '(bacon lettuce and tomato))))

		     (new-test "(rember 'cup '(coffee cup tea cup and hick cup)) is '(coffee tea cup and hick cup)"
			       (equal? '(coffee tea cup and hick cup) (rember 'cup '(coffee cup tea cup and hick cup))))

		     (new-test "firsts of ((apple peach pumpkin) (plum pear cherry) (grape raisin pea) (bean carrot eggplant)) is (apple plum grape bean)"
			       (equal? '(apple plum grape bean) (firsts '((apple peach pumpkin) (plum pear cherry) (grape raisin pea) (bean carrot eggplant)))))

		     (new-test "firsts of the empty list is the empty list"
			       (equal? '() (firsts '())))

		     (new-test "firsts of (((five plums) four) (eleven green oranges) ((no) more)) is ((five plums) eleven (no))"
			       (equal? '((five plums) eleven (no)) (firsts '(((five plums) four) (eleven green oranges) ((no) more)))))

		     (new-test "insertR of topping fudge (ice cream with fudge for dessert) is (ice cream with fudge topping for dessert)"
			       (equal? '(ice cream with fudge topping for dessert) (insertR 'topping 'fudge '(ice cream with fudge for dessert))))

		     (new-test "insertL of topping fudge (ice cream with fudge for dessert) is (ice cream with topping fudge for dessert)"
			       (equal? '(ice cream with topping fudge for dessert) (insertL 'topping 'fudge '(ice cream with fudge for dessert))))

		     (new-test "subst of topping fudge (ice cream with fudge for dessert) is (ice cream with topping for dessert)"
			       (equal? '(ice cream with topping for dessert) (subst 'topping 'fudge '(ice cream with fudge for dessert))))

		     (new-test "subst2 of vanilla chocolate banana (banana ice cream with chocolate topping) is (vanilla ice cream with chocolate topping)"
			       (equal? '(vanilla ice cream with chocolate topping) (subst2 'vanilla 'chocolate 'banana '(banana ice cream with chocolate topping))))

		     (new-test "subst2 of vanilla chocolate lemon (banana ice cream with chocolate topping) is (banana ice cream with vanilla topping)"
			       (equal? '(banana ice cream with vanilla topping) (subst2 'vanilla 'chocolate 'lemon '(banana ice cream with chocolate topping))))


		     (new-test "multirember of cup (coffee cup tea cup and hick cup) is (coffee tea and hick)"
			       (equal? '(coffee tea and hick) (multirember 'cup '(coffee cup tea cup and hick cup))))

		     (new-test "multiinsertR of z a (a b c b a) is (a z b c b a z)"
			       (equal? '(a z b c b a z) (multiinsertR 'z 'a '(a b c b a))))

		     (new-test "multiinsertL of z a (a b c b a) is (z a b c b z a)"
			       (equal? '(z a b c b z a) (multiinsertL 'z 'a '(a b c b a))))

		     (new-test "multisubst of z a (a b c b a) is (z b c b z)"
			       (equal? '(z b c b z) (multisubst 'z 'a '(a b c b a))))


				     
		     )
