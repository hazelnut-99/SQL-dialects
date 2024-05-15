SELECT abs(b-c),
       a-b,
       (a+b+c+d+e)/5
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR (a>b-2 AND a<b+2)
 ORDER BY 2,1,3;
