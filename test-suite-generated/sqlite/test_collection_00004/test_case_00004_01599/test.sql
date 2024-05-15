SELECT b-c,
       c-d,
       a+b*2
  FROM t1
 WHERE (e>a AND e<b)
    OR d>e
    OR c>d
 ORDER BY 1,2;
