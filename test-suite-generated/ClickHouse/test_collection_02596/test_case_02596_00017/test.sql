SELECT 'fuzz2', finalizeAggregation(CAST(unhex('04000000' || '30313233' || '01' || 'ffffffffffffffff'), 'AggregateFunction(argMax, String, UInt64)')) as x, length(x);
