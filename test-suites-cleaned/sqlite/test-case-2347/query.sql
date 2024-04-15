SELECT a+b*2+c*3,
       b-c,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (a+b+c+d+e)/5,
       c-d,
       d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 1,2,5,3;
