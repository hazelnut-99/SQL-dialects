SELECT d3 FROM t3
   WHERE (b3=665 OR 710=b3 OR 988=d3)
      OR (b3=617 OR 701=b3)
      OR b3 in (166,632,811,454,405,203)
UNION
  SELECT c2 FROM t2
   WHERE (711=c2 AND 939=e2 AND a2=733 AND b2=549)
      OR (360=c2 OR 185=a2)
      OR c2 in (793,150,372,837)
UNION
  SELECT d1 FROM t1
   WHERE a1 in (513,406,702,363,862,668,460,215,553,461,992,280)
EXCEPT
  SELECT b4 FROM t4
   WHERE NOT ((229=d4))
EXCEPT
  SELECT d6 FROM t6
   WHERE NOT ((e6=154)
           OR (a6=839 OR b6=490))
UNION
  SELECT c7 FROM t7
   WHERE (92=c7 AND d7=265 AND 158=a7 AND e7=782 AND b7=949)
      OR (506=b7 AND 506=d7 AND a7=158)
      OR e7 in (976,303,561,282,215,595,234)
EXCEPT
  SELECT d9 FROM t9
   WHERE NOT ((240=a9 AND 713=e9)
           OR (821=a9))
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT (a5 in (696,519,800,958,749,174,867,740,904,929,796)
           OR (267=a5 OR e5=441 OR 335=a5))
EXCEPT
  SELECT a8 FROM t8
   WHERE NOT (e8 in (41,179,455,859,463,310));
