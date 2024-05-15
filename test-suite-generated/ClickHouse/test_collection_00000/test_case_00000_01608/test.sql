SELECT arrayStringConcat(arr, ';') FROM (SELECT materialize([1, 23, 456]) AS arr);
