SELECT d5 FROM t5
   WHERE c5 in (960,293,437,696,441,818,598,734)
      OR e5 in (364,906,554,41,894,287)
      OR (c5=155 AND 369=a5 AND 789=d5 AND b5=403)
UNION
  SELECT e8 FROM t8
   WHERE (366=d8)
      OR c8 in (691,789,381,448,160,149,117)
UNION
  SELECT e3 FROM t3
   WHERE d3 in (984,307,168,983)
      OR c3 in (750,800,826,305,524,647,692,592,947)
      OR d3 in (363,950,624,487,708,2)
EXCEPT
  SELECT b1 FROM t1
   WHERE NOT ((a1=538 AND 48=e1 AND c1=289 AND 213=b1)
           OR (538=a1 AND 48=e1 AND c1=289 AND b1=213 AND d1=806)
           OR (805=c1))
EXCEPT
  SELECT b4 FROM t4
   WHERE NOT ((e4=381 AND d4=988 AND 982=a4 AND 581=c4 AND 627=b4));
