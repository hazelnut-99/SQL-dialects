SELECT d,
       c-d,
       a+b*2
  FROM t1
 WHERE (e>c OR e<d)
    OR d>e
    OR a>b;
