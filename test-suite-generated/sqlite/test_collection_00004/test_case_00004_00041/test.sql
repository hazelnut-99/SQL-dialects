SELECT d-e,
       c-d,
       (a+b+c+d+e)/5
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR b>c
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 2,1,3;
