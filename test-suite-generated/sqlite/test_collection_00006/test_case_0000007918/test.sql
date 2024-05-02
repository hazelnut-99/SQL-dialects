SELECT a-b,
       a,
       a+b*2+c*3,
       b,
       d,
       d-e
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 2,6,4,1,5,3;
