SELECT e,
       d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d>e
    OR c BETWEEN b-2 AND d+2;
