SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       e,
       b-c
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND b>c
   AND c>d
 ORDER BY 2,1,3;
