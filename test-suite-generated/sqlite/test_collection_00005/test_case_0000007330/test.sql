SELECT a,
       b-c,
       c-d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       e
  FROM t1
 WHERE d>e
   AND c BETWEEN b-2 AND d+2
   AND a>b;
