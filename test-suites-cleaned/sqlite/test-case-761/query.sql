SELECT a+b*2+c*3+d*4,
       d-e,
       a+b*2+c*3,
       abs(b-c),
       d,
       b-c,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 3,7,1,6,5,2,4;
