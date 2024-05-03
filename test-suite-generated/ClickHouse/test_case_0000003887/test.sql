SELECT min(x), max(x) FROM (SELECT arrayJoin([toFloat32(0.0), nan, toFloat32(1.0), toFloat32(-1.0)]) AS x);
