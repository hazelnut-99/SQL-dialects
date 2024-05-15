SELECT c-d,
       d-e,
       abs(a),
       a,
       (a+b+c+d+e)/5
  FROM t1
 WHERE a>b
    OR c>d
 ORDER BY 1,5,3,2,4;
