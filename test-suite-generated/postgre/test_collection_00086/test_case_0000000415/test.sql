SELECT COUNT(*) FROM prt1 FULL JOIN prt2 p2(b,a,c) USING(a,b) FULL JOIN prt2 p3(b,a,c) USING (a, b)
  WHERE a BETWEEN 490 AND 510;
