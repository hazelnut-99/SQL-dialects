SELECT a+b*2,
       c,
       abs(a),
       b,
       d-e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR c>d
 ORDER BY 5,2,3,1,4;
