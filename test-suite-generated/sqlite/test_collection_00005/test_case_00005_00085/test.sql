SELECT abs(b-c),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b,
       d,
       e,
       c,
       (a+b+c+d+e)/5
  FROM t1
 WHERE d>e
   AND (c<=d-2 OR c>=d+2)
   AND a>b;
