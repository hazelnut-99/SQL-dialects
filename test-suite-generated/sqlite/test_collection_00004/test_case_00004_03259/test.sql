SELECT a-b,
       b-c,
       (a+b+c+d+e)/5,
       d-e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       abs(b-c),
       a+b*2+c*3+d*4
  FROM t1
 ORDER BY 3,4,5,1,2;
