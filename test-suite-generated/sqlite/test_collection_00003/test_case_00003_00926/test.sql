SELECT e4 FROM t4
   WHERE c4 in (153,964,584,674,319,433,513,749,667,398)
UNION ALL
  SELECT d9 FROM t9
   WHERE (274=d9 OR a9=295 OR 326=a9)
      OR d9 in (86,345,899,987,164,264,795,919)
UNION ALL
  SELECT c5 FROM t5
   WHERE (68=e5 AND c5=442 AND 634=d5 AND 559=b5)
EXCEPT
  SELECT a2 FROM t2
   WHERE NOT ((c2=161 OR e2=307))
EXCEPT
  SELECT c1 FROM t1
   WHERE NOT ((d1=666 OR d1=416 OR b1=5)
           OR d1 in (47,874,25,955,294,232))
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT ((e3=467 AND 407=b3 AND 337=a3 AND 860=c3));
