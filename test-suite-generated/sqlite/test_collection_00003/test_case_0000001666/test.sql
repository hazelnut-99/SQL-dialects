SELECT c7 FROM t7
   WHERE (706=a7 OR 288=c7)
      OR c7 in (14,146,102,906,206)
      OR (d7=296)
UNION ALL
  SELECT a2 FROM t2
   WHERE (e2=547 AND d2=310 AND b2=433 AND 980=a2 AND c2=773)
UNION ALL
  SELECT b1 FROM t1
   WHERE (407=d1 OR c1=481 OR d1=427)
EXCEPT
  SELECT a6 FROM t6
   WHERE NOT (b6 in (0,214,662,993,606,296,250,232,290,449,537,44,850)
           OR (210=b6 OR 967=b6 OR d6=393)
           OR (d6=35));
