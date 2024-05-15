SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       b-c,
       c
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 2,5,1,7,3,6,4;
