SELECT uniqUpTo(3)((x, toString(x))) FROM (SELECT arrayJoin([[], ['a'], ['a', 'b'], []]) AS x);
