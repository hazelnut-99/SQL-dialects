SELECT e7 FROM t7
   WHERE (142=d7 AND b7=222 AND a7=288)
UNION ALL
  SELECT c8 FROM t8
   WHERE (e8=106)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT ((792=c3 OR 170=d3)
           OR (c3=970 AND e3=131)
           OR (c3=651 OR 821=e3 OR e3=774))
UNION
  SELECT b5 FROM t5
   WHERE b5 in (484,183,975,846,685,320,143,234,526,971,640,205)
      OR d5 in (752,858,649,782)
UNION
  SELECT b1 FROM t1
   WHERE (a1=853 OR b1=523);
