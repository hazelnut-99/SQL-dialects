SELECT
    id,
    avgWeighted(value1, weight),
    avgWeighted(value2, weight),
    avgWeighted(value3, weight),
    avgWeighted(value4, weight)
FROM test_table_nullable_unsigned_values GROUP BY id ORDER BY id;
