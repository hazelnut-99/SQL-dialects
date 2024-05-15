SELECT a+b*2+c*3,
       (a+b+c+d+e)/5,
       b-c,
       e,
       abs(b-c),
       c-d,
       b
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND (e>c OR e<d)
   AND b>c;
