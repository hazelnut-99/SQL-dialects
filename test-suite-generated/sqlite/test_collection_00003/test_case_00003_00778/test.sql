SELECT d2 FROM t2
   WHERE d2 in (860,86,351,723,836,790,209,854)
      OR (b2=784)
INTERSECT
  SELECT d3 FROM t3
   WHERE NOT ((565=c3)
           OR (434=d3 OR 386=a3))
EXCEPT
  SELECT a6 FROM t6
   WHERE NOT ((911=d6)
           OR (537=a6 AND e6=283 AND d6=489 AND 984=b6 AND c6=729))
UNION ALL
  SELECT c1 FROM t1
   WHERE d1 in (87,298,432,105,187,806)
      OR (b1=362 AND 0=d1)
      OR (b1=736);
