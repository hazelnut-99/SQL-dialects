SELECT c9 FROM t9
   WHERE b9 in (858,103,821,423,125,2)
      OR a9 in (511,172,694,177)
UNION
  SELECT d3 FROM t3
   WHERE (457=a3 OR 890=d3)
      OR b3 in (113,480,847,632,701,914,246,28,273,103)
      OR (a3=42 AND 505=b3 AND 285=c3 AND e3=981)
EXCEPT
  SELECT d6 FROM t6
   WHERE NOT ((a6=414 OR 173=a6 OR 24=e6)
           OR e6 in (24,511,360,808,840,466,707,91,5,257,585,395)
           OR d6 in (689,807,36,2,376,667,60,393,488));
