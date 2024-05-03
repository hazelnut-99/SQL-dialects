SELECT max(id) OVER (PARTITION BY id) AS id
FROM
(
    SELECT materialize('aaaa') AS id
    FROM numbers_mt(1000000)
)
FORMAT `Null`;
