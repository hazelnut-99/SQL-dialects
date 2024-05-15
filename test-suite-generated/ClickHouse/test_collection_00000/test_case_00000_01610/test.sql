SELECT arrayStringConcat(arr, '; ') FROM (SELECT materialize([toIPv4('127.0.0.1'), toIPv4('1.0.0.1')]) AS arr);
