SELECT d7 FROM t7
   WHERE b7 in (517,579,562,321,693,855,340,519,159,938)
UNION
  SELECT e9 FROM t9
   WHERE a9 in (149,712,251,739,474,450,429,28,258,803,104,683,485)
      OR (50=b9 AND 145=d9)
      OR c9 in (64,905,146,288,547,834,643,973,894,751,253,711,118,419)
EXCEPT
  SELECT a1 FROM t1
   WHERE NOT ((805=c1 AND e1=858 AND b1=355 AND 274=d1)
           OR (d1=900 AND c1=758 AND e1=811 AND 420=b1 AND a1=281));
