SELECT a+b*2+c*3+d*4,
       a+b*2+c*3,
       c,
       b,
       d-e,
       (a+b+c+d+e)/5,
       b-c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2);
