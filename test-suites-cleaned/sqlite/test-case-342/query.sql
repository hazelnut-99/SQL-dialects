SELECT b,
       a+b*2
  FROM t1
 WHERE (e>a AND e<b)
    OR (a>b-2 AND a<b+2)
    OR (e>c OR e<d)
 ORDER BY 2,1;
