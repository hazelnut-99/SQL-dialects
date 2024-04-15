SELECT abs(b-c),
       (a+b+c+d+e)/5,
       a-b,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b-c,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE a IS NULL
   AND coalesce(a,b,c,d,e)<>0;
