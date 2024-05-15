SELECT
    a,
    value
FROM
(
    SELECT
        a,
        max((d, b)).2 AS value
    FROM test
    GROUP BY a
        WITH ROLLUP
    HAVING a != ''
)
WHERE a != '';
