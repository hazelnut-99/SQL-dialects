SELECT d8 FROM t8
   WHERE (283=c8 OR b8=253)
      OR (e8=272 OR 741=b8)
UNION
  SELECT e3 FROM t3
   WHERE (457=a3 AND b3=876)
EXCEPT
  SELECT e9 FROM t9
   WHERE NOT ((584=a9 OR 759=b9 OR 688=b9)
           OR (720=d9 AND 900=b9 AND e9=736));
