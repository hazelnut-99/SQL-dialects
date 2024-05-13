SELECT *
FROM (
    SELECT
        a,
        max((d, b)).2 AS value
    FROM test
    GROUP BY rollup(a)
)
WHERE a <> '';
