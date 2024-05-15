SELECT id, any(value1), any(value2), any(value3), any(value4) FROM test_table_signed_values GROUP BY id ORDER BY id;
