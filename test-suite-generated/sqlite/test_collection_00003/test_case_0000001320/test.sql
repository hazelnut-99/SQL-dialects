SELECT a8 FROM t8
   WHERE (a8=591 AND 705=c8 AND 548=e8 AND 542=d8 AND b8=992)
      OR (e8=320 AND 88=c8 AND 466=b8)
      OR a8 in (957,894,331)
UNION ALL
  SELECT c9 FROM t9
   WHERE b9 in (16,936,688,423,122,827,783,285,103,214,5)
      OR b9 in (26,342,578,595,821,496,568,880,211,891,379)
      OR (c9=834)
EXCEPT
  SELECT b6 FROM t6
   WHERE NOT (b6 in (541,421,993,350,92,984)
           OR (d6=561)
           OR a6 in (811,801,870,725))
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT ((a3=364 OR 814=b3)
           OR (136=e3 AND b3=788 AND d3=548 AND 386=a3)
           OR a3 in (699,615,594,995,129,265,337))
UNION ALL
  SELECT b2 FROM t2
   WHERE (993=a2 AND 198=d2)
      OR (337=c2 AND 504=b2)
      OR c2 in (887,746,411,807,360,292,729,728,450,466,964,137)
UNION
  SELECT c1 FROM t1
   WHERE (e1=731)
      OR d1 in (0,294,504,381,990,55,265,837,492)
UNION
  SELECT c4 FROM t4
   WHERE (605=a4 AND 826=b4 AND c4=44)
      OR (d4=907 OR b4=802 OR b4=982)
UNION
  SELECT b5 FROM t5
   WHERE (e5=943)
EXCEPT
  SELECT e7 FROM t7
   WHERE NOT (d7 in (418,892,164,108,684,777,226,886,142)
           OR (e7=4 OR c7=344)
           OR d7 in (177,328,105,134,526,79,828,666));
