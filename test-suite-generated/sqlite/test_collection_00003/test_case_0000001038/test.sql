SELECT e7 FROM t7
   WHERE (c7=553 OR c7=843)
      OR d7 in (108,276,974,549)
      OR e7 in (793,983,587)
UNION
  SELECT e2 FROM t2
   WHERE (d2=241 AND 718=a2 AND 657=c2 AND b2=357 AND e2=510)
      OR a2 in (185,445,680,751,853,538,98,495)
UNION
  SELECT e4 FROM t4
   WHERE a4 in (139,451,997,408,422,574,92,579,558,72,510,473,261,756)
      OR (b4=139 AND d4=481 AND e4=71 AND a4=509 AND c4=768)
      OR (919=b4 AND 651=a4 AND e4=257 AND 989=d4)
EXCEPT
  SELECT b6 FROM t6
   WHERE NOT (c6 in (12,677,177,430)
           OR c6 in (242,832,620,287,506,749,295,123,961,942))
EXCEPT
  SELECT c5 FROM t5
   WHERE NOT (a5 in (867,319,921,174,342,586,369,445,242,540,341,832,730)
           OR d5 in (602,520,806,114,495,309,682,542,977)
           OR (c5=625));
