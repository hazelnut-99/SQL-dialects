SELECT e2 FROM t2
   WHERE (e2=654 AND 365=d2 AND 725=b2)
INTERSECT
  SELECT b8 FROM t8
   WHERE NOT ((501=c8 AND a8=474)
           OR (542=d8 OR b8=184 OR 815=d8)
           OR c8 in (299,275,297,136,693,508,668,168,901,260,442,284,279))
INTERSECT
  SELECT d9 FROM t9
   WHERE NOT ((e9=647))
EXCEPT
  SELECT e7 FROM t7
   WHERE NOT ((b7=392 OR c7=781)
           OR b7 in (460,159,407))
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT ((e1=546 AND 767=a1 AND 447=b1))
EXCEPT
  SELECT b3 FROM t3
   WHERE NOT ((d3=866)
           OR (836=e3 AND c3=651 AND 214=b3));
