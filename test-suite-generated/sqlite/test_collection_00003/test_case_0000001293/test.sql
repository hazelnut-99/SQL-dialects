SELECT d4 FROM t4
   WHERE (b4=2 AND 951=e4 AND c4=936)
      OR (469=b4 OR 568=d4 OR a4=662)
      OR (d4=905 AND 147=e4 AND 387=b4 AND 933=a4)
UNION ALL
  SELECT e8 FROM t8
   WHERE (331=a8)
EXCEPT
  SELECT c7 FROM t7
   WHERE NOT ((526=d7)
           OR c7 in (467,688,243,659,344,441,813,557,38,725,22,508,432,341)
           OR c7 in (146,780,709,966))
UNION
  SELECT c6 FROM t6
   WHERE (d6=467)
      OR b6 in (954,0,427,989,512,696,774)
UNION
  SELECT b3 FROM t3
   WHERE (e3=605 AND c3=494)
UNION
  SELECT b1 FROM t1
   WHERE e1 in (628,896,838,139,313,161,463,300,522,766,268)
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT (d5 in (238,321,557,33,916,271,171,514,818,111,856));
