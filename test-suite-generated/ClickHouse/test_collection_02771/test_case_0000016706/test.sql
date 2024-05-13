SELECT id, min(value1), min(value2), min(value3), min(value4) FROM test_table_signed_values GROUP BY id ORDER BY id;
