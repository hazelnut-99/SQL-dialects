SELECT c8 FROM t8
   WHERE (c8=160 OR e8=38)
      OR (579=e8)
      OR (d8=637 AND 442=c8 AND e8=180)
UNION ALL
  SELECT a6 FROM t6
   WHERE (e6=711 OR c6=177 OR 158=b6)
      OR e6 in (550,972,617,794,711,808,847,654,67);
