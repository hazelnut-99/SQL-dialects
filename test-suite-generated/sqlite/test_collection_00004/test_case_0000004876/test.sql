SELECT c,
       a,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3+d*4,
       a+b*2,
       (a+b+c+d+e)/5,
       e
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND b>c
 ORDER BY 2,3,7,4,1;
