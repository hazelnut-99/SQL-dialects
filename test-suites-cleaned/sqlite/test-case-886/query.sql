SELECT abs(b-c),
       a-b,
       a+b*2
  FROM t1
 WHERE (e>c OR e<d)
    OR d>e
 ORDER BY 3,2,1;
