SELECT c,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (a+b+c+d+e)/5,
       b-c,
       e,
       c-d
  FROM t1
 ORDER BY 5,4,6,2,1,3;
