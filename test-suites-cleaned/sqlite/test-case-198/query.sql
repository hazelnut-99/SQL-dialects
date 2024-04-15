SELECT a+b*2,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 1,3,2,4;
