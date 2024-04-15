SELECT a-b,
       d-e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
 ORDER BY 2,1;
