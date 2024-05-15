SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b-c,
       a+b*2+c*3+d*4,
       d-e,
       a+b*2+c*3
  FROM t1
 WHERE a>b
   AND c BETWEEN b-2 AND d+2;
