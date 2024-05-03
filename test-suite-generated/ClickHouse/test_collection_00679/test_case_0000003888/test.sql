SELECT min(x), max(x) FROM (SELECT arrayJoin([toFloat64(0.0), -nan, toFloat64(1.0), toFloat64(-1.0)]) AS x);
