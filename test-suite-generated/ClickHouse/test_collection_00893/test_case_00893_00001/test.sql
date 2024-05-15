SELECT a, toTypeName(x = 2), toTypeName(x) FROM test_prewhere_column_type where (x = 2) AS y;
