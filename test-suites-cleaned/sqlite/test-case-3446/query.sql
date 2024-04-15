SELECT d,
       c-d,
       c,
       abs(a),
       a-b
  FROM t1
 WHERE c>d
   AND a>b
   AND b>c;
