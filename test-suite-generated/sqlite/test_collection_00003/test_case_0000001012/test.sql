SELECT b2 FROM t2
   WHERE (c2=22 OR 509=c2)
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT ((e5=758 OR 759=b5)
           OR (d5=940)
           OR (c5=894 AND 921=a5 AND d5=557 AND 772=e5 AND b5=657))
EXCEPT
  SELECT d4 FROM t4
   WHERE NOT ((d4=260 AND 879=e4)
           OR (665=d4 OR a4=378)
           OR e4 in (381,954,123,767))
EXCEPT
  SELECT a1 FROM t1
   WHERE NOT ((c1=846)
           OR (531=e1 OR b1=384))
EXCEPT
  SELECT e9 FROM t9
   WHERE NOT ((d9=51 OR c9=332)
           OR (711=c9 AND a9=548 AND d9=420)
           OR (224=d9 OR 452=e9));
