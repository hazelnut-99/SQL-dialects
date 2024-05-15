SELECT c-d,
       d
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND b>c;
