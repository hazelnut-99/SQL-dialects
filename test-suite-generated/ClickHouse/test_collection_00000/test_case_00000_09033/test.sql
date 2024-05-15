SELECT toTypeName(sumCount(v)), sumCount(v) FROM (SELECT '1'::UInt256 AS v FROM numbers(100));
