SELECT (a+b+c+d+e)/5,
       a+b*2+c*3,
       a-b,
       abs(b-c),
       a+b*2
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR c BETWEEN b-2 AND d+2
 ORDER BY 2,1,5,4,3;
