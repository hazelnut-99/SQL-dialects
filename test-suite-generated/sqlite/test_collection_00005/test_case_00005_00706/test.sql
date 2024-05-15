SELECT a+b*2+c*3+d*4+e*5,
       abs(a)
  FROM t1
 WHERE a>b
    OR (e>c OR e<d);
