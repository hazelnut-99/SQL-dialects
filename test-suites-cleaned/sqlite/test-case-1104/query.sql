SELECT a+b*2,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR b>c
    OR (a>b-2 AND a<b+2);
