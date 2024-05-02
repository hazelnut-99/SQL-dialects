SELECT b,
       a+b*2+c*3,
       abs(b-c),
       a-b
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 3,1,2,4;
