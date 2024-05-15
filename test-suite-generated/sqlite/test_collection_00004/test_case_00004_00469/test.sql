SELECT b-c,
       c-d,
       a+b*2+c*3+d*4+e*5,
       a,
       a+b*2+c*3,
       a-b,
       a+b*2+c*3+d*4
  FROM t1
 WHERE b>c
    OR (e>c OR e<d)
    OR (a>b-2 AND a<b+2)
 ORDER BY 3,1,2,6,4;
