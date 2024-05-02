SELECT (a+b+c+d+e)/5,
       abs(b-c),
       d
  FROM t1
 WHERE a>b
    OR a IS NULL
    OR b>c;
