SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a,
       a-b,
       a+b*2+c*3+d*4+e*5,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE d>e
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR coalesce(a,b,c,d,e)<>0;
