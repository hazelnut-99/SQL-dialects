SELECT a+b*2+c*3,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 1,5,3,2,4;
