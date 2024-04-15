SELECT a+b*2,
       c,
       (a+b+c+d+e)/5
  FROM t1
 WHERE a>b
    OR b>c;
