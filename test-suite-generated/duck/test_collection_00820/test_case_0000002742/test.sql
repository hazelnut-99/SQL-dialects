SELECT a FROM test UNION SELECT * FROM test2 UNION SELECT * FROM test t1 ORDER BY test.a, test2.b, t1.a;
