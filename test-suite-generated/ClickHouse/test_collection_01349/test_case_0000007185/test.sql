SELECT
    sum(total_count) AS total, 
    domain
FROM
(
    SELECT
        COUNT(*) AS total_count, 
        SUM(if(domain = 'facebook.com', 1, 0)) AS facebookHits, 
        domain
    FROM clicks 
    GROUP BY domain
UNION ALL 
    SELECT
        COUNT(*) AS total_count, 
        toUInt64(0) AS facebookHits, 
        domain
    FROM transactions 
    GROUP BY domain
) 
GROUP BY domain
ORDER BY domain
LIMIT 10
FORMAT JSONEachRow;
