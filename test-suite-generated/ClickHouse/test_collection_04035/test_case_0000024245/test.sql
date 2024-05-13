SELECT
    a,
    b
FROM t1 AS tt1
INNER JOIN
(
    SELECT c
    FROM t2
) AS tt2 ON tt1.a = tt2.c
INNER JOIN
(
    SELECT f
    FROM t3
) AS tt3 ON tt1.b = tt3.f;
