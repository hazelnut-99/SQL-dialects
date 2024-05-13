SELECT NOT x, isZeroOrNull(x) FROM (SELECT arrayJoin([1, 2, 3, NULL]) = 3 AS x);
