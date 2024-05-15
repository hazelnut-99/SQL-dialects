SELECT '-2', maxMerge(x), length(maxMerge(x)) from (select CAST(unhex('fffffffe') || randomString(100500), 'AggregateFunction(max, String)') as x);
