SELECT b-c,
       c-d,
       d-e,
       (a+b+c+d+e)/5,
       d
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0;
