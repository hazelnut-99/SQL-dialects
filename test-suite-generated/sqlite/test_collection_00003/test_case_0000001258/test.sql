SELECT c2 FROM t2
   WHERE (925=e2 AND c2=466 AND b2=599 AND 80=d2)
      OR (179=c2)
      OR a2 in (297,279,508,235)
EXCEPT
  SELECT d9 FROM t9
   WHERE NOT ((b9=214)
           OR (a9=416))
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT ((c5=551 OR 551=c5)
           OR a5 in (485,749,929,817,81,335,536,319,153,114,342,392))
EXCEPT
  SELECT c7 FROM t7
   WHERE NOT ((b7=306 OR e7=844 OR a7=134)
           OR (e7=979 OR 736=a7 OR 635=c7)
           OR (7=e7))
EXCEPT
  SELECT b6 FROM t6
   WHERE NOT ((c6=961))
EXCEPT
  SELECT c8 FROM t8
   WHERE NOT (e8 in (105,561,296)
           OR (250=c8)
           OR (c8=273 AND 553=a8 AND d8=472))
UNION
  SELECT d1 FROM t1
   WHERE (e1=558 AND 69=c1)
      OR (e1=110 OR e1=299 OR 738=a1);
