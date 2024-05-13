SELECT * FROM (SELECT -1 as x, dummy UNION ALL SELECT arrayJoin([-1]) as x, dummy);
