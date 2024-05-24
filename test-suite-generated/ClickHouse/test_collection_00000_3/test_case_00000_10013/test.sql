SELECT * FROM (SELECT 'a' :: LowCardinality(String) AS key) AS t1 JOIN (SELECT 'a' :: LowCardinality(String) AS key) AS t2 ON t1.key = t2.key ORDER BY key;
