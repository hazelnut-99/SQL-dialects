SELECT *
FROM
(
    SELECT
        n,
        finalizeAggregation(s)
    FROM test_00808_push_down_with_finalizeAggregation
)
WHERE (n >= 2) AND (n <= 5)
ORDER BY n;
