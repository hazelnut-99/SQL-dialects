SELECT a+b*2+c*3+d*4+e*5,
       b
  FROM t1
 WHERE (e>c OR e<d);
