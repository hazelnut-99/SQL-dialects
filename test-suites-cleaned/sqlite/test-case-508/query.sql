SELECT a+b*2+c*3+d*4+e*5,
       a,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       e,
       d
  FROM t1
 WHERE b>c
 ORDER BY 6,2,5,4,3,1;
