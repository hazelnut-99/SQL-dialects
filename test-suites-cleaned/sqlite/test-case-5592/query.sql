SELECT d6 FROM t6
   WHERE (942=c6 OR a6=128 OR a6=825)
      OR a6 in (692,2,132,396,839)
      OR (a6=129 OR e6=808)
EXCEPT
  SELECT a4 FROM t4
   WHERE NOT ((300=e4 OR d4=549)
           OR (993=c4 OR 434=b4 OR e4=596)
           OR (b4=402))
EXCEPT
  SELECT c2 FROM t2
   WHERE NOT ((d2=541 OR e2=679 OR b2=38))
EXCEPT
  SELECT b8 FROM t8
   WHERE NOT ((186=e8 OR 90=a8)
           OR (46=a8 OR 945=d8 OR 324=b8)
           OR (a8=728));
