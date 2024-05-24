SELECT round(quantileDD(0.01, 0.75)(number), 2)
FROM
(
    SELECT number * 1e7 AS number
    FROM numbers(20)
);
