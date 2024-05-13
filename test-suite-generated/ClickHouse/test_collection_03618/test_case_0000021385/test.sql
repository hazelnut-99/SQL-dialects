SELECT arrayMap(x -> x + arrayMap(x -> x + 1, [1])[1], [1,2,3]);
