SELECT d6 FROM t6
   WHERE (159=c6 AND 396=a6 AND e6=531 AND b6=461)
UNION ALL
  SELECT b8 FROM t8
   WHERE (c8=790)
UNION
  SELECT e3 FROM t3
   WHERE (c3=777)
      OR a3 in (368,145,379,788,971,347,727,184,380,895,275,296,532,393)
      OR d3 in (809,683,662,607)
UNION ALL
  SELECT a9 FROM t9
   WHERE b9 in (228,66,136,142,595,447,178,759,612,171,64)
UNION
  SELECT e1 FROM t1
   WHERE b1 in (995,754,942,346,993,803,766,1,278,179,213)
      OR (d1=874 AND e1=158 AND a1=637)
EXCEPT
  SELECT b5 FROM t5
   WHERE NOT ((d5=810 OR 476=a5 OR d5=495)
           OR (e5=661));
