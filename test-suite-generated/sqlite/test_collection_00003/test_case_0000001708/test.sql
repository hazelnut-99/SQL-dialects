SELECT d8 FROM t8
   WHERE (394=c8)
      OR e8 in (186,422,384)
      OR d8 in (706,192,370,494,474,636,637,197,210,735)
UNION ALL
  SELECT b5 FROM t5
   WHERE c5 in (56,18,37,825,657,689,441)
      OR (a5=18)
      OR c5 in (3,941,649,723,441,18,797,86,756,856,960,625)
UNION ALL
  SELECT d3 FROM t3
   WHERE (77=c3 AND b3=665 AND a3=822 AND d3=483 AND e3=526)
      OR (3=e3)
      OR (c3=324 OR b3=226 OR e3=814)
EXCEPT
  SELECT b1 FROM t1
   WHERE NOT (a1 in (950,294,499,280,821,629,358,521,820,173,707,963,222))
UNION
  SELECT b6 FROM t6
   WHERE (b6=511 OR e6=31 OR 764=a6)
      OR (d6=924 OR c6=452)
      OR (126=b6);
