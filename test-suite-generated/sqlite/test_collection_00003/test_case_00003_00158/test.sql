SELECT d4 FROM t4
   WHERE (81=a4 OR 31=a4 OR a4=451)
      OR d4 in (988,794,364,844,910,713,199,777,821,60,481,877,549,31)
UNION ALL
  SELECT d2 FROM t2
   WHERE (b2=846 AND 279=a2)
EXCEPT
  SELECT c3 FROM t3
   WHERE NOT ((708=d3 AND 181=a3 AND 876=e3))
UNION ALL
  SELECT e6 FROM t6
   WHERE (d6=453 OR b6=243)
UNION ALL
  SELECT b1 FROM t1
   WHERE (b1=128 AND 585=c1 AND 581=d1 AND 967=a1);
