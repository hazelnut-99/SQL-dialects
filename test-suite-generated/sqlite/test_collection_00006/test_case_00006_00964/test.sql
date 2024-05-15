SELECT a,
       (a+b+c+d+e)/5,
       c
  FROM t1
 WHERE a>b
    OR c BETWEEN b-2 AND d+2
    OR (e>c OR e<d)
 ORDER BY 1,2,3;
