SELECT x, arrayJoin(x) FROM (SELECT materialize([1, NULL, 2]) AS x);
