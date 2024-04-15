SELECT a+b*2,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (a>b-2 AND a<b+2)
 ORDER BY 1,2;
