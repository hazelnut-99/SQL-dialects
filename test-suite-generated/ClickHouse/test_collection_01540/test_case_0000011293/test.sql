SELECT arrayMap(x -> round(x), quantileArrayResampleOrDefaultIfMerge(0.10, 1, 2, 42)((*,).1)) FROM t9;
