SELECT d,
       (a+b+c+d+e)/5,
       e,
       a+b*2+c*3
  FROM t1
 WHERE c>d
   AND (e>a AND e<b)
 ORDER BY 3,1,4;
