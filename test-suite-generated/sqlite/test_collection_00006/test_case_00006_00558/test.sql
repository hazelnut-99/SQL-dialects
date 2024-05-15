SELECT c,
       e,
       b,
       abs(a),
       d,
       a
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR c BETWEEN b-2 AND d+2
 ORDER BY 5,3,2,1,4,6;
