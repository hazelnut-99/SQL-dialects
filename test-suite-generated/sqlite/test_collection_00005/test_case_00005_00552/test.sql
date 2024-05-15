SELECT b-c,
       a+b*2+c*3+d*4,
       b,
       c-d,
       a+b*2+c*3
  FROM t1
 WHERE d>e
   AND c>d
   AND coalesce(a,b,c,d,e)<>0;
