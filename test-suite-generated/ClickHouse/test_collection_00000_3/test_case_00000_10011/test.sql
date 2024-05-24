SELECT * FROM (SELECT 'a' :: LowCardinality(Nullable(String)) AS key) AS t1 JOIN (SELECT 'a' :: String AS key) AS t2 ON t1.key = t2.key ORDER BY key;
