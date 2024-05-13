SELECT key FROM ( SELECT key FROM t1 ) AS t1 JOIN ( SELECT key FROM t1 ) AS t2 ON t1.key = t2.key WHERE key;
