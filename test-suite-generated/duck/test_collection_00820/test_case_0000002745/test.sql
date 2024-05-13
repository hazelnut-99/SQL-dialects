SELECT t1.a, t2.a FROM test t1, test t2 WHERE t1.a=t2.a UNION SELECT b, b - 1 FROM test2 ORDER BY t1.a, t2.a, test2.b;
