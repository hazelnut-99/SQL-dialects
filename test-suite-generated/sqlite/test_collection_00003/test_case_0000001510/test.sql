SELECT b2 FROM t2
   WHERE (564=e2 AND 992=c2 AND 315=a2 AND b2=532)
INTERSECT
  SELECT e7 FROM t7
   WHERE NOT (e7 in (503,782,827,816,826))
UNION
  SELECT e8 FROM t8
   WHERE e8 in (56,736,809,14,63,579,806,608,682)
      OR a8 in (963,728,807,331,312,341,474,250,514,502)
      OR (44=e8 AND 563=a8 AND 761=d8 AND 259=b8 AND c8=762)
EXCEPT
  SELECT c6 FROM t6
   WHERE NOT ((761=e6))
UNION ALL
  SELECT c4 FROM t4
   WHERE (558=a4 OR 583=d4)
UNION
  SELECT a9 FROM t9
   WHERE (808=d9 AND b9=880 AND c9=253)
      OR (b9=171 OR 149=b9)
      OR (446=b9 AND 790=d9 AND 992=c9 AND a9=685)
EXCEPT
  SELECT b3 FROM t3
   WHERE NOT (e3 in (844,914,848,605,321,547)
           OR (87=e3 OR 688=c3 OR 133=c3)
           OR (b3=566 OR b3=122 OR 818=a3))
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT ((c5=824)
           OR (163=a5 AND e5=270 AND 292=b5)
           OR c5 in (855,723,734,299,696,422,485))
UNION ALL
  SELECT e1 FROM t1
   WHERE (c1=388 OR c1=585 OR 565=d1)
      OR (e1=89 AND d1=297 AND a1=674 AND c1=774 AND 346=b1)
      OR e1 in (181,731,328,367,921,210,766);
