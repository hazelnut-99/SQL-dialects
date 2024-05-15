SELECT (a+b+c+d+e)/5,
       c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 2,3;
