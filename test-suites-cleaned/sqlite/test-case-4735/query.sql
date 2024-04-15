SELECT a,
       d-e,
       e
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 2,1,3;
