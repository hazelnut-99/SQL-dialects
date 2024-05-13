SELECT
    id,
    avgWeighted(value1, weight),
    avgWeighted(value2, weight),
    avgWeighted(value3, weight),
    avgWeighted(value1, weight_nullable),
    avgWeighted(value2, weight_nullable),
    avgWeighted(value3, weight_nullable)
FROM test_table_null_specifics GROUP BY id ORDER BY id;
