SELECT b-c,
       a,
       a+b*2+c*3+d*4,
       d
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND c>d
   AND d>e
 ORDER BY 4,2,3,1;
