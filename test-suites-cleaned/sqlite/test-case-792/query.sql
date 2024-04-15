SELECT a+b*2,
       b-c,
       a+b*2+c*3
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 2,3,1;
