SELECT d-e,
       e,
       b,
       c,
       abs(b-c),
       a+b*2+c*3+d*4,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>c OR e<d)
    OR a>b
    OR b>c;
