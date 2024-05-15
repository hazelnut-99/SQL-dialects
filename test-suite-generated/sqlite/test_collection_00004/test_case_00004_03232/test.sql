SELECT a,
       a+b*2+c*3+d*4+e*5,
       c,
       a+b*2+c*3+d*4,
       c-d,
       a-b
  FROM t1
 WHERE a>b;
