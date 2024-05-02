SELECT a,
       b,
       abs(b-c),
       e,
       a+b*2,
       d-e,
       (a+b+c+d+e)/5
  FROM t1
 WHERE b>c
   AND c>d
 ORDER BY 6,1,7,2,5,4,3;
