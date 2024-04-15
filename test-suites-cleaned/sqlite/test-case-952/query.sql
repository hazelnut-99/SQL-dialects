SELECT d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (a+b+c+d+e)/5,
       b,
       a,
       a+b*2,
       d-e
  FROM t1
 ORDER BY 5,1,6,7,2,3,4;
