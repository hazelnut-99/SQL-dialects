SELECT '1M with 0', length(maxMerge(x)) from (select CAST(unhex('00001000') || randomString(0x00100000 - 1) || '\0', 'AggregateFunction(max, String)') as x);
