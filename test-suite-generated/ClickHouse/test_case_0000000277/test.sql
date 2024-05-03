SELECT NOT x, isZeroOrNull(x) FROM (SELECT arrayJoin([1, 2, 3]) = 3 AS x);
