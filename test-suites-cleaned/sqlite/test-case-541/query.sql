SELECT c,
       a+b*2
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR c>d
    OR c BETWEEN b-2 AND d+2
 ORDER BY 1,2;
