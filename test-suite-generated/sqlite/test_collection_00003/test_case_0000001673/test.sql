SELECT a1 FROM t1
   WHERE a1 in (324,215,609,330,380,810,460)
      OR (d1=212 OR e1=300 OR 462=b1)
INTERSECT
  SELECT b7 FROM t7
   WHERE NOT ((c7=467 AND 362=b7 AND a7=952 AND e7=319 AND d7=199)
           OR b7 in (798,422,655,634,257,896,514)
           OR c7 in (482,12,816,523,103))
UNION ALL
  SELECT c5 FROM t5
   WHERE (114=a5)
      OR (b5=874 OR a5=55 OR b5=234)
      OR (c5=443)
UNION ALL
  SELECT a6 FROM t6
   WHERE (e6=678);
