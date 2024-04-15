SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c,
       (a+b+c+d+e)/5,
       a+b*2,
       c-d
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND e+d BETWEEN a+b-10 AND c+130
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 5,3,2,4,1;
