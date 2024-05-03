SELECT a, b FROM (SELECT a, *, arrayJoin(c) FROM (SELECT 1 AS a, 2 AS b, [3, 4] AS c));
