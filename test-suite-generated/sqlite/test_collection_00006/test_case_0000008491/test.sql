SELECT a+b*2+c*3+d*4+e*5,
       c,
       e,
       a+b*2+c*3,
       abs(b-c),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND d>e
   AND (e>c OR e<d)
 ORDER BY 1,5,3,6,4,2;
