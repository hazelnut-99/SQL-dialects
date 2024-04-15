SELECT b-c,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(a),
       c-d,
       d
  FROM t1
 WHERE b>c
    OR d NOT BETWEEN 110 AND 150
    OR (e>c OR e<d)
 ORDER BY 4,6,5,1,3,7,2;
