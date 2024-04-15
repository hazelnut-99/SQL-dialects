SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       e,
       a+b*2+c*3+d*4+e*5,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR coalesce(a,b,c,d,e)<>0
    OR (a>b-2 AND a<b+2);
