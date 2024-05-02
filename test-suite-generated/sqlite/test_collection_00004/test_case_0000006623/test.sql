SELECT d,
       abs(b-c),
       b,
       b-c
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150;
