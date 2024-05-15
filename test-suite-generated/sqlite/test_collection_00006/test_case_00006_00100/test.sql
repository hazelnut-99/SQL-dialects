SELECT a+b*2+c*3,
       a
  FROM t1
 WHERE (e>c OR e<d)
    OR a>b
 ORDER BY 1,2;
