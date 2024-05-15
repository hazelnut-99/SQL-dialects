SELECT
    id,
    sumIf(value1, predicate_value),
    sumIf(value2, predicate_value),
    sumIf(value3, predicate_value),
    sumIf(value4, predicate_value)
FROM test_table_signed_values GROUP BY id ORDER BY id;
