SELECT t4.*
FROM (SELECT t1.*, t2.a AS a1 FROM sj t1, sj t2 WHERE t1.b = t2.b) AS t3
JOIN sj t4 ON (t4.a = t3.a) WHERE t3.a1 = 42;
