SELECT
    id,
    sumIf(value1, predicate_value),
    sumIf(value2, predicate_value),
    sumIf(value3, predicate_value)
FROM test_table_null_specifics GROUP BY id ORDER BY id;
