SELECT '1M without 0', length(maxMerge(x)) from (select CAST(unhex('00001000') || randomString(0x00100000 - 1) || 'x', 'AggregateFunction(max, String)') as x);
