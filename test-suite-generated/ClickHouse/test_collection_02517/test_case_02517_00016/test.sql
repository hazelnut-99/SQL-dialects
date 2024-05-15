SELECT 5 AS constant, arrayMap(x -> x + arrayMap(y -> x + y + id + constant, [1])[1], [1,2,3]) FROM test_table;
