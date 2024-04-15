SELECT (a+b+c+d+e)/5,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2,
       e,
       abs(b-c),
       c,
       a-b
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND c>d;
