SELECT id, max(value1), max(value2) FROM test_table_nullable_float_values GROUP BY id ORDER BY id;
