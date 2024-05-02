SELECT d-e,
       c-d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND (e>c OR e<d)
 ORDER BY 2,1;
