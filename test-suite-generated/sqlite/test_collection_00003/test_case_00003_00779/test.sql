SELECT a3 FROM t3
   WHERE (a3=380 AND 890=c3 AND 932=b3 AND 260=e3)
      OR (801=c3)
      OR (e3=333 AND c3=887 AND 584=b3)
UNION ALL
  SELECT a6 FROM t6
   WHERE a6 in (359,238,740,270)
      OR (a6=66 AND 123=c6 AND 734=d6)
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT (d9 in (965,142,744,795,399,679,161,720,316,495,919,129,226)
           OR (d9=926)
           OR c9 in (905,64,451,643,732,98,534,662,273,419,252,894,526,110))
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT (c1 in (787,898,530,388))
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT ((771=b5)
           OR b5 in (234,159,338))
EXCEPT
  SELECT b4 FROM t4
   WHERE NOT (c4 in (658,157,936,84,178,667,854,936))
UNION ALL
  SELECT b2 FROM t2
   WHERE (c2=247)
      OR a2 in (853,590,253,980)
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT ((a7=195)
           OR (d7=777))
UNION ALL
  SELECT a8 FROM t8
   WHERE (d8=463 AND a8=99 AND c8=790 AND e8=608)
      OR (d8=899 OR d8=370 OR 609=b8)
      OR b8 in (155,162,563,934,964,511,725,300,862,259);
