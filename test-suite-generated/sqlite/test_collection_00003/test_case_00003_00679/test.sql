SELECT e2 FROM t2
   WHERE (a2=954 OR a2=175)
      OR (c2=346 AND d2=663)
      OR (360=c2)
EXCEPT
  SELECT b9 FROM t9
   WHERE NOT ((a9=905 OR a9=318)
           OR (195=e9 OR d9=129 OR 278=c9))
EXCEPT
  SELECT d1 FROM t1
   WHERE NOT ((d1=900 AND b1=420 AND a1=281 AND e1=811)
           OR a1 in (785,75,862,461,194,23,438,173,324,674,382,847,499,395)
           OR c1 in (136,506,498,272,531))
UNION ALL
  SELECT c4 FROM t4
   WHERE (449=d4 OR 948=c4 OR 208=c4);
