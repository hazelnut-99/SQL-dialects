SELECT
    nw,
    sum(WR) AS R,
    sumIf(WR, uniq_rows = 1) AS UNR
FROM
(
    SELECT
        uniq(nw) OVER (PARTITION BY ac) AS uniq_rows,
        AVG(wg) AS WR,
        ac,
        nw
    FROM window_funtion_threading
    GROUP BY ac, nw
)
GROUP BY nw
ORDER BY nw ASC, R DESC
LIMIT 10;
