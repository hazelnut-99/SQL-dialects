SELECT e2 FROM t2
   WHERE (135=a2)
      OR (211=b2 AND d2=844)
      OR (725=c2 OR e2=753 OR 538=a2)
EXCEPT
  SELECT c8 FROM t8
   WHERE NOT ((e8=46 AND a8=913)
           OR (74=c8 AND b8=105))
UNION ALL
  SELECT d3 FROM t3
   WHERE a3 in (164,576,135,162,591)
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT ((553=c1 OR 690=c1 OR c1=537)
           OR (a1=477 OR d1=75 OR 416=c1))
UNION ALL
  SELECT a7 FROM t7
   WHERE (d7=177 AND 503=b7 AND a7=707 AND 955=e7)
EXCEPT
  SELECT d4 FROM t4
   WHERE NOT ((657=d4)
           OR (e4=885 AND 220=b4)
           OR (a4=378 AND c4=162))
UNION
  SELECT a6 FROM t6
   WHERE (d6=750 OR e6=511);
