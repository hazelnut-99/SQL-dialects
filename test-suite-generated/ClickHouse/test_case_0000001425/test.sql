SELECT
    count(),
    countOrNull(),
    sum(x),
    sumOrNull(x)
FROM
(
    SELECT number AS x
    FROM numbers(10)
    WHERE number > 10
);
