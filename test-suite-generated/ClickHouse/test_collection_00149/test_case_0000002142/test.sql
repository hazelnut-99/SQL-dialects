SELECT arrayStringConcat(arr, '; ') FROM (SELECT [toDate('2021-10-01'), Null, toDate('2021-10-02')] AS arr);
