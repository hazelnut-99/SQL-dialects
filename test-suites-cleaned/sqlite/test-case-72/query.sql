SELECT b-c,
       (a+b+c+d+e)/5,
       c-d,
       b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE d>e
   AND d NOT BETWEEN 110 AND 150
   AND (e>a AND e<b)
 ORDER BY 1,3,2,5,4,6;
