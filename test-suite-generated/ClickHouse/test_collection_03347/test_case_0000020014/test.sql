SELECT * FROM (SELECT 1 as key) AS t1 JOIN (SELECT 1 as key) t2 ON t1.key = t2.key ORDER BY key;
