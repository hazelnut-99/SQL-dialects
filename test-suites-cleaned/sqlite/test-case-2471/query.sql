SELECT b-c,
       c-d,
       a+b*2+c*3+d*4+e*5,
       a,
       a+b*2+c*3,
       a-b,
       a+b*2+c*3+d*4
  FROM t1
 WHERE b>c
    OR (a>b-2 AND a<b+2)
    OR (e>c OR e<d)
 ORDER BY 5,7,3;
