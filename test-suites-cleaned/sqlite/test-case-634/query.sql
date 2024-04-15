SELECT (a+b+c+d+e)/5,
       b,
       a+b*2+c*3+d*4+e*5,
       c,
       d-e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR c>d
 ORDER BY 2,5,3,4,1;
