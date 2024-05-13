SELECT arrayMap(x -> x + arrayMap(x -> id + (SELECT id FROM test_table), [1])[1], [1,2,3]) FROM test_table;
