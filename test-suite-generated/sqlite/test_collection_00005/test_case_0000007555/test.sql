SELECT a+b*2,
       abs(b-c),
       a
  FROM t1
 WHERE a IS NULL
   AND (e>c OR e<d)
   AND c>d;
