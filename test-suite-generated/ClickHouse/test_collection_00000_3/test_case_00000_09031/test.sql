SELECT toTypeName(sumCount(v)), sumCount(v) FROM (SELECT '1'::Int256 AS v FROM numbers(100));
