SELECT count() FROM t1 JOIN t2 ON t1.x = t2.x WHERE t1.y % 2 == 0 AND t2.y % 2 == 0;
