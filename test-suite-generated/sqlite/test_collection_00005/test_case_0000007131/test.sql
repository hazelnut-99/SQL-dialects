SELECT d-e,
       d,
       c,
       b-c
  FROM t1
 WHERE a IS NULL
   AND b>c;
