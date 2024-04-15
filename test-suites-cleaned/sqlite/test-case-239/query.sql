SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d,
       a+b*2+c*3
  FROM t1
 WHERE b>c
    OR c BETWEEN b-2 AND d+2
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 1,3,2;
