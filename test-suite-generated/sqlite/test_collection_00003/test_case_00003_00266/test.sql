SELECT a8 FROM t8
   WHERE (e8=221 OR 386=a8)
      OR d8 in (511,48,761,439,190)
UNION ALL
  SELECT a2 FROM t2
   WHERE (371=a2 OR 318=c2 OR 91=a2)
      OR e2 in (945,572,433,125,688,981,721,366,205)
      OR (d2=351)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT ((983=d3 OR a3=929)
           OR e3 in (823,281,108,7,304,592,87,813))
EXCEPT
  SELECT b5 FROM t5
   WHERE NOT ((929=e5 OR 250=c5))
UNION ALL
  SELECT d7 FROM t7
   WHERE (506=d7 AND 102=c7 AND e7=851)
      OR b7 in (720,735,781);
