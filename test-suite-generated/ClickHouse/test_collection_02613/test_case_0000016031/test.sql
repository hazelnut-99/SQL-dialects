SELECT uniqTheta(x, arrayMap(elem -> [elem, elem], x)) FROM (SELECT arrayJoin([[], ['a'], ['a', 'b'], []]) AS x);
