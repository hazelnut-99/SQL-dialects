SELECT c,
       a+b*2+c*3+d*4+e*5,
       b-c,
       a,
       d-e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR c BETWEEN b-2 AND d+2
    OR d>e;
