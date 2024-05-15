SELECT uniqExact((x, x)) FROM (SELECT arrayJoin([[], ['a'], ['a', 'b'], []]) AS x);
