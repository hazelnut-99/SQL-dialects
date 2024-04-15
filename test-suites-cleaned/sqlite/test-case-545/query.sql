SELECT abs(b-c),
       a,
       a+b*2+c*3+d*4,
       c-d,
       c,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 6,3,1,4,5,2;
