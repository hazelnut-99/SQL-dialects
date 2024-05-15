SELECT a+b*2+c*3+d*4+e*5,
       a+b*2,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       c,
       c-d
  FROM t1
 WHERE (e>a AND e<b)
    OR (a>b-2 AND a<b+2);
