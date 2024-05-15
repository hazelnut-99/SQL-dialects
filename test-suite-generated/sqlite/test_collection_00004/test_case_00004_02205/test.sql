SELECT d-e,
       a,
       e
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 3,2,1;
