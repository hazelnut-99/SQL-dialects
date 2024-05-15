SELECT arrayStringConcat(arr, '; ') FROM (SELECT materialize([toDate('2021-10-01'), toDate('2021-10-02')]) AS arr);
