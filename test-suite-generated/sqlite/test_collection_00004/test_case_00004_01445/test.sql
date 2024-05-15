SELECT d,
       c-d,
       c,
       abs(a),
       a-b
  FROM t1
 WHERE b>c
   AND c>d
   AND a>b
 ORDER BY 2,1,5;
