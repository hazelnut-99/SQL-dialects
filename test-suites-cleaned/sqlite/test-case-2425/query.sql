SELECT a+b*2+c*3+d*4,
       abs(a)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 1,2;
