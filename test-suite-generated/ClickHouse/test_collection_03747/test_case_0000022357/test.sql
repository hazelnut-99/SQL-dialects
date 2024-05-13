SELECT '-2^31', maxMerge(x), length(maxMerge(x)) from (select CAST(unhex('00000080') || randomString(100500), 'AggregateFunction(max, String)') as x);
