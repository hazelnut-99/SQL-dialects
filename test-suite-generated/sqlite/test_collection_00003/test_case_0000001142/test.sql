SELECT a2 FROM t2
   WHERE e2 in (294,282,524)
      OR d2 in (723,854,152,10)
      OR (c2=810 AND b2=311 AND 428=e2)
INTERSECT
  SELECT e5 FROM t5
   WHERE NOT ((b5=661)
           OR (b5=338 AND c5=924));
