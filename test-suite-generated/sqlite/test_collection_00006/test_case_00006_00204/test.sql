SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(a),
       a-b,
       a+b*2+c*3,
       d-e,
       b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 1,5,6,2,4,7,3;
