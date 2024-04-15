SELECT a,
       d-e,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR b>c
    OR c BETWEEN b-2 AND d+2;
