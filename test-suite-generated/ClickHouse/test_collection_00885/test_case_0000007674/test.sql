SELECT t1.a, t2.b, t3.b, t4.b FROM t1, t2, t3, t4
WHERE t1.a = t2.a AND t2.a = t3.a AND t3.a = t4.a
ORDER BY t2.b, t3.b, t4.b;
