SELECT c-d,
       abs(a)
  FROM t1
 WHERE c>d
   AND b>c
   AND (c<=d-2 OR c>=d+2);
