SELECT d-e,
       abs(a)
  FROM t1
 WHERE b>c
    OR a>b
 ORDER BY 1,2;
