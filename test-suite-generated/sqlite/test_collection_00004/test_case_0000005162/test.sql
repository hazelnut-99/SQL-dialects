SELECT b-c,
       c-d,
       a+b*2
  FROM t1
 WHERE (e>a AND e<b)
    OR c>d
    OR d>e
 ORDER BY 2,1;
