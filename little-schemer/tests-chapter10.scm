(load "testing.scm")
(load "chapter10.scm")

(print-tests-results (new-test "lookup-in-entry of entree ((appetizer entree beverage) (food tastes good)) eternity is tastes"
			       (equal? 'tastes (lookup-in-entry 'entree '((appetizer entree beverage) (food tastes good)) eternity)))

		     (new-test "lookup-in-table of entree (((entree dessert) (spaghetti spumoni)) ((appetizer entree beverage) (food tastes good))) is spaghetti"
			       (equal? 'spaghetti (lookup-in-table 'entree '(((entree dessert) (spaghetti spumoni)) ((appetizer entree beverage) (food tastes good))) eternity)))

		     (new-test "lookup-in-table of appetizer (((entree dessert) (spaghetti spumoni)) ((appetizer entree beverage) (food tastes good))) is food"
			       (equal? 'food (lookup-in-table 'appetizer '(((entree dessert) (spaghetti spumoni)) ((appetizer entree beverage) (food tastes good))) eternity)))

		     )
