SELECT a9 FROM t9
   WHERE (575=c9 OR d9=270 OR b9=118)
      OR (56=a9 AND d9=660 AND c9=643 AND b9=171)
UNION ALL
  SELECT d5 FROM t5
   WHERE b5 in (336,629,716,861,623,705,391)
      OR b5 in (665,186,606,403,193,389,336,336)
UNION
  SELECT a2 FROM t2
   WHERE (714=b2 AND 749=d2 AND e2=673 AND c2=251)
UNION ALL
  SELECT c6 FROM t6
   WHERE (292=c6 OR 801=a6)
      OR (504=c6)
      OR (240=a6 AND 256=d6)
EXCEPT
  SELECT d8 FROM t8
   WHERE NOT (a8 in (46,579,651,628,445,90,47,15,254,855,472,502,894))
UNION ALL
  SELECT b7 FROM t7
   WHERE d7 in (199,114,724,524,526,988,325,196,324,395,939,500,892,673)
      OR e7 in (552,144,827,156,844,122,302)
UNION ALL
  SELECT a1 FROM t1
   WHERE (b1=253)
      OR (667=e1 AND 380=a1 AND 255=b1)
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT ((269=b3 OR c3=777 OR e3=794)
           OR b3 in (788,381,73,27,236,685,368,405,977,720)
           OR (e3=169 OR 260=e3 OR 696=a3));
