SELECT d8 FROM t8
   WHERE (d8=630 OR b8=665)
      OR b8 in (690,461,806,487,386,9,889,466,352,796,563,704,313,98)
      OR e8 in (495,149,578,421,204,646,203,488,947,233)
UNION
  SELECT d3 FROM t3
   WHERE (d3=683)
      OR (220=d3 AND 368=a3)
      OR (e3=310 AND 226=b3)
EXCEPT
  SELECT c7 FROM t7
   WHERE NOT (b7 in (973,655,679,660,257,841)
           OR (c7=341 OR 750=b7 OR c7=729)
           OR (635=c7 AND 879=a7))
UNION ALL
  SELECT a6 FROM t6
   WHERE d6 in (822,2,869,147)
      OR b6 in (967,601,882,696,650,230)
      OR d6 in (446,35,457)
EXCEPT
  SELECT a4 FROM t4
   WHERE NOT ((763=e4 AND a4=31 AND 938=b4 AND 943=d4 AND 299=c4)
           OR (e4=35 OR e4=179 OR 948=c4)
           OR (237=e4));
