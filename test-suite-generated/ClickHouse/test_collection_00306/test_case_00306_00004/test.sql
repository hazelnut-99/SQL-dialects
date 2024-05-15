SELECT count(*) FROM test_array_ops where arr = CAST([10, -20] AS Array(Nullable(Int64)));
