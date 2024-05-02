SELECT a+b*2
  FROM t1
 WHERE a>b
    OR (e>c OR e<d)
 ORDER BY 1;
