SELECT e,
       a+b*2+c*3
  FROM t1
 WHERE (e>a AND e<b)
    OR b>c
    OR (e>c OR e<d)
 ORDER BY 2,1;
