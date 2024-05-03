SELECT
    x,
    min(x) AS lower,
    max(x) + 1 AS upper,
    upper - lower AS range
FROM
(
    SELECT arrayJoin([1, 2]) AS x
) 
GROUP BY x WITH ROLLUP;
