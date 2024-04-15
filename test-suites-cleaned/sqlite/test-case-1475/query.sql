SELECT d-e,
       a+b*2+c*3+d*4+e*5,
       b-c,
       a,
       d,
       b
  FROM t1
 WHERE b IS NOT NULL
    OR d NOT BETWEEN 110 AND 150;
