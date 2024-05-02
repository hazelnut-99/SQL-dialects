SELECT a+b*2,
       a
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR (e>c OR e<d)
    OR (e>a AND e<b)
 ORDER BY 2,1;
