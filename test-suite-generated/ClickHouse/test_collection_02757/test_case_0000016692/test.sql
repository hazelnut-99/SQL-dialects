SELECT id, anyLast(value1), anyLast(value2), anyLast(value3), anyLast(value4) FROM test_table_signed_values GROUP BY id ORDER BY id;
