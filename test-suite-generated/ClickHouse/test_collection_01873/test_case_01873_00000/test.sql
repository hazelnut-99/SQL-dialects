SELECT id, sum(value1), sum(value2), sum(value3) FROM test_table_null_specifics GROUP BY id ORDER BY id;
