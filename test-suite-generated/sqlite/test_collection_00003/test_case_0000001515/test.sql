SELECT a9 FROM t9
   WHERE a9 in (78,11,891,28,149,263)
UNION ALL
  SELECT a3 FROM t3
   WHERE (c3=339 OR d3=139 OR 699=a3)
UNION ALL
  SELECT d2 FROM t2
   WHERE (a2=660)
EXCEPT
  SELECT c7 FROM t7
   WHERE NOT ((e7=455)
           OR c7 in (92,135,305,606,626,934)
           OR (87=a7));
