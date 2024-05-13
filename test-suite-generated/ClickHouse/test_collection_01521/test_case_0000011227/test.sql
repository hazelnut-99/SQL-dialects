SELECT t1.*, t2.* FROM t1 FULL JOIN t2 ON t1.x = t2.x AND toUInt64(t1.x) = intDiv(t2.y,10) ORDER BY x, t2.y;
