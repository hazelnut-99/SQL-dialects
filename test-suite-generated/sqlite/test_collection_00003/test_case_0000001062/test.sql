SELECT a7 FROM t7
   WHERE d7 in (79,391,265,666,781,603,325,399,902,183)
      OR (e7=302 OR b7=250 OR 341=d7)
      OR c7 in (232,488,934,301,705,857,843)
UNION
  SELECT d9 FROM t9
   WHERE (597=d9 OR 258=a9)
UNION
  SELECT c3 FROM t3
   WHERE (474=b3)
      OR (818=a3)
      OR (b3=456 OR 863=c3)
EXCEPT
  SELECT b5 FROM t5
   WHERE NOT (c5 in (261,681,527,941,923,774,734,855,934,27,941,313,442));
