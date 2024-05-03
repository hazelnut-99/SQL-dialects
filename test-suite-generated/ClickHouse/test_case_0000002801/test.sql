SELECT uniqUpTo(3)((x, x)) FROM (SELECT arrayJoin([[], ['a'], ['a', 'b'], []]) AS x);
