SELECT d3 FROM t3
   WHERE d3 in (17,647,524,582,515)
UNION ALL
  SELECT e8 FROM t8
   WHERE c8 in (461,149,979,961,799,683,250,74,418,690,851,119)
      OR (b8=145 AND c8=961 AND 233=e8 AND 359=a8 AND d8=96)
      OR (61=c8 AND e8=846 AND a8=328 AND 845=d8 AND b8=963)
EXCEPT
  SELECT e6 FROM t6
   WHERE NOT ((572=c6 AND b6=850 AND d6=453)
           OR (710=b6))
EXCEPT
  SELECT a1 FROM t1
   WHERE NOT ((716=d1 AND a1=215 AND e1=615 AND c1=252 AND 269=b1))
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT ((d9=439)
           OR c9 in (515,64,696,834,734,526,534)
           OR d9 in (164,450,926,919,591,129,601,142,597,345,383,226))
UNION ALL
  SELECT b5 FROM t5
   WHERE (601=c5 AND b5=56 AND e5=352 AND 817=a5 AND 274=d5)
      OR (738=d5 AND 311=e5)
EXCEPT
  SELECT a4 FROM t4
   WHERE NOT (c4 in (984,799,393,178,220,671,536,513,433,860,694))
UNION
  SELECT c7 FROM t7
   WHERE a7 in (950,736,748,180)
      OR e7 in (816,103,851,7,815,689,595,408,624,288,303,522)
      OR c7 in (344,78,523,435,302,145,635);
