SELECT id, max(value1), max(value2), max(value3) FROM test_table_null_specifics GROUP BY id ORDER BY id;
