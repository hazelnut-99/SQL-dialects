SELECT b8 FROM t8
   WHERE d8 in (223,534,542,472,761,989,482)
      OR (864=e8 AND c8=973 AND 704=b8 AND 620=a8 AND d8=60)
      OR (a8=200 AND b8=640 AND d8=682)
EXCEPT
  SELECT e4 FROM t4
   WHERE NOT ((271=a4 OR c4=47)
           OR d4 in (987,229,141,277,639,713,60)
           OR (c4=619 OR c4=723))
UNION
  SELECT c9 FROM t9
   WHERE (365=a9 OR e9=335)
UNION ALL
  SELECT c6 FROM t6
   WHERE a6 in (366,870,474,211,718)
      OR d6 in (129,974,869)
      OR (159=c6 AND e6=531 AND a6=396)
EXCEPT
  SELECT b1 FROM t1
   WHERE NOT ((284=e1 AND 885=d1 AND 513=a1 AND b1=211 AND c1=736)
           OR (766=b1 AND e1=568 AND c1=39 AND d1=951)
           OR (c1=88))
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT (b7 in (660,120,837)
           OR a7 in (691,356,114,945,136,167,277,593,865,158,806));
