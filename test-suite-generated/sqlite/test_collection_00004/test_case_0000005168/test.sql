SELECT c,
       a+b*2+c*3,
       a,
       d,
       a+b*2,
       b
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 3,5,6,1,2;
