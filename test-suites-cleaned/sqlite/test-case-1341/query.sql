SELECT a+b*2+c*3+d*4+e*5,
       a,
       abs(b-c),
       a+b*2+c*3+d*4
  FROM t1
 WHERE (e>c OR e<d);
