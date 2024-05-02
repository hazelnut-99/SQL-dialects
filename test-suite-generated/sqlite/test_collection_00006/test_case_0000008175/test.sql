SELECT a+b*2+c*3+d*4+e*5,
       b-c
  FROM t1
 WHERE (a>b-2 AND a<b+2)
 ORDER BY 2,1;
