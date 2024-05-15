SELECT arrayMap(x -> x + arrayMap(x -> id, [1])[1], [1,2,3]) FROM test_table;
