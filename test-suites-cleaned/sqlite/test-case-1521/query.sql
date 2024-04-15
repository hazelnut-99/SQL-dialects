SELECT b-c,
       a+b*2,
       a+b*2+c*3
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
    OR a IS NULL
    OR d NOT BETWEEN 110 AND 150;
