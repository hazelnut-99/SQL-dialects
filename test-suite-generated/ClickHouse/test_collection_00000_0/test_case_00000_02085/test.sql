SELECT quantileExactWeighted(0.5)(x, y) FROM
(
    SELECT CAST(NULL AS Nullable(UInt8)) AS x, 1 AS y
    UNION ALL
    SELECT CAST(2 AS Nullable(UInt8)) AS x, 1 AS y
);
