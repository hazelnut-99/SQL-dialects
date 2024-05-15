SELECT arrayMap(x -> x + arrayMap(y -> x + y + id, [1])[1], [1,2,3]) FROM test_table;
