SELECT c-d,
       c,
       d,
       a-b,
       a+b*2+c*3+d*4+e*5,
       b-c
  FROM t1
 ORDER BY 5,2,4,1;
