SELECT d3 FROM t3
   WHERE (656=c3 OR c3=265)
UNION
  SELECT d2 FROM t2
   WHERE a2 in (382,297,10,471,853,80,891,308,543,508,175,505,680,898)
      OR (869=c2 OR d2=892 OR d2=10)
      OR (548=e2)
UNION ALL
  SELECT b8 FROM t8
   WHERE (b8=609 OR 608=d8 OR d8=761)
EXCEPT
  SELECT c4 FROM t4
   WHERE NOT ((584=c4 AND 379=b4))
EXCEPT
  SELECT e6 FROM t6
   WHERE NOT ((606=b6 OR 752=c6)
           OR c6 in (135,961,832,28,328,609,54,938,452,216,399,490,35,187))
UNION ALL
  SELECT c7 FROM t7
   WHERE (603=d7 AND 442=a7)
      OR (462=e7 AND 439=a7 AND 801=d7)
      OR (271=b7)
UNION
  SELECT e1 FROM t1
   WHERE (681=b1 AND 416=d1 AND c1=152 AND 918=a1)
      OR (d1=298 AND e1=468)
      OR (738=b1 AND 685=c1)
EXCEPT
  SELECT a9 FROM t9
   WHERE NOT (d9 in (960,554,608,899,166,549,164,602,597,668,878,258)
           OR (a9=611 AND b9=912 AND 912=d9 AND 323=c9 AND 737=e9)
           OR (d9=166 AND b9=496));
