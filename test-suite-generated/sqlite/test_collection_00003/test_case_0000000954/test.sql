SELECT c9 FROM t9
   WHERE (d9=763 AND 587=c9)
      OR (e9=353 OR a9=959 OR d9=347)
      OR (853=c9 AND e9=699 AND a9=924 AND d9=145 AND b9=50)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT ((b3=70 AND 683=d3)
           OR e3 in (145,424,984,724,829,467,7,3,836));
