SELECT count() == 3 FROM (SELECT 1 as key) t1 ANY RIGHT JOIN join_test_right ON t1.key = join_test_right.key;
