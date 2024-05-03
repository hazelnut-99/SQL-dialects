WITH 
    sum(if((a >= 0) AND (b != 100) AND (c = 0), 1, 0)) AS r1, 
    sum(if((a >= 0) AND (b != 100) AND (c > 220), 1, 0)) AS r2 
SELECT 
    (intDiv(toUInt32(rtime), 20) * 20) * 1000 AS t, 
    (r1 * 100) / (r1 + r2) AS m
FROM cluster('test_cluster_two_shards', currentDatabase(), test_alias)
WHERE day = '2022-01-01'
GROUP BY t
ORDER BY t ASC;
