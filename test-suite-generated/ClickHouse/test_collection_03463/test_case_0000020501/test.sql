SELECT * APPLY (x -> toString(x)) APPLY length FROM test_table;
