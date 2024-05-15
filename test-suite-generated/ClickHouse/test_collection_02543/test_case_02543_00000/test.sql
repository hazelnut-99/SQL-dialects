select arrayMap(x -> arrayMap(x -> finalizeAggregation(x), x), x) from test;
