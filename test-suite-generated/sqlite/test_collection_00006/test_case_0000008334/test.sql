SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3+d*4,
       e,
       a+b*2,
       a+b*2+c*3,
       d,
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 2,1,5,3,6,4,7;
