SELECT x
FROM
(
    SELECT
        avg(0) AS c_7_c4572_1,
        max(-0) AS x
    FROM t7 AS ref_0
    GROUP BY ref_0.c_2_c46_1
)
WHERE x <= multiIf(true, 1, exp10(x) <= 1, 1, 1);
