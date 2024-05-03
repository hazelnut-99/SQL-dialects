SELECT
    x,
    t,
    round(sum, 12),
    round(max, 12),
    round(count, 12),
    round(avg, 12)
FROM
(
    SELECT
        sin(number) AS x,
        number AS t,
        exponentialTimeDecayedSum(100)(x, t) OVER w AS sum,
        exponentialTimeDecayedMax(100)(x, t) OVER w AS max,
        exponentialTimeDecayedCount(100)(t) OVER w AS count,
        exponentialTimeDecayedAvg(100)(x, t) OVER w AS avg
    FROM numbers(1000000)
    WINDOW w AS (ORDER BY 1 ASC Rows BETWEEN 2 PRECEDING AND 2 FOLLOWING)
)
FORMAT `Null`;
