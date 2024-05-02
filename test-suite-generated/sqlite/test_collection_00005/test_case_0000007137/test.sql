SELECT d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0;
