SELECT abs(b-c),
       a+b*2,
       d,
       b-c,
       a-b,
       d-e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND c>d
 ORDER BY 3,1,2,5,6,4;
