SELECT * APPLY (x -> toString(x)) APPLY (x -> length(x)) FROM test_table;
