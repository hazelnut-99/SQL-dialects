SELECT * FROM test_table WHERE (k = 101) = toLowCardinality(toNullable(1));
