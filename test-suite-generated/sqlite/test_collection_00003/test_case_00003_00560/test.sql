SELECT a4 FROM t4
   WHERE (d4=55 AND c4=904 AND b4=607)
      OR e4 in (491,543,372)
      OR b4 in (713,982,653,884,469,68,784,33,961,700)
UNION ALL
  SELECT c1 FROM t1
   WHERE b1 in (468,828,355,944,128,993,556,440)
      OR (b1=281 OR 259=c1 OR 315=c1)
      OR (d1=175 OR c1=309 OR 787=c1)
UNION ALL
  SELECT c2 FROM t2
   WHERE (754=b2)
      OR (d2=158 OR e2=556)
      OR d2 in (14,547,10,488)
EXCEPT
  SELECT a9 FROM t9
   WHERE NOT ((a9=821)
           OR a9 in (463,821,610,78,685,149,962,41))
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT ((a5=513 OR a5=882 OR 104=e5)
           OR d5 in (787,938,731,557,343,745,521,835,360,114,171,276))
UNION ALL
  SELECT c6 FROM t6
   WHERE b6 in (781,214,993,629,262,997,461,834,989)
      OR a6 in (877,116,211,825,680,653,643,121,731,85,683,240,751);
