SELECT c1 FROM t1
   WHERE d1 in (662,335,432,798,936,217,492,679,717,949)
UNION ALL
  SELECT c2 FROM t2
   WHERE (a2=471)
      OR e2 in (647,411,783,923,673,322,433,547)
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT (c3 in (669,178,494,145,711,860,459,549,395,472,467)
           OR (a3=353 OR 577=b3)
           OR (892=e3))
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT ((180=c9 OR d9=420)
           OR d9 in (399,628,86,360,912,549,821,25)
           OR (587=c9 OR c9=327))
EXCEPT
  SELECT b7 FROM t7
   WHERE NOT ((a7=925 OR b7=973 OR d7=777)
           OR d7 in (397,296,902,325,924,524,225,590,795,142,575,418)
           OR (a7=684 AND 842=d7 AND 166=b7 AND 843=c7 AND 945=e7))
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT ((b5=855 AND 81=a5)
           OR (810=d5 OR d5=111)
           OR b5 in (412,716,606,143,161,273,98,193,855,113))
EXCEPT
  SELECT d4 FROM t4
   WHERE NOT ((480=b4 OR d4=593)
           OR e4 in (763,805,596,438,512,372,377,820,236,212,790,358,767,141))
UNION
  SELECT b8 FROM t8
   WHERE (d8=756 OR 796=b8 OR 188=c8)
UNION
  SELECT e6 FROM t6
   WHERE b6 in (290,880,281,126,739,825,243,217,662)
      OR (c6=961 AND 33=a6 AND 262=b6)
      OR (a6=45);
