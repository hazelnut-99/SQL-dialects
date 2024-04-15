SELECT d,
       abs(b-c),
       a+b*2
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 3,1;
