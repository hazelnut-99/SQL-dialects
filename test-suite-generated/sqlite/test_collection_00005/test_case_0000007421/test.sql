SELECT d
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND d NOT BETWEEN 110 AND 150;
