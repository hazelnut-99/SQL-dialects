SELECT e1 FROM t1
   WHERE (e1=602 OR b1=266 OR a1=866)
EXCEPT
  SELECT d2 FROM t2
   WHERE NOT ((389=d2 OR 758=c2 OR c2=275)
           OR (e2=938))
UNION
  SELECT b5 FROM t5
   WHERE a5 in (297,740,976)
      OR c5 in (628,351,44,437,152,86,923,250,824,756)
UNION ALL
  SELECT c6 FROM t6
   WHERE (66=c6 OR c6=673)
      OR e6 in (761,711,946,329,91)
      OR (923=b6 OR 126=b6)
EXCEPT
  SELECT c3 FROM t3
   WHERE NOT ((823=c3 AND 932=e3 AND d3=168 AND b3=977)
           OR (e3=651 OR 336=d3 OR b3=713)
           OR d3 in (483,967,554,355))
EXCEPT
  SELECT e7 FROM t7
   WHERE NOT (d7 in (52,666,805,177,795,276,837,278,924,485,296,114,599)
           OR (c7=744 AND a7=9 AND 278=d7 AND 522=e7));
