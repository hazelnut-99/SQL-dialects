SELECT id, anyLast(value1), anyLast(value2), anyLast(value3) FROM test_table_null_specifics GROUP BY id ORDER BY id;
