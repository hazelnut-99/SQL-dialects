SELECT
    id,
    avgWeightedIf(value1, weight, predicate_value),
    avgWeightedIf(value2, weight, predicate_value),
    avgWeightedIf(value3, weight, predicate_value)
FROM test_table_null_specifics GROUP BY id ORDER BY id;
