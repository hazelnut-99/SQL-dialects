SELECT 5 == count() FROM (SELECT number as a from numbers(5)) as t1 LEFT JOIN (SELECT number as b from numbers(5) WHERE number > 100) as t2 ON t1.a = t2.b ORDER BY 1;
