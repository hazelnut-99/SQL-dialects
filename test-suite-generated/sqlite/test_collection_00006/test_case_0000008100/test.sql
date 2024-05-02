SELECT a+b*2,
       b,
       d-e,
       a,
       abs(b-c),
       d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 1,2,5,4,3,6;
