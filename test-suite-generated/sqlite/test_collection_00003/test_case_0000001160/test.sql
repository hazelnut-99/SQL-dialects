SELECT b1 FROM t1
   WHERE (122=e1 AND c1=12 AND b1=572)
      OR (936=d1)
UNION
  SELECT c8 FROM t8
   WHERE (510=e8 OR 386=b8)
      OR b8 in (269,773,852,647,806,102,975,228,405,624,540)
      OR a8 in (553,341,807,661,474)
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT ((730=a5 OR b5=934 OR b5=874))
EXCEPT
  SELECT d4 FROM t4
   WHERE NOT ((854=c4 AND e4=958 AND d4=373 AND 721=b4))
EXCEPT
  SELECT c3 FROM t3
   WHERE NOT (d3 in (850,797,520,173)
           OR (688=c3 OR 553=d3)
           OR (885=c3 AND 70=b3 AND e3=527 AND a3=396))
UNION ALL
  SELECT a2 FROM t2
   WHERE (a2=76 OR d2=153)
UNION ALL
  SELECT b6 FROM t6
   WHERE (729=d6 AND 290=b6 AND 503=e6 AND 25=c6 AND 531=a6)
      OR (682=e6 OR c6=572)
      OR (a6=731 AND b6=54)
EXCEPT
  SELECT a9 FROM t9
   WHERE NOT ((419=c9));
