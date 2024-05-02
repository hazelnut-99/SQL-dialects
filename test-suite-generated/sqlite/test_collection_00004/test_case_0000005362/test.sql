SELECT d-e,
       c-d
  FROM t1
 WHERE (e>c OR e<d)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 2,1;
