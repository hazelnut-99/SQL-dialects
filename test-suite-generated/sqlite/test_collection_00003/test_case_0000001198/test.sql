SELECT a7 FROM t7
   WHERE (b7=510 OR d7=418)
      OR (c7=744)
EXCEPT
  SELECT e9 FROM t9
   WHERE NOT ((703=b9 OR 102=a9 OR c9=39)
           OR b9 in (926,170,900)
           OR d9 in (682,161,23,601))
EXCEPT
  SELECT c2 FROM t2
   WHERE NOT ((588=a2 OR d2=260 OR 729=c2)
           OR (217=a2 OR d2=292 OR a2=223))
EXCEPT
  SELECT b3 FROM t3
   WHERE NOT ((243=c3 AND e3=823 AND d3=662)
           OR b3 in (566,198,317,827,914,876,505,779))
EXCEPT
  SELECT d8 FROM t8
   WHERE NOT (d8 in (494,81,541,499,179,223,769,446)
           OR (e8=919));
