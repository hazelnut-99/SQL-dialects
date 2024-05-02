SELECT a-b,
       a,
       b-c,
       b,
       e
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR c>d
 ORDER BY 2,1,5,4;
