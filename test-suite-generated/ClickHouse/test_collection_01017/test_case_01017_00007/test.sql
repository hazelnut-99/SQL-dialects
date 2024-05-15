SELECT t1.*, t2.* FROM t1 RIGHT JOIN t2 ON t1.x = t2.x AND toUInt32(intDiv(t1.y,10)) = t2.x ORDER BY x, t2.y;
