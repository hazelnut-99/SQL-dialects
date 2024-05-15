SELECT c-d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 2,1;
