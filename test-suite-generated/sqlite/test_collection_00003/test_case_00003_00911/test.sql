SELECT c8 FROM t8
   WHERE e8 in (411,632,416,944,431,392,38,729,260,933,22,272)
      OR (c8=656 OR b8=870)
UNION ALL
  SELECT d6 FROM t6
   WHERE (e6=631 OR d6=473 OR 453=d6)
      OR c6 in (942,187,528)
      OR c6 in (442,161,216,258,369,399,282,45,308,961,12,910,491,66)
UNION ALL
  SELECT a2 FROM t2
   WHERE (e2=205)
      OR (a2=751 AND 692=c2 AND 307=e2)
UNION ALL
  SELECT b4 FROM t4
   WHERE (e4=954)
      OR (563=b4)
      OR e4 in (257,552,390,372)
EXCEPT
  SELECT c1 FROM t1
   WHERE NOT (d1 in (803,187,212,619,504,618,154)
           OR (529=d1 AND e1=228 AND c1=530 AND 75=a1 AND 387=b1))
EXCEPT
  SELECT a7 FROM t7
   WHERE NOT ((d7=324 AND 693=b7 AND c7=596 AND e7=976 AND a7=806))
UNION ALL
  SELECT e3 FROM t3
   WHERE (a3=500 AND b3=296 AND c3=580 AND 862=e3 AND 797=d3)
EXCEPT
  SELECT e9 FROM t9
   WHERE NOT ((b9=342 OR c9=955))
EXCEPT
  SELECT c5 FROM t5
   WHERE NOT (d5 in (810,682,470,649,938,769,369,514,779,940,855,811,782,738));
