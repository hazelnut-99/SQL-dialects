SELECT c-d,
       (a+b+c+d+e)/5,
       abs(b-c),
       c,
       d
  FROM t1
 WHERE c>d
    OR a>b
 ORDER BY 4,2,3,1,5;
