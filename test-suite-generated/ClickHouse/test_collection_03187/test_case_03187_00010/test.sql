SELECT * FROM test_table WHERE (NOT ((k not in (100) = 0) OR (k in (100) = 1))) = 0;
