SELECT d3 FROM t3
   WHERE (827=b3)
      OR (a3=376)
INTERSECT
  SELECT e6 FROM t6
   WHERE NOT (b6 in (44,348,296,880,876,452,92,984,461,781,549,378,217)
           OR (b6=217 AND a6=392 AND e6=31 AND 446=c6 AND 867=d6))
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT ((b7=59)
           OR a7 in (9,706,863)
           OR (c7=478 AND 684=d7 AND 266=b7))
UNION ALL
  SELECT c4 FROM t4
   WHERE (b4=389 OR e4=698 OR 996=c4)
      OR (d4=507 AND 184=b4 AND 2=c4)
UNION
  SELECT e8 FROM t8
   WHERE (e8=859 AND c8=332)
      OR (c8=154 OR 795=a8)
      OR b8 in (461,182,992,7,487,523,741,352,975,493,981,359);
