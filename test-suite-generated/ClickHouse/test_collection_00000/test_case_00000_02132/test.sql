SELECT emptyArrayToSingle(arrayMap(x -> toString(x), arrayMap(x -> nullIf(x, 2), arrayJoin([emptyArrayUInt8(), [1], [2, 3]])))) AS arr;
