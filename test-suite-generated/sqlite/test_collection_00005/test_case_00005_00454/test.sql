SELECT b-c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
    OR (e>c OR e<d)
    OR a IS NULL;
