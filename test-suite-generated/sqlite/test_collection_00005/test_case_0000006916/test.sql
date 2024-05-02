SELECT (a+b+c+d+e)/5,
       c-d,
       e,
       a
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR (a>b-2 AND a<b+2);
