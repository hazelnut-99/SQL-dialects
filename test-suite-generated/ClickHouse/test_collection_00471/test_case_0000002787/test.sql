SELECT uniqExact(x) FROM (SELECT arrayJoin([[], ['a'], ['a', 'b'], []]) AS x);
