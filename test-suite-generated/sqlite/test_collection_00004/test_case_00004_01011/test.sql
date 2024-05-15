SELECT (a+b+c+d+e)/5,
       c-d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND c>d
 ORDER BY 3,2,1;
