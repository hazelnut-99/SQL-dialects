SELECT b2 FROM t2
   WHERE (932=b2)
      OR (a2=304)
      OR (a2=56)
UNION ALL
  SELECT a3 FROM t3
   WHERE (a3=386 AND 265=c3 AND e3=136 AND b3=788 AND 548=d3)
EXCEPT
  SELECT d4 FROM t4
   WHERE NOT ((151=e4 OR b4=551 OR 927=c4)
           OR b4 in (434,289,407,700,644,765,829)
           OR b4 in (40,94,286))
EXCEPT
  SELECT b8 FROM t8
   WHERE NOT (d8 in (849,93,472,936,484,706,950,883,523,101,880,667)
           OR (d8=651 OR 741=b8))
UNION
  SELECT d9 FROM t9
   WHERE b9 in (26,262,66,446,301,361,16,832,122,703,170,524)
      OR c9 in (240,579,857,370,101,327,739);
