SELECT a+b*2+c*3+d*4,
       a,
       c-d,
       abs(b-c),
       b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (e>c OR e<d)
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 4,3,2,5,1,6;
