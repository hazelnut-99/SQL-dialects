SELECT d6 FROM t6
   WHERE (963=b6 AND a6=811)
      OR (d6=2)
UNION
  SELECT c2 FROM t2
   WHERE a2 in (415,544,725)
      OR (c2=141 OR a2=76)
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT (c7 in (931,22,770,954,729,857,626,305,691,288,249)
           OR d7 in (982,996,722));
