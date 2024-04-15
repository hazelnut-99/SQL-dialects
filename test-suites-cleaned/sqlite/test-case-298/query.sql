SELECT b-c,
       e,
       c-d,
       a-b
  FROM t1
 WHERE b>c
    OR c BETWEEN b-2 AND d+2
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 4,1,2,3;
