SELECT a+b*2,
       b,
       abs(b-c),
       d-e,
       a,
       c-d
  FROM t1
 WHERE a>b
    OR e+d BETWEEN a+b-10 AND c+130;
