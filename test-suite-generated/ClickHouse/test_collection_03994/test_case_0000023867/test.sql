SELECT quantileGKMerge(100, 0.5)(x)
FROM
(
    SELECT quantileGKState(100, 0.5)(number + 1) AS x
    FROM numbers(49999)
);
