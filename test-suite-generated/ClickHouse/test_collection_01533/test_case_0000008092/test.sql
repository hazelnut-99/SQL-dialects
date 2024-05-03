SELECT
    NULL,
    id,
    max(id) OVER (Rows BETWEEN 10 PRECEDING AND UNBOUNDED FOLLOWING) AS aid
FROM
(
    SELECT
        NULL,
        max(id) OVER (),
        materialize(toLowCardinality('')) AS id
    FROM numbers_mt(0, 1)
)
FORMAT `Null`;
