SELECT uniqTheta((x, toString(x))) FROM (SELECT arrayJoin([[], ['a'], ['a', 'b'], []]) AS x);
