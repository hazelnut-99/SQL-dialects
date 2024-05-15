SELECT abs(a),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d>e
    OR b>c
    OR (a>b-2 AND a<b+2)
 ORDER BY 1,5,6,4,2,3;
