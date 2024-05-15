SELECT e,
       d-e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a-b,
       b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE d>e
    OR c BETWEEN b-2 AND d+2
    OR (e>a AND e<b);
