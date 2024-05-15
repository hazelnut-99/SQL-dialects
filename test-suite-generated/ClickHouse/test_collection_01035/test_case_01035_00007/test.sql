SELECT arrayMap(x -> round(x), quantileResampleMerge(0.10, 1, 2, 42)((*,).1)) FROM t7;
