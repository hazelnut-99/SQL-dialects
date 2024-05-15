SELECT e,
       a+b*2+c*3+d*4+e*5,
       d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE b>c
   AND d NOT BETWEEN 110 AND 150
   AND coalesce(a,b,c,d,e)<>0;
