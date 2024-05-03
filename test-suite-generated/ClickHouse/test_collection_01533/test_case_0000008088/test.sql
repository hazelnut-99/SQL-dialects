SELECT max(id) OVER () AS aid
FROM
(
    SELECT materialize(toLowCardinality('aaaa')) AS id
    FROM numbers_mt(1000000)
)
FORMAT `Null`;
