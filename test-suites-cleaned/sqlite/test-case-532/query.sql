SELECT c-d,
       a+b*2+c*3+d*4+e*5,
       abs(b-c),
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND (a>b-2 AND a<b+2)
   AND (e>c OR e<d)
 ORDER BY 4,1,3,2,5;
