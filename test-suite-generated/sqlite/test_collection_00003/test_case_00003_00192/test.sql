SELECT e6 FROM t6
   WHERE c6 in (65,242,146)
EXCEPT
  SELECT d4 FROM t4
   WHERE NOT ((d4=821 AND c4=357 AND 765=b4 AND e4=6))
UNION ALL
  SELECT e7 FROM t7
   WHERE (b7=996 OR e7=92)
      OR d7 in (988,442,500,324,506,831,680,183,805,418,134,265,902)
UNION ALL
  SELECT b1 FROM t1
   WHERE (c1=366 OR 822=b1);
