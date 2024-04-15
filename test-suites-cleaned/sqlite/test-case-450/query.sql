SELECT d-e,
       c-d,
       a
  FROM t1
 WHERE b>c
   AND (e>a AND e<b)
   AND c>d
 ORDER BY 1,2,3;
