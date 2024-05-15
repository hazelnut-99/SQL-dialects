SELECT (a+b+c+d+e)/5,
       a+b*2+c*3
  FROM t1
 WHERE b>c
    OR d NOT BETWEEN 110 AND 150
    OR c BETWEEN b-2 AND d+2
 ORDER BY 2,1;
