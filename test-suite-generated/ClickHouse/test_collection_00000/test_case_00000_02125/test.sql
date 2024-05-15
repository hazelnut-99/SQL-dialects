SELECT x, arrayJoin(x) FROM (SELECT materialize([(1, 2), (3, 4), (5, 6)]) AS x);
