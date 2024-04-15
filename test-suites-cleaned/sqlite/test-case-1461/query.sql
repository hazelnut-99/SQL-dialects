SELECT abs(b-c),
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       e,
       b-c
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND coalesce(a,b,c,d,e)<>0;
