SELECT id, min(value1), min(value2) FROM test_table_float_values GROUP BY id ORDER BY id;
