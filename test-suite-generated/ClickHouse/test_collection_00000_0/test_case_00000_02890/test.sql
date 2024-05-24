SELECT uniq(x) FROM (SELECT arrayJoin([[], ['a'], ['a', NULL, 'b'], []]) AS x);
