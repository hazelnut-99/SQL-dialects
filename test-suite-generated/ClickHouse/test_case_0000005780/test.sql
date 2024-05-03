SELECT * FROM (
  SELECT Event, Datetime FROM union_bug WHERE Event = 'A'
 UNION ALL
  SELECT Event, Datetime FROM union_bug WHERE Event = 'B'
) ORDER BY Datetime;
