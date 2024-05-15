SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (a+b+c+d+e)/5,
       a+b*2
  FROM t1
 WHERE d>e
   AND (a>b-2 AND a<b+2)
   AND a>b
 ORDER BY 3,2,1;
