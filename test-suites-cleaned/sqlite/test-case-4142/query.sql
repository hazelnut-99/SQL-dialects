SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       abs(b-c),
       a+b*2+c*3
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR a>b
    OR (c<=d-2 OR c>=d+2);
