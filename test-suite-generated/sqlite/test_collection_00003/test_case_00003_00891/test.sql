SELECT a9 FROM t9
   WHERE (c9=87 AND e9=263)
      OR (936=e9 OR a9=318 OR b9=95)
      OR (227=b9 AND 273=c9)
EXCEPT
  SELECT c2 FROM t2
   WHERE NOT ((a2=718 OR 448=d2 OR 625=c2)
           OR (223=a2 OR 140=c2));
