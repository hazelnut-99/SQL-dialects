SELECT e2 FROM t2
   WHERE e2 in (512,812,386,556,242,205,841,852,307,696)
      OR (457=a2 AND 346=c2 AND 663=d2 AND 560=e2 AND b2=932)
      OR e2 in (366,16,117,510,228,647)
UNION ALL
  SELECT a5 FROM t5
   WHERE (a5=867 OR c5=570 OR 874=e5)
      OR (390=e5 OR b5=820)
      OR a5 in (81,878,615,339,730,301)
UNION
  SELECT b1 FROM t1
   WHERE b1 in (446,836,670,270,128,149)
EXCEPT
  SELECT d6 FROM t6
   WHERE NOT (d6 in (750,970,600,807,711,446,590,458,786,911)
           OR (216=c6 OR 414=a6)
           OR (847=e6 AND b6=276 AND 911=d6 AND 807=c6 AND 966=a6))
UNION
  SELECT e3 FROM t3
   WHERE (e3=596 OR 101=a3)
      OR (d3=95 AND 551=b3 AND 211=c3)
      OR (c3=823)
UNION
  SELECT e9 FROM t9
   WHERE (b9=524)
      OR d9 in (264,919,597,495,268,602,763,224,855,795,938,464)
      OR b9 in (864,912,549,804,893)
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT ((651=a7 AND 392=b7)
           OR e7 in (122,303,503,841,638,183,184,282)
           OR (974=d7 AND 862=e7 AND b7=424 AND c7=954 AND a7=921))
UNION ALL
  SELECT b8 FROM t8
   WHERE (273=c8 OR 876=d8 OR 889=b8)
      OR (187=c8 AND b8=386 AND a8=848 AND 761=e8);
