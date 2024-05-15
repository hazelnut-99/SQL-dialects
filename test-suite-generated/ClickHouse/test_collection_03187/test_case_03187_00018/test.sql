SELECT * FROM test_table WHERE (((k NOT IN toLowCardinality(toNullable(101))) = toLowCardinality(toNullable(0))) OR ((k IN (toLowCardinality(100))) = toNullable(1)));
