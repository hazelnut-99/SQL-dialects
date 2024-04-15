SELECT a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE b>c
    OR d NOT BETWEEN 110 AND 150
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 3,2,1;
