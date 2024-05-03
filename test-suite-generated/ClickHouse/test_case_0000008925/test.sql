WITH
    0.1 AS level,
    1 AS max_size
SELECT groupArray(max_size)(col)
FROM
    (
        SELECT quantile(level)(number) AS col
        FROM numbers(1000)
    );
