SELECT c6 FROM t6
   WHERE (186=d6 OR 731=e6)
      OR e6 in (6,682,329,211)
      OR (e6=77 AND 350=b6 AND 832=c6)
UNION ALL
  SELECT c5 FROM t5
   WHERE (878=a5)
      OR (321=d5 OR 485=a5)
      OR (205=b5)
UNION ALL
  SELECT c1 FROM t1
   WHERE (a1=776 AND 217=d1 AND e1=181 AND 898=c1 AND b1=149)
UNION ALL
  SELECT c2 FROM t2
   WHERE e2 in (223,721,151,564,140,40,936,381,769,213)
      OR d2 in (897,476,547,598,803)
      OR (521=e2 OR d2=310 OR b2=649)
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT (e9 in (837,567,737,750,127,936,150,486,968,954)
           OR (804=e9))
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT ((929=a3 AND 983=d3 AND 844=e3)
           OR (e3=844 OR e3=731 OR 813=b3)
           OR (a3=729 AND e3=131 AND d3=729 AND c3=669 AND b3=651))
EXCEPT
  SELECT a4 FROM t4
   WHERE NOT ((c4=804 OR 469=b4))
EXCEPT
  SELECT b7 FROM t7
   WHERE NOT ((136=a7 AND d7=549 AND b7=841)
           OR (478=c7 OR a7=442 OR a7=709))
EXCEPT
  SELECT e8 FROM t8
   WHERE NOT (d8 in (179,141,446,630,706,2,637,124,738,494)
           OR (b8=806));
