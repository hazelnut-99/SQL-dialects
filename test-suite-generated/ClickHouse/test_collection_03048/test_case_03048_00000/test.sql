SELECT arrayMap(a -> round(a, 2), (quantilesDDMerge(0.001, 0.9)(sketch)))
FROM `02919_ddsketch_quantile`;
