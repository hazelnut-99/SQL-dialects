SELECT a3 FROM t3
   WHERE (727=a3 AND d3=642)
      OR (542=b3)
UNION ALL
  SELECT c1 FROM t1
   WHERE (654=c1 AND 586=d1 AND 435=b1)
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT (c7 in (397,302,377,934,564,764,389,375,981,887,98,12,280,341))
EXCEPT
  SELECT d2 FROM t2
   WHERE NOT ((818=b2 AND 315=d2 AND 805=a2 AND e2=783)
           OR (27=c2 AND d2=541 AND e2=434 AND b2=812))
UNION
  SELECT b9 FROM t9
   WHERE (d9=553)
      OR (d9=744 AND c9=332 AND b9=239 AND 267=e9)
      OR (706=a9)
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT ((e5=352 AND 817=a5 AND 274=d5 AND 601=c5 AND b5=56))
EXCEPT
  SELECT d8 FROM t8
   WHERE NOT ((671=a8)
           OR (c8=683 OR 136=c8 OR 211=b8));
