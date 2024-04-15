SELECT a+b*2+c*3+d*4+e*5,
       e
  FROM t1
 WHERE (e>a AND e<b)
   AND (e>c OR e<d);
