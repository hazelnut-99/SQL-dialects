SELECT e8 FROM t8
   WHERE (d8=60 AND 973=c8 AND b8=704)
      OR (624=d8)
      OR (a8=328 AND 846=e8 AND b8=963 AND d8=845)
INTERSECT
  SELECT a2 FROM t2
   WHERE NOT ((779=b2 OR 820=b2))
UNION
  SELECT b1 FROM t1
   WHERE (23=a1 AND 426=b1)
      OR (b1=213 OR b1=857)
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT ((375=d3 OR e3=239)
           OR a3 in (952,865,895,513,992,551)
           OR e3 in (914,951,119))
UNION
  SELECT d4 FROM t4
   WHERE (736=d4 AND 964=c4 AND 903=b4 AND 103=e4 AND a4=386);
