select mapApply(k, v -> (k, arrayMap(x -> mapApply(k, v -> (k, arrayMap(x -> finalizeAggregation(x), v)), x), v)), x) from test;
