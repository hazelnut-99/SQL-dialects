SELECT d-e,
       c-d,
       (a+b+c+d+e)/5
  FROM t1
 WHERE b>c
    OR d NOT BETWEEN 110 AND 150
    OR e+d BETWEEN a+b-10 AND c+130;
