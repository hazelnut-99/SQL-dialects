SELECT uniqExact(x) FROM (SELECT arrayJoin([[], ['a'], ['a', NULL, 'b'], []]) AS x);
