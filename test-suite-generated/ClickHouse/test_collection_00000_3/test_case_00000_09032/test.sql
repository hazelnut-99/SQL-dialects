SELECT toTypeName(sumCount(v)), sumCount(v) FROM (SELECT '1'::UInt128 AS v FROM numbers(100));
