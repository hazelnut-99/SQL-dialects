SELECT c8 FROM t8
   WHERE c8 in (901,691,419,79,160,899,431,821,230,187)
      OR b8 in (609,741,205,359,702,642,958,102,790,725)
INTERSECT
  SELECT a5 FROM t5
   WHERE NOT ((e5=549 AND d5=940 AND 373=a5 AND 231=b5)
           OR (249=c5 OR d5=779))
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT (c3 in (486,601,492,455,677,809,272,669,326,243)
           OR (c3=220 OR b3=124 OR c3=10)
           OR d3 in (81,913,782,444,981,495,541))
EXCEPT
  SELECT a9 FROM t9
   WHERE NOT (d9 in (878,694,51,305))
UNION ALL
  SELECT a1 FROM t1
   WHERE (e1=11 AND c1=683 AND b1=914)
      OR (685=c1 OR d1=298 OR 427=d1)
      OR (a1=918 OR e1=625)
EXCEPT
  SELECT b4 FROM t4
   WHERE NOT ((b4=603 OR 557=e4))
UNION ALL
  SELECT e7 FROM t7
   WHERE (720=b7 OR 781=b7)
      OR c7 in (103,364,478,257,180,860,98,146,341,944,302,377)
      OR d7 in (457,924,795,325,205,996,105,131,225)
UNION
  SELECT b2 FROM t2
   WHERE (897=b2)
      OR (d2=723 AND 90=b2 AND 137=c2)
      OR d2 in (216,836,86,953,235,317,80,265,2,126,448,46,137);
