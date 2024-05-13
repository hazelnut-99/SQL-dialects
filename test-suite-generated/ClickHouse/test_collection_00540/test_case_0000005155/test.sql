SELECT uniqExact(x) FROM (SELECT arrayJoin([[1, 2], [1, 2], [1, 2, 3], []]) AS x);
