SELECT d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c),
       (a+b+c+d+e)/5,
       c-d
  FROM t1
 WHERE a>b
 ORDER BY 1,3,2,4,5;
