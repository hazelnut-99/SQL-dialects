SELECT b1 FROM t1
   WHERE (556=b1)
      OR b1 in (26,447,42,259,266)
      OR d1 in (88,574,4,412,581,936,716,585,666,18,717)
EXCEPT
  SELECT c7 FROM t7
   WHERE NOT ((462=e7 OR 184=e7 OR c7=807))
UNION
  SELECT d8 FROM t8
   WHERE (a8=637 AND 228=b8 AND d8=269 AND 947=e8);
