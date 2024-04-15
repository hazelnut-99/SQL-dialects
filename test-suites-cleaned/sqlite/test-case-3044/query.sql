SELECT d,
       a+b*2+c*3,
       a,
       e
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR (e>a AND e<b)
    OR c>d;
