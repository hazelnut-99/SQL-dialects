SELECT abs(a),
       a-b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b-c,
       a+b*2+c*3+d*4+e*5,
       c
  FROM t1;
