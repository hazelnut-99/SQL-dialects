SELECT e1 FROM t1
   WHERE c1 in (771,246,62,553,765)
      OR (a1=237 AND e1=468 AND 368=c1)
UNION ALL
  SELECT a7 FROM t7
   WHERE (996=d7)
EXCEPT
  SELECT d6 FROM t6
   WHERE NOT ((754=e6 AND b6=997)
           OR (d6=151 AND b6=421 AND e6=809 AND 270=c6))
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT (a5 in (174,586,740,53,332,339,800,478,826,301,180,929,536)
           OR (a5=851 AND 732=e5 AND 924=c5 AND b5=338 AND 111=d5))
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT ((719=d3 AND 178=b3 AND e3=846)
           OR (635=d3))
EXCEPT
  SELECT a9 FROM t9
   WHERE NOT (d9 in (909,383,226,224)
           OR e9 in (944,744,944,307,804,854,486,264)
           OR (808=d9 OR 127=b9 OR e9=149));
