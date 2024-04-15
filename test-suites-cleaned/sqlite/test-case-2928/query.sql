SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(a),
       a+b*2+c*3,
       b-c,
       (a+b+c+d+e)/5,
       abs(b-c),
       c
  FROM t1
 WHERE a>b
   AND (a>b-2 AND a<b+2)
   AND d NOT BETWEEN 110 AND 150;
