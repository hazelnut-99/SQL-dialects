SELECT c6 FROM t6
   WHERE (129=d6 AND a6=653 AND 915=e6)
      OR a6 in (128,718,764,531,33)
UNION
  SELECT a4 FROM t4
   WHERE (b4=982 OR e4=512)
      OR (b4=58 AND a4=170 AND c4=188 AND e4=480 AND 449=d4)
      OR (982=b4)
EXCEPT
  SELECT b5 FROM t5
   WHERE NOT ((668=c5)
           OR (18=c5 AND e5=287 AND 499=b5)
           OR c5 in (734,689,293,978,187,384,149,31,198,825,485))
UNION
  SELECT c1 FROM t1
   WHERE a1 in (785,161,754,267,20)
      OR e1 in (904,685,463,89,731,962,483,896,717,402,312,628,87,268)
      OR (619=d1 AND 963=e1 AND c1=882)
UNION ALL
  SELECT d2 FROM t2
   WHERE (b2=676 AND e2=938 AND a2=253 AND 233=d2 AND c2=560)
      OR (d2=897 OR 556=e2)
UNION ALL
  SELECT e7 FROM t7
   WHERE a7 in (11,848,863,466,945,912,27,806,500)
      OR (d7=226)
      OR e7 in (503,499,291)
EXCEPT
  SELECT a8 FROM t8
   WHERE NOT ((878=b8 AND 533=e8))
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT (e3 in (272,321,365,989,823,765,578,592,833,271,651,526));
