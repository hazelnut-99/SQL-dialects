SELECT id AS id_alias, arrayMap(x -> x + arrayMap(y -> x + y + id_alias, [1])[1], [1,2,3]) FROM test_table;
