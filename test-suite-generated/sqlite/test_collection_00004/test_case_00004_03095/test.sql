SELECT c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE c>d
   AND a>b
 ORDER BY 2,1;
