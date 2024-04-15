SELECT d,
       c-d,
       c,
       abs(a),
       a-b
  FROM t1
 WHERE b>c
   AND a>b
   AND c>d;
