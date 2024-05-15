SELECT a+b*2+c*3+d*4+e*5,
       a+b*2+c*3+d*4,
       e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a,
       (a+b+c+d+e)/5,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 ORDER BY 6,7,4,1,5,3,2;
