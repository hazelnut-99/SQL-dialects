SELECT d,
       c-d,
       abs(b-c),
       b-c,
       a+b*2+c*3
  FROM t1
 WHERE b>c;
