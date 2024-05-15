SELECT arrayMap(x -> round(x), quantileForEachMerge(0.10)((*,).1)) FROM t2;
