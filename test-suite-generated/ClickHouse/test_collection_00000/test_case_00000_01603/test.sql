SELECT arrayStringConcat(arr, '; ') FROM (SELECT [toIPv4('127.0.0.1'), Null, toIPv4('1.0.0.1')] AS arr);
