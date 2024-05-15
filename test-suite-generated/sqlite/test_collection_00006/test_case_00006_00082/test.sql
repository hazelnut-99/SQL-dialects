SELECT a+b*2+c*3+d*4,
       abs(b-c),
       c-d
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 2,3,1;
