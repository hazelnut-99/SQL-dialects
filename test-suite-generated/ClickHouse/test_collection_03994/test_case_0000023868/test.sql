SELECT quantilesGKMerge(100, 0.5, 0.9, 0.99)(x)
FROM
(
    SELECT quantilesGKState(100, 0.5, 0.9, 0.99)(number + 1) AS x
    FROM numbers(49999)
);
