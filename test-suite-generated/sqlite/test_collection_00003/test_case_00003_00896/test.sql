SELECT b1 FROM t1
   WHERE (b1=310 AND 254=d1 AND c1=629 AND a1=552)
      OR (461=a1 OR 49=b1 OR a1=75)
UNION
  SELECT c7 FROM t7
   WHERE (439=a7 AND d7=801 AND c7=948 AND 462=e7 AND 360=b7)
      OR (e7=887 OR b7=362)
UNION ALL
  SELECT e4 FROM t4
   WHERE (d4=236)
      OR d4 in (498,328,491,25,60,199)
      OR (e4=349 OR 631=e4);
