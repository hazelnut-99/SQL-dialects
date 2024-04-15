SELECT c,
       d-e,
       (a+b+c+d+e)/5
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR d NOT BETWEEN 110 AND 150
    OR (e>c OR e<d)
 ORDER BY 3,1,2;
