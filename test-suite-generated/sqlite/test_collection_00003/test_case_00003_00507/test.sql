SELECT a8 FROM t8
   WHERE (88=c8)
      OR (459=b8 OR 642=b8 OR d8=2)
      OR (c8=935 OR 56=e8)
UNION ALL
  SELECT a2 FROM t2
   WHERE (525=d2 OR 733=a2 OR 404=d2)
      OR (964=c2)
EXCEPT
  SELECT c6 FROM t6
   WHERE NOT ((66=a6 AND 123=c6 AND 734=d6 AND e6=554 AND 449=b6)
           OR e6 in (329,617,622,816,353,489,360,550,237)
           OR (d6=36 AND 764=a6 AND 44=b6 AND 668=e6))
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT (b1 in (255,295,645,211,853,981,404,242,674,113,468,862,346,384)
           OR (953=a1))
UNION ALL
  SELECT b7 FROM t7
   WHERE (131=d7 AND b7=175 AND 452=a7)
      OR (c7=441 AND 998=a7)
      OR e7 in (595,31,31,302,827,79)
EXCEPT
  SELECT b4 FROM t4
   WHERE NOT ((563=b4 OR 767=c4 OR 665=d4))
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT ((b3=127 OR 947=a3 OR b3=159)
           OR (b3=302 AND d3=913));
