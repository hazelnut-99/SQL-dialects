SELECT abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a
  FROM t1
 WHERE (e>a AND e<b)
    OR (e>c OR e<d);
