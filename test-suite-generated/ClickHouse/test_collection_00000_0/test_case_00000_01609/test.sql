SELECT arrayStringConcat(arr, ';') FROM (SELECT materialize([Null, 1, Null, 23, Null, 456, Null]) AS arr);
