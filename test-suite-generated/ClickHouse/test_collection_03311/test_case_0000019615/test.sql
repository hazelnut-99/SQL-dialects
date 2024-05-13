SELECT * FROM (SELECT k as key FROM t2) as t2 INNER JOIN rdb ON rdb.key == t2.key ORDER BY key;
