SELECT * FROM (
  SELECT * FROM union_bug WHERE Event = 'A'
 UNION ALL
  SELECT * FROM union_bug WHERE Event = 'B'
) ORDER BY Datetime;
