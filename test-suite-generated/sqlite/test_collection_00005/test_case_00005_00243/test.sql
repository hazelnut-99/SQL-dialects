SELECT b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (a+b+c+d+e)/5,
       a+b*2+c*3
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND (e>a AND e<b);
