SELECT t1.*, t2.* FROM t1 RIGHT JOIN t2 ON t1.x = t2.x AND t1.y = t2.y ORDER BY x, t2.y;
