SELECT a+b*2+c*3,
       a+b*2,
       b-c
  FROM t1
 WHERE (a>b-2 AND a<b+2);
