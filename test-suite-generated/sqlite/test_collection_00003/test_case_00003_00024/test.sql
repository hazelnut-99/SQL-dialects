SELECT e3 FROM t3
   WHERE (b3=740 AND 406=e3 AND 644=a3 AND 482=d3)
      OR (958=d3 OR 423=d3 OR 614=a3)
      OR (b3=983 OR a3=190 OR 226=b3)
UNION ALL
  SELECT d8 FROM t8
   WHERE (b8=705 OR 811=e8)
      OR c8 in (151,907,5,88,291,273,196,100,691,111,656,250,332)
EXCEPT
  SELECT a7 FROM t7
   WHERE NOT (e7 in (663,462,903,455,6,816,499,460)
           OR (435=c7 AND 442=d7 AND e7=988 AND 134=a7 AND 804=b7));
