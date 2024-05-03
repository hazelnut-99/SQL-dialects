SELECT uniq(x, x) FROM (SELECT arrayJoin([[], ['a'], ['a', 'b'], []]) AS x);
