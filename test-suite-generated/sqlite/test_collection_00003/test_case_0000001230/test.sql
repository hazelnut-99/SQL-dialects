SELECT c8 FROM t8
   WHERE (c8=418 OR b8=725)
      OR (c8=866)
      OR a8 in (794,838,913,66,259,443,254,864,388,900,923,579)
EXCEPT
  SELECT c6 FROM t6
   WHERE NOT ((431=e6)
           OR (664=d6))
EXCEPT
  SELECT c7 FROM t7
   WHERE NOT ((a7=863 OR 9=a7 OR 862=e7)
           OR (b7=263 OR 301=e7))
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT ((608=a3 AND 46=d3))
UNION ALL
  SELECT d4 FROM t4
   WHERE b4 in (402,624,608,903,551,76,387,331,884,577,33,810)
      OR (e4=123 AND c4=723)
EXCEPT
  SELECT e2 FROM t2
   WHERE NOT ((233=d2 AND 253=a2))
UNION ALL
  SELECT b9 FROM t9
   WHERE c9 in (278,90,515);
