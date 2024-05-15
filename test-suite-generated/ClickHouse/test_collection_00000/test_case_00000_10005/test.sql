SELECT * FROM (SELECT 1 as key) AS t1 JOIN (SELECT 1 as key) t2 USING key ORDER BY key;
