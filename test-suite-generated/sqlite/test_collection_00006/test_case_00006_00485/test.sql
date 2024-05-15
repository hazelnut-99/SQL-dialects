SELECT a+b*2+c*3+d*4,
       abs(b-c),
       a+b*2+c*3,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       abs(a)
  FROM t1
 WHERE d>e
 ORDER BY 3,4,1,5,2;
