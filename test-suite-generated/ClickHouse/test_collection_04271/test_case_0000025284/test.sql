SELECT key FROM ( SELECT 1 AS key ) AS t1 JOIN ( SELECT 1 AS key ) AS t2 ON t1.key = t2.key WHERE key;
