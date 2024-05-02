SELECT b-c,
       b,
       a-b,
       c-d,
       d-e,
       e
  FROM t1
 WHERE b>c
 ORDER BY 3,1,4,2,6,5;
