SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d,
       a+b*2+c*3+d*4,
       a+b*2+c*3
  FROM t1
 WHERE d>e
    OR c BETWEEN b-2 AND d+2
 ORDER BY 1,4,3,2;
