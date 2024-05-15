SELECT id, anyLast(value1), anyLast(value2) FROM test_table_nullable_float_values GROUP BY id ORDER BY id;
