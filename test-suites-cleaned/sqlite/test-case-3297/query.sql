SELECT a-b,
       a+b*2+c*3,
       abs(a)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1,3;
