SELECT a7 FROM t7
   WHERE (290=e7)
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT (e5 in (150,13,888,621,141,287,343,807,558,180,764,656)
           OR (811=d5 OR 56=c5)
           OR (c5=613))
UNION ALL
  SELECT c8 FROM t8
   WHERE (894=d8 AND 981=b8)
      OR c8 in (404,418,88,299,266,113,899,117,541)
UNION
  SELECT d9 FROM t9
   WHERE (837=e9 AND c9=451)
EXCEPT
  SELECT a1 FROM t1
   WHERE NOT ((97=c1 AND 414=d1))
EXCEPT
  SELECT e2 FROM t2
   WHERE NOT ((193=c2 AND b2=278 AND e2=282 AND 317=d2 AND a2=10)
           OR b2 in (549,729,276,220,317,585,776,228,857,313,714,543,90)
           OR (b2=799))
UNION ALL
  SELECT e6 FROM t6
   WHERE (a6=522 OR 653=a6 OR 211=e6)
UNION ALL
  SELECT c3 FROM t3
   WHERE (e3=193)
      OR (46=d3 OR c3=869)
EXCEPT
  SELECT a4 FROM t4
   WHERE NOT ((439=a4 AND 979=d4 AND 535=b4 AND 37=e4 AND 451=c4)
           OR (936=c4 AND b4=986 AND a4=223 AND 144=d4 AND 438=e4));
