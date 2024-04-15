SELECT a+b*2+c*3,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>c OR e<d);
