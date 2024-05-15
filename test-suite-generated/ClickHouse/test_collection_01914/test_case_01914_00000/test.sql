SELECT id, min(value1), min(value2), min(value3) FROM test_table_null_specifics GROUP BY id ORDER BY id;
