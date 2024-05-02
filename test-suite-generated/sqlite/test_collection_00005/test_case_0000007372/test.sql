SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       e,
       b-c,
       d
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR d NOT BETWEEN 110 AND 150;
