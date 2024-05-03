SELECT uniq(x) FROM (SELECT arrayJoin([[], ['a'], ['a', 'b'], []]) AS x);
