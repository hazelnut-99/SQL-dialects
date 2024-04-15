SELECT d,
       abs(b-c),
       a-b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3,
       e,
       b
  FROM t1
 ORDER BY 2,6,3,5,7,4,1;
