SELECT b,
       d,
       b-c,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR d>e
    OR d NOT BETWEEN 110 AND 150;
