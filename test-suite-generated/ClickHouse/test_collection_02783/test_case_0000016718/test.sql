SELECT id, max(value1), max(value2), max(value3), max(value4) FROM test_table_unsigned_values GROUP BY id ORDER BY id;
