SELECT c8 FROM t8
   WHERE d8 in (883,523,81,667,20,690,124,2)
      OR e8 in (608,874,592,632)
      OR c8 in (461,461,501,979,111)
INTERSECT
  SELECT d3 FROM t3
   WHERE NOT ((a3=162)
           OR d3 in (314,896,501,118,508,134,548,825,923,423,17))
UNION
  SELECT a6 FROM t6
   WHERE (490=c6 AND 778=d6 AND 933=b6 AND 794=e6 AND 799=a6)
      OR b6 in (267,512,537,158,92,421,230,232,229)
UNION ALL
  SELECT a7 FROM t7
   WHERE c7 in (744,305,931,853)
EXCEPT
  SELECT c5 FROM t5
   WHERE NOT ((104=e5 AND d5=729 AND 380=b5 AND c5=723)
           OR (826=a5 AND e5=937 AND 923=c5 AND b5=79)
           OR a5 in (597,297,429,331,99,544,373))
EXCEPT
  SELECT d9 FROM t9
   WHERE NOT ((c9=955 AND 864=b9 AND 264=e9 AND a9=535)
           OR d9 in (770,25,681,23,660,270,618,608,967)
           OR e9 in (197,264,947,19,737))
EXCEPT
  SELECT c2 FROM t2
   WHERE NOT (c2 in (819,894,551,449,127))
EXCEPT
  SELECT a1 FROM t1
   WHERE NOT ((731=e1 OR d1=972 OR e1=89)
           OR b1 in (828,779,233,729,128,75,766,91,822,995));
