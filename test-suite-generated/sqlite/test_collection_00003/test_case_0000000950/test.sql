SELECT b2 FROM t2
   WHERE e2 in (40,812,294,205,428,427,564,123,217,572,441,117,131,37)
      OR e2 in (294,579,148)
      OR (a2=916 AND e2=521)
EXCEPT
  SELECT b9 FROM t9
   WHERE NOT (a9 in (907,450,269,712,875,611,584)
           OR (d9=720 AND a9=739 AND 736=e9 AND 900=b9 AND c9=118))
UNION ALL
  SELECT b4 FROM t4
   WHERE (281=a4 AND 600=e4 AND d4=549 AND 752=c4 AND b4=288)
      OR d4 in (509,901,736,574,881,968,247,593)
      OR e4 in (552,792,300,358,85,725,37,147,543,438)
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT ((a3=98 OR d3=944))
UNION
  SELECT b5 FROM t5
   WHERE (555=d5 OR c5=196)
      OR (d5=361 OR 855=c5)
EXCEPT
  SELECT c1 FROM t1
   WHERE NOT (d1 in (990,275,602,87,748,213,913,265,874,323,277,750,163,121))
UNION
  SELECT d6 FROM t6
   WHERE c6 in (161,677,446,84,54,415,65,992,399,242);
