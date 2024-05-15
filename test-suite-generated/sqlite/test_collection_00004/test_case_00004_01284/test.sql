SELECT d,
       c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE c>d
    OR d NOT BETWEEN 110 AND 150;
