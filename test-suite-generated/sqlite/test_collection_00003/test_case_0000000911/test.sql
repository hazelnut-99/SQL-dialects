SELECT b6 FROM t6
   WHERE (e6=139 AND b6=662 AND 750=d6 AND 491=c6)
      OR a6 in (45,653,604,129,366,392,66)
UNION
  SELECT c5 FROM t5
   WHERE d5 in (280,682,841,780,835,806,855,557,789,4,806,731,883,33)
      OR a5 in (721,818,270,50)
      OR (361=d5 OR d5=957)
UNION ALL
  SELECT a3 FROM t3
   WHERE (b3=549 AND 476=c3 AND 401=e3)
      OR (124=b3 OR e3=578)
      OR c3 in (516,490,600,81,244,890,647,986,134,986)
UNION
  SELECT a8 FROM t8
   WHERE (a8=728)
      OR (d8=512)
UNION
  SELECT c1 FROM t1
   WHERE (d1=951)
UNION ALL
  SELECT d7 FROM t7
   WHERE e7 in (301,92,168,422,903,827,462,288,976,183,841,89,970)
      OR (c7=14 AND a7=736)
UNION ALL
  SELECT c9 FROM t9
   WHERE d9 in (554,965,922,660);
