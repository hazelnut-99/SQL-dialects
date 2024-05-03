SELECT
    count(),
    countOrNull(),
    sum(x),
    sumOrNull(x)
FROM
(
    SELECT 1 AS x
    WHERE 0
);
