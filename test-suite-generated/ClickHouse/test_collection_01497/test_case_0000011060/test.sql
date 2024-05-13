SELECT
    t1.*,
    t2.*,
    123 AS constant,
    isConstant('world')
FROM
(
    SELECT
        arrayJoin([1, 2]) AS k,
        321
) AS t1
LEFT JOIN
(
    SELECT
        arrayJoin([1, 3]) AS k,
        123
) AS t2 ON t1.k = t2.k ORDER BY t1.k;
