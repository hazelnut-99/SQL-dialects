select arrayMap(x -> arrayMap(x -> mapApply(k, v -> (k, finalizeAggregation(v)), x), x), x) from test;
