SELECT c-d,
       e,
       a+b*2,
       b,
       abs(a)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR (e>c OR e<d)
 ORDER BY 2,5,3,1,4;
