SELECT b8 FROM t8
   WHERE (651=a8 OR 397=b8)
INTERSECT
  SELECT d1 FROM t1
   WHERE NOT ((c1=498))
UNION
  SELECT d3 FROM t3
   WHERE (273=d3 AND 826=c3 AND a3=376 AND e3=425)
UNION
  SELECT c2 FROM t2
   WHERE c2 in (360,27,46)
      OR (c2=22 AND 669=d2 AND b2=635)
      OR c2 in (283,729,312,560,900,290,61,274);
