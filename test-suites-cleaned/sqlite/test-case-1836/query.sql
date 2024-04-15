SELECT a-b,
       abs(b-c),
       a+b*2+c*3
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR (e>a AND e<b)
    OR c>d;
