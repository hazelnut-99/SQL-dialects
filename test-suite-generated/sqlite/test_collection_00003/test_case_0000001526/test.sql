SELECT e2 FROM t2
   WHERE (c2=773 AND 547=e2 AND 433=b2 AND 310=d2)
UNION
  SELECT e9 FROM t9
   WHERE (744=e9 AND b9=13)
      OR (e9=647 OR 621=e9 OR e9=251)
      OR (e9=218 AND 111=d9)
UNION ALL
  SELECT c6 FROM t6
   WHERE b6 in (850,250,905,461,214)
      OR c6 in (4,287,480,295,265,146,320,522)
      OR (b6=933 OR c6=910)
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT (c5 in (56,147,924,747,86,825,805,158,599,978,672,489,250,797)
           OR (944=e5 OR b5=98 OR 98=e5)
           OR (c5=855))
UNION ALL
  SELECT a3 FROM t3
   WHERE (b3=57 OR 354=d3)
      OR (376=a3 OR a3=979)
      OR (525=a3 OR b3=152 OR d3=520)
EXCEPT
  SELECT e7 FROM t7
   WHERE NOT (b7 in (892,519,660,881,735,396,192,120)
           OR (d7=341))
EXCEPT
  SELECT b1 FROM t1
   WHERE NOT ((146=e1 AND 49=b1 AND 275=d1)
           OR (172=c1 AND e1=299 AND a1=283)
           OR (221=e1 AND d1=75 AND 477=a1))
EXCEPT
  SELECT b4 FROM t4
   WHERE NOT ((e4=188 AND d4=626 AND b4=563 AND 536=c4 AND a4=502))
EXCEPT
  SELECT d8 FROM t8
   WHERE NOT ((665=b8 OR 608=d8));
