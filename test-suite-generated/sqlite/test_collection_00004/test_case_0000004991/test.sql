SELECT e,
       abs(b-c)
  FROM t1
 WHERE b>c
    OR c BETWEEN b-2 AND d+2;
