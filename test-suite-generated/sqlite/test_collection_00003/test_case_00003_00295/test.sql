SELECT b4 FROM t4
   WHERE (b4=58 AND 449=d4 AND 480=e4 AND 170=a4 AND c4=188)
EXCEPT
  SELECT a6 FROM t6
   WHERE NOT (e6 in (91,67,673,711,175,574,678,1,631,794,329)
           OR (528=c6 OR d6=446)
           OR b6 in (606,850,351,662,463,267))
UNION ALL
  SELECT e5 FROM t5
   WHERE (437=c5)
UNION ALL
  SELECT d2 FROM t2
   WHERE b2 in (820,864,903,628,414,228,21,779,170,585,93,217,543,170)
      OR (a2=851)
      OR (a2=789 AND c2=981 AND e2=220 AND d2=498)
UNION
  SELECT b8 FROM t8
   WHERE c8 in (965,321,851,381,321,789)
      OR c8 in (563,283,866)
      OR (a8=129 OR a8=210);
