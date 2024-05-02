SELECT (a+b+c+d+e)/5,
       a-b,
       b,
       a+b*2,
       a
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND (e>c OR e<d)
   AND d>e
 ORDER BY 4,2,5,3,1;
