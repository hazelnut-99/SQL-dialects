SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE (e>a AND e<b)
   AND d>e
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 1;
