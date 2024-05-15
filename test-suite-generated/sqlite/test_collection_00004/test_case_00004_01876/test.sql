SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d-e,
       d,
       a+b*2+c*3,
       a-b,
       c-d,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR (a>b-2 AND a<b+2);
