SELECT d5 FROM t5
   WHERE e5 in (130,287,585,802,9,554,812,885,522,157,587,929)
EXCEPT
  SELECT d4 FROM t4
   WHERE NOT (d4 in (498,661,482,491,317,524)
           OR (157=c4 AND 408=a4 AND 617=e4 AND 982=b4))
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT ((b3=584 AND 425=d3 AND c3=887)
           OR a3 in (364,30,164,818,457,12,872,429,959,303,727)
           OR (145=c3 AND 763=a3))
EXCEPT
  SELECT c6 FROM t6
   WHERE NOT ((e6=850 AND a6=963 AND d6=72)
           OR (672=a6 OR a6=355 OR 507=b6))
UNION
  SELECT d1 FROM t1
   WHERE (281=b1 AND 628=e1 AND 221=d1 AND c1=375 AND a1=521)
      OR (a1=640 OR e1=14);
