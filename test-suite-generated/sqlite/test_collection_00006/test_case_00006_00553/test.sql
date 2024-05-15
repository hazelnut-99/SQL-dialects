SELECT d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a-b,
       c-d,
       (a+b+c+d+e)/5,
       b-c
  FROM t1
 ORDER BY 3,1,4,2,6,5;
