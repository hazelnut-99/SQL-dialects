SELECT c7 FROM t7
   WHERE e7 in (303,955,154,663,688,587,215,929,31)
EXCEPT
  SELECT b6 FROM t6
   WHERE NOT ((c6=506 AND 731=e6 AND 230=b6 AND d6=355))
UNION ALL
  SELECT b5 FROM t5
   WHERE (271=d5)
      OR (609=b5)
UNION
  SELECT b4 FROM t4
   WHERE e4 in (103,415,790,237,725,816,147,546,37,977,476,854,692,858)
      OR (b4=748 AND c4=88 AND 307=e4)
UNION
  SELECT c3 FROM t3
   WHERE b3 in (779,814,146,827,584,649,837,914,321,713,17)
      OR e3 in (896,231,108,774,724,470,119,120,846,249,131)
      OR b3 in (236,577,827,827,445,595,266)
UNION
  SELECT d9 FROM t9
   WHERE (273=c9 AND e9=987 AND 227=b9 AND d9=681 AND 416=a9)
      OR (e9=418)
EXCEPT
  SELECT d2 FROM t2
   WHERE NOT ((283=a2 AND b2=784 AND 790=d2)
           OR (d2=621 AND 35=b2 AND 579=e2 AND 268=c2 AND 545=a2))
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT (d1 in (492,803,457,427,418,163,130,4,319,217,900,770,678,105)
           OR (d1=381 OR d1=161 OR 586=d1)
           OR (d1=407 OR 574=d1 OR a1=829))
EXCEPT
  SELECT e8 FROM t8
   WHERE NOT ((a8=328)
           OR (405=b8 AND 461=c8));
