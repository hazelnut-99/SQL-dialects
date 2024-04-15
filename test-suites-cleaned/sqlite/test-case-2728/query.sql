SELECT abs(b-c),
       b
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR c BETWEEN b-2 AND d+2;
