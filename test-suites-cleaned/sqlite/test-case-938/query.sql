SELECT (a+b+c+d+e)/5,
       c-d,
       a+b*2+c*3+d*4,
       d-e,
       b-c,
       e,
       a+b*2+c*3+d*4+e*5
  FROM t1
 ORDER BY 7,1,2,4,6,5,3;
