SELECT a,
       a+b*2+c*3+d*4,
       e,
       d,
       a+b*2
  FROM t1
 WHERE (e>a AND e<b);
