SELECT c5 FROM t5
   WHERE (545=c5)
      OR c5 in (471,818,756,489,86,625)
INTERSECT
  SELECT e4 FROM t4
   WHERE NOT ((422=a4 OR d4=907 OR 849=b4)
           OR a4 in (74,778,337,756)
           OR (b4=387 OR b4=267))
UNION ALL
  SELECT a6 FROM t6
   WHERE a6 in (861,540,366)
      OR (a6=40 OR d6=256 OR c6=751)
UNION
  SELECT e9 FROM t9
   WHERE e9 in (978,19,117,161,239,255,788,150);
