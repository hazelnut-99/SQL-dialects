SELECT e1 FROM t1
   WHERE (b1=682 OR d1=519)
INTERSECT
  SELECT c4 FROM t4
   WHERE NOT ((e4=37 AND 439=a4 AND b4=535 AND 451=c4 AND d4=979)
           OR a4 in (948,651,558,442,580,355,509,792,793,579,605)
           OR (312=e4 AND 44=d4 AND a4=139 AND 294=b4))
INTERSECT
  SELECT b7 FROM t7
   WHERE NOT ((d7=722 AND 202=b7 AND c7=441 AND 79=e7)
           OR a7 in (998,894,452,884,452,430,869,85,722,35))
UNION
  SELECT d3 FROM t3
   WHERE (876=b3 OR c3=299)
EXCEPT
  SELECT b8 FROM t8
   WHERE NOT ((b8=981 OR 321=c8))
UNION ALL
  SELECT b9 FROM t9
   WHERE (318=a9)
      OR (150=e9 OR c9=793)
      OR (b9=703 OR 25=d9);
