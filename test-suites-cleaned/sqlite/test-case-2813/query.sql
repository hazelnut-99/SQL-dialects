SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b-c,
       e,
       d-e,
       c-d,
       a
  FROM t1
 WHERE a>b
   AND d>e
   AND (e>a AND e<b)
 ORDER BY 6,5;
