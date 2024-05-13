SELECT '-1', maxMerge(x), length(maxMerge(x)) from (select CAST(unhex('ffffffff') || randomString(100500), 'AggregateFunction(max, String)') as x);
