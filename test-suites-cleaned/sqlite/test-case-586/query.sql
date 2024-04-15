SELECT e,
       a+b*2+c*3+d*4+e*5,
       d-e,
       b-c,
       a+b*2+c*3+d*4,
       abs(b-c)
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 2,4,6,1,5,3;
