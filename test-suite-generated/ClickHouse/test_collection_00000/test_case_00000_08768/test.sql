SELECT
    x,
    t,
    round(max, 12)
FROM
(
    SELECT
        d[1] AS x,
        d[2] AS t,
        exponentialTimeDecayedMax(100)(-x, t) OVER w AS max
    FROM
    (
        SELECT [[2, 1], [1, 2], [10, 3], [4, 4], [5, 5], [1, 6], [10, 7], [10, 8], [10, 9], [9.81, 10], [9.9, 11]] AS d
    )
    ARRAY JOIN d
    WINDOW w AS (ORDER BY 1 ASC Rows BETWEEN 2 PRECEDING AND 2 FOLLOWING)
);
