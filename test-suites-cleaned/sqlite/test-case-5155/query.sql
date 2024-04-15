SELECT a-b,
       a,
       b-c,
       b,
       e
  FROM t1
 WHERE c>d
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 1,2;
