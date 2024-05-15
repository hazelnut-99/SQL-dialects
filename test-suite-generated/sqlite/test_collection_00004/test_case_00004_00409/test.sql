SELECT c,
       a+b*2,
       abs(b-c)
  FROM t1
 WHERE b>c
    OR (a>b-2 AND a<b+2)
 ORDER BY 2,3,1;
