SELECT * FROM t1 JOIN t2 ON t1.x <=> t2.x AND (t1.x = t1.y OR t1.x IS NULL AND t1.y IS NULL) ORDER BY t1.x;
