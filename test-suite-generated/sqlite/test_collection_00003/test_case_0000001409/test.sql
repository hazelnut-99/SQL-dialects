SELECT b2 FROM t2
   WHERE (e2=923)
UNION ALL
  SELECT b5 FROM t5
   WHERE (d5=964 OR a5=163)
      OR b5 in (234,861,951,26,820,393,759,717,789);
