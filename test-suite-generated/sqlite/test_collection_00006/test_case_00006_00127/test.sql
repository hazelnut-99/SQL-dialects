SELECT b-c,
       c,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR d NOT BETWEEN 110 AND 150
    OR b>c
 ORDER BY 3,5,4,2,1;
