SELECT b6 FROM t6
   WHERE (696=a6 AND d6=970 AND c6=543 AND 1=e6 AND 144=b6)
UNION
  SELECT c3 FROM t3
   WHERE a3 in (997,275,197,244)
      OR (247=c3)
EXCEPT
  SELECT a7 FROM t7
   WHERE NOT ((827=e7 AND b7=781)
           OR (c7=705 AND d7=367 AND 500=a7 AND b7=832)
           OR (391=d7))
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT (c1 in (553,882,523,246,284,955,703,530,670,788,416)
           OR b1 in (556,422,414,432,5,594,914,128,60,404,233,346,179))
UNION ALL
  SELECT c4 FROM t4
   WHERE (b4=884 AND 364=d4 AND 586=c4 AND e4=405 AND 662=a4)
      OR (565=e4 AND 210=a4 AND c4=694 AND d4=60)
      OR (e4=352)
UNION
  SELECT a5 FROM t5
   WHERE (342=a5 AND 858=b5 AND 37=c5 AND 271=e5 AND d5=811)
      OR (d5=33 AND e5=708)
      OR (d5=745 AND 319=a5 AND e5=702 AND c5=3 AND 544=b5);
