SELECT a+b*2+c*3,
       c-d
  FROM t1
 WHERE b IS NOT NULL
    OR coalesce(a,b,c,d,e)<>0
    OR d NOT BETWEEN 110 AND 150;
