SELECT x, arrayJoin(x) FROM (SELECT materialize(arrayMap(x -> toFixedString(x, 5), ['Hello', 'world'])) AS x);
