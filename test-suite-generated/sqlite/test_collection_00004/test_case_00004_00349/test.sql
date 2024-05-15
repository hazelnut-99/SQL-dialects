SELECT a+b*2+c*3+d*4+e*5,
       b-c,
       a,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c-d,
       d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (e>c OR e<d)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 4,2,6,3,5,7,1;
