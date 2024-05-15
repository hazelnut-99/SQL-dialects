SELECT d-e,
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2,
       abs(b-c),
       c-d
  FROM t1
 WHERE (e>a AND e<b)
    OR a IS NULL
    OR c>d;
