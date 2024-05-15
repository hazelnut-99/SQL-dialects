SELECT a-b,
       a+b*2
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR (c<=d-2 OR c>=d+2)
    OR a>b
 ORDER BY 1,2;
