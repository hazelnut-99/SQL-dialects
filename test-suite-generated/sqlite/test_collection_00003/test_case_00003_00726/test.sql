SELECT a2 FROM t2
   WHERE (e2=37 AND 186=a2 AND c2=24)
INTERSECT
  SELECT a1 FROM t1
   WHERE NOT ((c1=966 AND a1=702 AND b1=645 AND d1=820 AND 497=e1)
           OR e1 in (483,628,693,96,254,522))
INTERSECT
  SELECT c4 FROM t4
   WHERE NOT (d4 in (979,141,953,997,511,429,449,364,681,628))
EXCEPT
  SELECT e7 FROM t7
   WHERE NOT ((c7=807)
           OR d7 in (148,142,524,226,367,539,924,902,34,225,442,506,364))
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT ((734=c5 AND 114=d5 AND 697=e5 AND 832=a5 AND 186=b5)
           OR (489=c5 AND a5=602 AND 271=d5 AND b5=391 AND 104=e5))
UNION ALL
  SELECT e8 FROM t8
   WHERE a8 in (794,359,15,171)
UNION ALL
  SELECT d9 FROM t9
   WHERE e9 in (801,736,477)
      OR (d9=258)
      OR c9 in (807,180,531,587,601,569);
