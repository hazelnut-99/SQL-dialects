SELECT c1 FROM t1
   WHERE (905=c1)
INTERSECT
  SELECT e5 FROM t5
   WHERE NOT ((b5=971 AND d5=263 AND e5=640 AND a5=522 AND c5=797))
INTERSECT
  SELECT b4 FROM t4
   WHERE NOT (b4 in (678,107,802,442,33,964)
           OR (b4=2 OR b4=271 OR d4=781))
EXCEPT
  SELECT d2 FROM t2
   WHERE NOT (e2 in (433,815,499,679)
           OR a2 in (760,779,869,505,590,735,936,159,209)
           OR (b2=90 OR b2=217 OR e2=117));
