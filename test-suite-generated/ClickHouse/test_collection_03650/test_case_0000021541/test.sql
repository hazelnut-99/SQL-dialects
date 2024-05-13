select mapApply(k, v -> (k, finalizeAggregation(v)), x) from test;
