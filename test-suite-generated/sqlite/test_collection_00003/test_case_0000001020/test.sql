SELECT d9 FROM t9
   WHERE d9 in (129,489,919,744,591,912,965,987,668)
EXCEPT
  SELECT c8 FROM t8
   WHERE NOT (d8 in (116,989,344,48,894,58,682))
EXCEPT
  SELECT e5 FROM t5
   WHERE NOT (b5 in (629,789,186,784,665,759,820,623,499,98,661))
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT ((525=a3)
           OR d3 in (428,635,720,503,809)
           OR d3 in (74,890,231,399,358,895,866,701))
UNION
  SELECT e4 FROM t4
   WHERE (857=a4 OR c4=658)
EXCEPT
  SELECT a1 FROM t1
   WHERE NOT ((e1=855 AND 26=b1 AND 492=a1)
           OR a1 in (283,280,23,864,215,52,358,382,879,352,866,268)
           OR (e1=546 AND b1=435 AND 586=d1 AND a1=643 AND c1=654))
UNION
  SELECT c6 FROM t6
   WHERE d6 in (729,750,767,991,424,734,256,578,488,489)
      OR (b6=650)
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT ((579=b7)
           OR (d7=139 AND 306=b7 AND e7=499));
