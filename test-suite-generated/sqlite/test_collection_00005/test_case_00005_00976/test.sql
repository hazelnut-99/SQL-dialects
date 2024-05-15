SELECT c-d,
       a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       a,
       b,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150;
