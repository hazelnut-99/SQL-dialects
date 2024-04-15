SELECT e,
       b-c,
       abs(b-c),
       a+b*2+c*3+d*4+e*5,
       c-d,
       abs(a)
  FROM t1
 WHERE b>c
 ORDER BY 3,6,2,1,5,4;
