SELECT c,
       a,
       a+b*2+c*3
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND d NOT BETWEEN 110 AND 150;
