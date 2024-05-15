SELECT e8 FROM t8
   WHERE (672=a8 OR 327=a8)
      OR a8 in (848,254,472)
      OR (790=c8 OR e8=761)
EXCEPT
  SELECT a7 FROM t7
   WHERE NOT ((982=a7)
           OR (981=c7));
