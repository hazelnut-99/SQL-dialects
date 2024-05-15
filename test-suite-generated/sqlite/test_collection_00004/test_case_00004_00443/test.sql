SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       c-d,
       c
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 3,1,2;
