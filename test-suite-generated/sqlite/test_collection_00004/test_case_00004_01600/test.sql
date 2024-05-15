SELECT b-c,
       c-d,
       a+b*2
  FROM t1
 WHERE c>d
    OR (e>a AND e<b)
    OR d>e;
