SELECT c,
       a+b*2+c*3+d*4,
       a
  FROM t1
 WHERE (e>a AND e<b)
    OR c BETWEEN b-2 AND d+2
 ORDER BY 1,2,3;
