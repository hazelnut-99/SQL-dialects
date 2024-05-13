SELECT id, avgWeighted(value1, weight), avgWeighted(value2, weight) FROM test_table_nullable_float_values GROUP BY id ORDER BY id;
