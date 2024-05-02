SELECT a,
       d-e,
       c,
       a+b*2,
       e
  FROM t1
 WHERE a>b
    OR c>d
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 2,3,5,4,1;
