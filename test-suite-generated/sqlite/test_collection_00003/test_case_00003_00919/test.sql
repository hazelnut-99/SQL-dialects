SELECT c3 FROM t3
   WHERE e3 in (119,913,135,578,728)
      OR (b3=334 OR 472=c3 OR a3=255)
      OR (109=d3)
UNION ALL
  SELECT e2 FROM t2
   WHERE (527=b2 AND e2=386 AND d2=249 AND c2=450)
EXCEPT
  SELECT c5 FROM t5
   WHERE NOT ((357=a5 AND 470=d5 AND 922=c5 AND b5=548));
