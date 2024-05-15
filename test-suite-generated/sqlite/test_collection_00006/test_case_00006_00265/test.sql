SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       e,
       abs(a),
       c-d,
       a,
       b-c
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR (c<=d-2 OR c>=d+2)
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 7,1,5,3,4,6,2;
