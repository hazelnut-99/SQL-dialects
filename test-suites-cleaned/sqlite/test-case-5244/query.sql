SELECT a-b,
       (a+b+c+d+e)/5,
       d-e
  FROM t1
 WHERE (a>b-2 AND a<b+2);
