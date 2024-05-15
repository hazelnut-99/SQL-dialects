SELECT a+b*2+c*3+d*4,
       a+b*2,
       e,
       (a+b+c+d+e)/5
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND (e>c OR e<d)
 ORDER BY 2,4,3,1;
