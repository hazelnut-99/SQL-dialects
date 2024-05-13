SELECT * FROM test_table WHERE ((k not in (101) = toNullable(0)) OR (k in (100) = toNullable(1))) = toNullable(1);
