SELECT e,
       a-b
  FROM t1
 WHERE b>c
    OR (a>b-2 AND a<b+2)
 ORDER BY 2,1;
