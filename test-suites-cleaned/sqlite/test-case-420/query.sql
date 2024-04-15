SELECT a,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b-c,
       a+b*2+c*3+d*4,
       c-d,
       d-e
  FROM t1
 WHERE c>d
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 7,3,6,5,2,1,4;
